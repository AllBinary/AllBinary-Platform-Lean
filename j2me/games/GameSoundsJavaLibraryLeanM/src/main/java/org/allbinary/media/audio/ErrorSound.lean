-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ErrorSound

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ErrorSound" "soundInterface" (<- JR.new "ErrorSound" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ErrorSound" "soundInterface")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CompositeSound" this #[(JV.str "resource:/wav/error.wav")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ErrorSound",
    javaName := "org.allbinary.media.audio.ErrorSound",
    super := "CompositeSound",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("soundInterface", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ErrorSound


