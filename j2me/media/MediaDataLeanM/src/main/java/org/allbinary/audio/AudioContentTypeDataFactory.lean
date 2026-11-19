-- Generated Code Do Not Modify
-- package org.allbinary.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AudioContentTypeDataFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "MIME_AUDIO_TONE" (<- JR.new "AudioContentTypeData" #[(JV.str "audio/x-tone-seq")])
    JR.setField this "MIME_AUDIO_AMR" (<- JR.new "AudioContentTypeData" #[(JV.str "audio/amr")])
    JR.setField this "MIME_AUDIO_AMR_WB" (<- JR.new "AudioContentTypeData" #[(JV.str "audio/amr-wb")])
    JR.setField this "MIME_AUDIO_WAV" (<- JR.new "AudioContentTypeData" #[(JV.str "audio/x-wav")])
    JR.setField this "MIME_AUDIO_MIDI" (<- JR.new "AudioContentTypeData" #[(JV.str "audio/midi")])
    JR.setField this "MIME_AUDIO_SP_MIDI" (<- JR.new "AudioContentTypeData" #[(JV.str "audio/sp-midi")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AudioContentTypeDataFactory" "instance" (<- JR.new "AudioContentTypeDataFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AudioContentTypeDataFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AudioContentTypeDataFactory",
    javaName := "org.allbinary.audio.AudioContentTypeDataFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("MIME_AUDIO_TONE", JV.null), ("MIME_AUDIO_AMR", JV.null), ("MIME_AUDIO_AMR_WB", JV.null), ("MIME_AUDIO_WAV", JV.null), ("MIME_AUDIO_MIDI", JV.null), ("MIME_AUDIO_SP_MIDI", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AudioContentTypeDataFactory


