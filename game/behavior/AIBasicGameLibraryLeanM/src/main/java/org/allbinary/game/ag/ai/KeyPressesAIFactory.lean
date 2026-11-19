-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeyPressesAIFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let mut l_isSingleKeyProcessing : JV := (<- JR.call (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "isSingleKeyProcessing_0" #[])
    if JR.truth l_isSingleKeyProcessing then
        return (<- JR.new "KeyPressesAI" #[l_hashtable, l_ownerLayerInterface, l_gameInput])
    else
        return (<- JR.new "MultiKeyPressesAI" #[l_hashtable, l_ownerLayerInterface, l_gameInput])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "KeyPressesAIFactory",
    javaName := "org.allbinary.game.ag.ai.KeyPressesAIFactory",
    super := "Object",
    interfaces := #["ArtificialIntelligenceInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, m_getInstance_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeyPressesAIFactory


