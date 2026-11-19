-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoPlayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoPlayer" "NO_PLAYER" (<- JR.new "NoPlayer" #[])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getContentType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")


def m_getControl_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_controlType : JV := (JR.arg jargs 0)
    return (<- JR.new "NullControl" #[])


def m_getControls_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.newArray "L" 1 #[(JV.int 0)])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicPlayer" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoPlayer",
    javaName := "org.allbinary.media.audio.NoPlayer",
    super := "BasicPlayer",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NO_PLAYER", JV.null)],
    methods := #[
        ("close_0", #[], false, m_close_0), 
        ("getContentType_0", #[], false, m_getContentType_0), 
        ("getControl_1", #["String"], false, m_getControl_1), 
        ("getControls_0", #[], false, m_getControls_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoPlayer


