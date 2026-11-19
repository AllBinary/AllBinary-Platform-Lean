-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SoundStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "STOP_ALL" (JV.str "stopAll")
    JR.setField this "CLOSE_ALL" (JV.str "closeAll")
    JR.setField this "SOUND" (JV.str " Sound: ")
    JR.setField this "INIT_SOUND" (JV.str "Initializing Sound: ")
    JR.setField this "STOPPING_SOUND" (JV.str "Stopping Sound: ")
    JR.setField this "CLOSING_SOUND" (JV.str "Closing Sound: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SoundStrings" "instance" (<- JR.new "SoundStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SoundStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SoundStrings",
    javaName := "org.allbinary.media.audio.SoundStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("STOP_ALL", JV.null), ("CLOSE_ALL", JV.null), ("SOUND", JV.null), ("INIT_SOUND", JV.null), ("STOPPING_SOUND", JV.null), ("CLOSING_SOUND", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SoundStrings


