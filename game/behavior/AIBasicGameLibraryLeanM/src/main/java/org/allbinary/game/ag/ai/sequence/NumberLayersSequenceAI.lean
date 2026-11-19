-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.sequence
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberLayersSequenceAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.callInherited this "NumberLayersSequenceAI" "getIndex_0" #[]) (JV.int 0)) then
        if JR.truth (<- JR.lt (<- JR.call l_allBinaryLayerManager "getSize_0" #[]) (<- JR.getField this "numberOfLayersLeft")) then
            let _ := (<- JR.callInherited this "NumberLayersSequenceAI" "setIndex_1" #[(JV.int 1)])
            pure ()
        pure ()
    let _ := (<- JR.callSuper "SequenceAI" this "processAI_1" #[l_allBinaryLayerManager])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_numberOfEnemiesLeft : JV := (JR.asI (JR.arg jargs 0))
    let mut l_artificialIntelligenceInterface : JV := (JR.arg jargs 1)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 2)
    let mut l_gameInput : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "SequenceAI" this #[l_artificialIntelligenceInterface, l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "numberOfLayersLeft" (JR.asI l_numberOfEnemiesLeft)
    pure this

initialize JR.registerClass {
    name := "NumberLayersSequenceAI",
    javaName := "org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI",
    super := "SequenceAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("numberOfLayersLeft", (JV.int 0))],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_4", #["int", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberLayersSequenceAI


