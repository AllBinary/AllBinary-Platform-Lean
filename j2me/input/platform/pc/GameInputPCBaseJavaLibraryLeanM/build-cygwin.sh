#!/usr/bin/env bash

# Checks the Lean 4 files the Lean converter generated with lean (the Lean 4 compiler of the elan toolchain).
# A converted file imports only the runtime module AllBinaryJava: classes, methods and fields are looked up by name at
# run time, so the files of a project never import each other or the files of the dependencies. The project's files are
# joined into one file (one import line) and elaborated with lean against the runtime oleans. The hand written runtime
# (JRCore and the java.* modules) is compiled to oleans once for each runtime content (cached by its md5 in /tmp).
# This project's sources are written to <output>/src. An error line of the joined file is shown with the converted file
# and line it came from.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Lean sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"

short_tree="$(mktemp -d /tmp/leancheckXXXXXX)"
trap 'rm -rf "$short_tree"' EXIT

# The runtime oleans, compiled once for each runtime content: each module after the runtime modules it imports
runtime_hash="$(cd "$runtime_dir" && find . -type f -name '*.lean' | sort | xargs cat | md5sum | cut -d' ' -f1)"
runtime_cache="/tmp/lean_runtime_cache/$runtime_hash"
if [ ! -f "$runtime_cache/AllBinaryJava.olean" ]; then
    building="$runtime_cache.building.$$"
    rm -rf "$building"
    mkdir -p "$building"
    pending="$(cd "$runtime_dir" && find . -type f -name '*.lean' | sed 's#^\./##' | sort)"
    while [ -n "$pending" ]; do
        progress=""
        remaining=""
        for file in $pending; do
            ready="true"
            for module in $(grep -E '^import ' "$runtime_dir/$file" | awk '{print $2}' | tr -d '\r'); do
                module_file="$(echo "$module" | tr '.' '/').lean"
                if [ -f "$runtime_dir/$module_file" ] && [ ! -f "$building/$(echo "$module" | tr '.' '/').olean" ]; then
                    ready=""
                fi
            done
            if [ -z "$ready" ]; then
                remaining="$remaining $file"
                continue
            fi
            olean="$building/${file%.lean}.olean"
            mkdir -p "$(dirname "$olean")"
            output="$(cd "$runtime_dir" && LEAN_PATH="$(cygpath -m "$building")" "$compiler" -o "$(cygpath -m "$olean")" "$file" 2>&1 | tr -d '\r')"
            if [ ! -f "$olean" ]; then
                echo "$output" | grep -E 'error' | head -20
                echo "Lean runtime build failed: $runtime_dir/$file" >&2
                rm -rf "$building"
                exit 1
            fi
            progress="true"
        done
        if [ -z "$progress" ]; then
            echo "Lean runtime import cycle or missing module:$remaining" >&2
            rm -rf "$building"
            exit 1
        fi
        pending="$(echo "$remaining" | xargs -n1 2>/dev/null)"
    done
    mkdir -p "$(dirname "$runtime_cache")"
    rm -rf "$runtime_cache"
    mv "$building" "$runtime_cache" 2>/dev/null || rm -rf "$building"
fi

own_count="$(find "$source_dir" -type f -name '*.lean' | wc -l)"
echo "Lean files: $own_count"
if [ "$own_count" = "0" ]; then
    echo "Lean checked: $artifact"
    exit 0
fi

# The project's files joined into one file with one import line
project_joined="$short_tree/$(echo "$artifact" | tr -c 'A-Za-z0-9_\n' '_').lean"
perl -e '
    my ($joined, $map, @files) = @ARGV;
    open(my $out, ">", $joined) or die;
    open(my $lines, ">", $map) or die;
    print $out "import AllBinaryJava\n";
    my $line = 1;
    for my $file (@files) {
        open(my $in, "<", $file) or next;
        my $number = 0;
        while (my $text = <$in>) {
            $number++;
            $text =~ s/\r?\n$//;
            if ($text =~ /^import\s/) { next; }
            print $out "$text\n";
            $line++;
            print $lines "$line\t$file\t$number\n";
        }
        close($in);
    }
    close($out);
    close($lines);
' "$project_joined" "$short_tree/project.map" $(find "$source_dir" -type f -name '*.lean' | sort)

output="$(cd "$short_tree" && LEAN_PATH="$(cygpath -m "$runtime_cache")" "$compiler" "${compiler_flags[@]}" "$(cygpath -m "$project_joined")" 2>&1 | tr -d '\r')"
cp "$project_joined" "$short_tree/project.map" "$object_dir/" 2>/dev/null
error_count="$(echo "$output" | grep -c -E ':[0-9]+:[0-9]+: error')"
if [ "$error_count" = "0" ] && ! echo "$output" | grep -q -E 'error: |PANIC|Stack overflow|out of memory'; then
    echo "Lean checked: $artifact"
    exit 0
fi
echo "$output" | grep -E 'error|PANIC|Stack overflow|out of memory' -A2 | head -${LEAN_ERROR_LINES:-60} | perl -e '
    my ($joined, $map) = @ARGV;
    my %where;
    open(my $in, "<", $map) or die;
    while (my $line = <$in>) { chomp $line; my ($joinedLine, $file, $number) = split(/\t/, $line); $where{$joinedLine} = "$file:$number"; }
    my $name = $joined; $name =~ s{.*/}{};
    while (my $line = <STDIN>) {
        if ($line =~ /\Q$name\E:(\d+):(\d+)/) { my $at = $where{$1}; $line = "[$at] $line" if $at; }
        print $line;
    }
' "$project_joined" "$short_tree/project.map"
echo "Lean errors: $error_count"
echo "Lean build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
