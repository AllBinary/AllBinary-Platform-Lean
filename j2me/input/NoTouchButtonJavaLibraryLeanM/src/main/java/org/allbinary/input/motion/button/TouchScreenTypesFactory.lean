-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchScreenTypesFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "FINGER" (<- JR.new "TouchScreenType" #[(JV.str "Finger")])
    JR.setField this "NOTOUCH" (<- JR.new "TouchScreenType" #[(JV.str "No Touch")])
    JR.setField this "STYLUS" (<- JR.new "TouchScreenType" #[(JV.str "Stylus")])
    JR.setField this "UNDEFINED" (<- JR.new "TouchScreenType" #[(JV.str "Undefined")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchScreenTypesFactory" "instance" (<- JR.new "TouchScreenTypesFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchScreenTypesFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchScreenTypesFactory",
    javaName := "org.allbinary.input.motion.button.TouchScreenTypesFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("FINGER", JV.null), ("NOTOUCH", JV.null), ("STYLUS", JV.null), ("UNDEFINED", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchScreenTypesFactory


