-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchScreenType

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "getName_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    pure this

initialize JR.registerClass {
    name := "TouchScreenType",
    javaName := "org.allbinary.input.motion.button.TouchScreenType",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null)],
    statics := #[],
    methods := #[
        ("getName_0", #[], false, m_getName_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchScreenType


