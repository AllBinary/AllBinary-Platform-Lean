-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.sequence
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberLayersSequenceAIFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_numberOfEnemiesLeft : JV := (JR.asI (JR.arg jargs 0))
    let mut l_artificialIntelligenceInterface : JV := (JR.arg jargs 1)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 2)
    let mut l_gameInput : JV := (JR.arg jargs 3)
    return (<- JR.new "NumberLayersSequenceAI" #[l_numberOfEnemiesLeft, l_artificialIntelligenceInterface, l_ownerLayerInterface, l_gameInput])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NumberLayersSequenceAIFactory",
    javaName := "org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_4", #["int", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], false, m_getInstance_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberLayersSequenceAIFactory


