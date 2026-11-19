-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputFeatureFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "REMOVE_DUPLICATE_KEY_PRESSES" (<- JR.new "InputFeature" #[(JV.str "Remove Duplicate Key Presses")])
    JR.setField this "INPUT_MAPPING" (<- JR.new "InputFeature" #[(JV.str "Input Mapping")])
    JR.setField this "MULTI_KEY_PRESS" (<- JR.new "InputFeature" #[(JV.str "Multi Key Press")])
    JR.setField this "SINGLE_KEY_REPEAT_PRESS" (<- JR.new "InputFeature" #[(JV.str "Single Key Repeat Press")])
    JR.setField this "SINGLE_KEY_PRESS" (<- JR.new "InputFeature" #[(JV.str "Single Key Press")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InputFeatureFactory" "instance" (<- JR.new "InputFeatureFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "InputFeatureFactory" "instance")


def m_isSingleKeyProcessing_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.cor (<- JR.call l_features "isFeature_1" #[(<- JR.getField this "SINGLE_KEY_REPEAT_PRESS")]) (do pure (<- JR.call l_features "isFeature_1" #[(<- JR.getField this "SINGLE_KEY_PRESS")]))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InputFeatureFactory",
    javaName := "org.allbinary.game.configuration.feature.InputFeatureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("REMOVE_DUPLICATE_KEY_PRESSES", JV.null), ("INPUT_MAPPING", JV.null), ("MULTI_KEY_PRESS", JV.null), ("SINGLE_KEY_REPEAT_PRESS", JV.null), ("SINGLE_KEY_PRESS", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isSingleKeyProcessing_0", #[], false, m_isSingleKeyProcessing_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputFeatureFactory


