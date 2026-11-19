-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonStartResource

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchButtonStartResource" "instance" (<- JR.new "TouchButtonStartResource" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchButtonStartResource" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "TouchButtonResource" this #[(JV.str "/touch_button_start_64_by_64.png"), (JV.str "/touch_button_start_hint_64_by_64.png")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonStartResource",
    javaName := "org.allbinary.input.motion.button.TouchButtonStartResource",
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

end jclass_TouchButtonStartResource


