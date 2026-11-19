-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MainFeatureFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "FULL_SCREEN" (<- JR.new "Feature" #[(JV.str "Full Screen")])
    JR.setField this "TITLE_BAR" (<- JR.new "Feature" #[(JV.str "Title Bar")])
    JR.setField this "STATIC" (<- JR.new "Feature" #[(JV.str "Static Dependent Feature")])
    JR.setField this "LOAD_ONDEMAND" (<- JR.new "Feature" #[(JV.str "Load OnDemand")])
    JR.setField this "LOAD_ALL" (<- JR.new "Feature" #[(JV.str "Load All")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MainFeatureFactory" "instance" (<- JR.new "MainFeatureFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MainFeatureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MainFeatureFactory",
    javaName := "org.allbinary.game.configuration.feature.MainFeatureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("FULL_SCREEN", JV.null), ("TITLE_BAR", JV.null), ("STATIC", JV.null), ("LOAD_ONDEMAND", JV.null), ("LOAD_ALL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MainFeatureFactory


