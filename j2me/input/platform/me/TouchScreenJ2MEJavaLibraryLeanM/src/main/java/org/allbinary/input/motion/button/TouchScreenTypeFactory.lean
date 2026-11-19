-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchScreenTypeFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchScreenTypeFactory" "instance" (<- JR.new "TouchScreenTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchScreenTypeFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_touchScreenFactory : JV := (<- JR.callStatic "TouchScreenFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_touchScreenFactory "setTouch_1" #[(JV.bool true)])
    pure this

initialize JR.registerClass {
    name := "TouchScreenTypeFactory",
    javaName := "org.allbinary.input.motion.button.TouchScreenTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchScreenTypeFactory


