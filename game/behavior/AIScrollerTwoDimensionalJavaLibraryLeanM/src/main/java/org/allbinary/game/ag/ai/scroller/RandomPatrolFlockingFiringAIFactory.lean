-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RandomPatrolFlockingFiringAIFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let mut l_artificialIntelligenceInterface : JV := (<- JR.newArray "L" 1 #[(JV.int 2)])
    JR.aset l_artificialIntelligenceInterface (JV.int 0) (<- JR.new "RandomPatrolAI" #[l_hashtable, l_ownerLayerInterface, l_gameInput])
    JR.aset l_artificialIntelligenceInterface (JV.int 1) (<- JR.new "TimedFireAI" #[(JV.int 1800), l_ownerLayerInterface, l_gameInput])
    return (<- JR.new "ArrayAI" #[l_artificialIntelligenceInterface, l_ownerLayerInterface, l_gameInput])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RandomPatrolFlockingFiringAIFactory",
    javaName := "org.allbinary.game.ag.ai.scroller.RandomPatrolFlockingFiringAIFactory",
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

end jclass_RandomPatrolFlockingFiringAIFactory


