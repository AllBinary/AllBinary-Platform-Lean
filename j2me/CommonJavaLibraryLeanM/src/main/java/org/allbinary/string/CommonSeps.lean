-- Generated Code Do Not Modify
-- package org.allbinary.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommonSeps

def jfields (this : JV) : JM JV := do
    JR.setField this "NEW_LINE" (JV.str "\n")
    JR.setField this "SEMICOLON" (JV.str ";")
    JR.setField this "EQUALS" (JV.str "=")
    JR.setField this "SPACE" (JV.str " ")
    JR.setField this "COMMA" (JV.str ",")
    JR.setField this "COLON" (JV.str ":")
    JR.setField this "PERIOD" (JV.str ".")
    JR.setField this "UNDERSCORE" (JV.str "_")
    JR.setField this "COLON_SEP" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "COLON")]) "append_1" #[(<- JR.getField this "SPACE")]) "toString_0" #[])
    JR.setField this "COMMA_SEP" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "COMMA")]) "append_1" #[(<- JR.getField this "SPACE")]) "toString_0" #[])
    JR.setField this "PARENTHESIS_OPEN" (JV.str "(")
    JR.setField this "PARENTHESIS_CLOSE" (JV.str ")")
    JR.setField this "BRACE_OPEN" (JV.str "{")
    JR.setField this "BRACE_CLOSE" (JV.str "}")
    JR.setField this "BRACKET_OPEN" (JV.str "[")
    JR.setField this "BRACKET_CLOSE" (JV.str "]")
    JR.setField this "DASH" (JV.str "-")
    JR.setField this "PERCENT" (JV.str "%")
    JR.setField this "AMPERSAND" (JV.str "&")
    JR.setField this "FORWARD_SLASH" (JV.str "/")
    JR.setField this "BACK_SLASH" (JV.str "\\")
    JR.setField this "QUESTION" (JV.str "?")
    JR.setField this "QUOTE" (JV.str "\"")
    JR.setField this "QUOTE_END" (JV.str "\",")
    JR.setField this "COMMENT" (JV.str "//")
    JR.setField this "INDENT" (JV.str "    ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CommonSeps" "instance" (<- JR.new "CommonSeps" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CommonSeps" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CommonSeps",
    javaName := "org.allbinary.string.CommonSeps",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NEW_LINE", JV.null), ("SEMICOLON", JV.null), ("EQUALS", JV.null), ("SPACE", JV.null), ("COMMA", JV.null), ("COLON", JV.null), ("PERIOD", JV.null), ("UNDERSCORE", JV.null), ("COLON_SEP", JV.null), ("COMMA_SEP", JV.null), ("PARENTHESIS_OPEN", JV.null), ("PARENTHESIS_CLOSE", JV.null), ("BRACE_OPEN", JV.null), ("BRACE_CLOSE", JV.null), ("BRACKET_OPEN", JV.null), ("BRACKET_CLOSE", JV.null), ("DASH", JV.null), ("PERCENT", JV.null), ("AMPERSAND", JV.null), ("FORWARD_SLASH", JV.null), ("BACK_SLASH", JV.null), ("QUESTION", JV.null), ("QUOTE", JV.null), ("QUOTE_END", JV.null), ("COMMENT", JV.null), ("INDENT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommonSeps


