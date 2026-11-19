-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseSoundsFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getSoundInterfaceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.newArray "L" 1 #[(JV.int 0)])


def m_setInitialized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initialized : JV := (JR.arg jargs 0)
    JR.setField this "initialized" l_initialized
    pure JV.null


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initialized")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseSoundsFactory",
    javaName := "org.allbinary.media.audio.BaseSoundsFactory",
    super := "Object",
    interfaces := #["SoundsFactoryInterface"],
    isInterface := false,
    fields := #[("initialized", (JV.bool false))],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("getSoundInterfaceArray_0", #[], false, m_getSoundInterfaceArray_0), 
        ("setInitialized_1", #["boolean"], false, m_setInitialized_1), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseSoundsFactory


