-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchFeatureFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "TOUCH_ENABLED" (<- JR.new "TouchFeature" #[(JV.str "Touch Enabled")])
    JR.setField this "SHOW_SCREEN_BUTTONS" (<- JR.new "TouchFeature" #[(JV.str "Show")])
    JR.setField this "AUTO_HIDE_SHOW_SCREEN_BUTTONS" (<- JR.new "TouchFeature" #[(JV.str "Auto Hide (One Level)")])
    JR.setField this "HIDE_SCREEN_BUTTONS" (<- JR.new "TouchFeature" #[(JV.str "Hide")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchFeatureFactory" "instance" (<- JR.new "TouchFeatureFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchFeatureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchFeatureFactory",
    javaName := "org.allbinary.game.configuration.feature.TouchFeatureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("TOUCH_ENABLED", JV.null), ("SHOW_SCREEN_BUTTONS", JV.null), ("AUTO_HIDE_SHOW_SCREEN_BUTTONS", JV.null), ("HIDE_SCREEN_BUTTONS", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchFeatureFactory


