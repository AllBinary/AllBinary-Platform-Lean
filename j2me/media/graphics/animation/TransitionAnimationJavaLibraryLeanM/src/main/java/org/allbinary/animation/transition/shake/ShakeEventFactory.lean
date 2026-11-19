-- Generated Code Do Not Modify
-- package org.allbinary.animation.transition.shake
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ShakeEventFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "MICRO" (<- JR.new "ShakeEvent" #[])
    JR.setField this "SMALL" (<- JR.new "ShakeEvent" #[])
    JR.setField this "MEDIUM" (<- JR.new "ShakeEvent" #[])
    JR.setField this "LARGE" (<- JR.new "ShakeEvent" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ShakeEventFactory" "instance" (<- JR.new "ShakeEventFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ShakeEventFactory" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ShakeEventFactory",
    javaName := "org.allbinary.animation.transition.shake.ShakeEventFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("MICRO", JV.null), ("SMALL", JV.null), ("MEDIUM", JV.null), ("LARGE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ShakeEventFactory


