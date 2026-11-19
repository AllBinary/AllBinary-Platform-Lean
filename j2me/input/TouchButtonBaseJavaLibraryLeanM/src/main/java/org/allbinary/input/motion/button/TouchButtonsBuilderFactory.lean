-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonsBuilderFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchButtonsBuilderFactory" "NO_TOUCH_BUTTON_BUILDER_FACTORY" (<- JR.new "TouchButtonsBuilderFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "NoButtonsTouchInputFactory" "getInstance_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonsBuilderFactory",
    javaName := "org.allbinary.input.motion.button.TouchButtonsBuilderFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NO_TOUCH_BUTTON_BUILDER_FACTORY", JV.null)],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonsBuilderFactory


