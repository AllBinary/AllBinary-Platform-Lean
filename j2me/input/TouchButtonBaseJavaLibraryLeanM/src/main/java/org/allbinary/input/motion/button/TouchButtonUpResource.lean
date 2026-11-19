-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonUpResource

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchButtonUpResource" "instance" (<- JR.new "TouchButtonUpResource" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchButtonUpResource" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "TouchButtonResource" this #[(JV.str "/touch_button_up_arrow_64_by_64.png"), (JV.str "/touch_button_up_arrow_hint_64_by_64.png")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonUpResource",
    javaName := "org.allbinary.input.motion.button.TouchButtonUpResource",
    super := "TouchButtonResource",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonUpResource


