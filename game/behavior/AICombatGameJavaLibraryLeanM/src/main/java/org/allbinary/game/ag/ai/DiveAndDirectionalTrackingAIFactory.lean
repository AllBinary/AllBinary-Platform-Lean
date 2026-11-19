-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DiveAndDirectionalTrackingAIFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let mut l_visitorCanBeNull : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.getStatic "BasicAI" "AI_VISITOR")])
    if JR.truth (<- JR.eq l_visitorCanBeNull JV.null) then
        l_visitorCanBeNull := (<- JR.callStatic "ThrustAIVisitorFactory" "getInstance_0" #[])
        pure ()
    let mut l_hashtable2 : JV := (<- JR.call (<- JR.new "BasicProbabilityAIDataFactory" #[]) "getInstance_0" #[])
    let _ := (<- JR.call l_hashtable2 "put_2" #[(<- JR.getStatic "BasicAI" "AI_VISITOR"), (<- JR.callStatic "LastKeyAIVisitorFactory" "getInstance_0" #[])])
    let mut l_artificialIntelligenceInterface : JV := (<- JR.call (<- JR.new "BasicRandomAIFactory" #[]) "getInstance_3" #[l_hashtable2, l_ownerLayerInterface, l_gameInput])
    return (<- JR.new "DiveAndDirectionalTrackingAI" #[l_ownerLayerInterface, l_artificialIntelligenceInterface, l_gameInput, l_visitorCanBeNull])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DiveAndDirectionalTrackingAIFactory",
    javaName := "org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory",
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

end jclass_DiveAndDirectionalTrackingAIFactory


