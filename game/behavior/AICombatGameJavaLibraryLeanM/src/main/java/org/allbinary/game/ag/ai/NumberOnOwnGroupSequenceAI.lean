-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberOnOwnGroupSequenceAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_layerInterface : JV := (<- JR.callInherited this "NumberOnOwnGroupSequenceAI" "getOwnerLayerInterface_0" #[])
    let mut l_index : JV := (JR.asI (<- JR.callInherited this "NumberOnOwnGroupSequenceAI" "getIndex_0" #[]))
    if JR.truth (<- JR.gt (<- JR.alen (<- JR.getField this "numberOnSameTeam")) l_index) then
        let mut l_size : JV := (JR.asI (<- JR.call (<- JR.callStatic "GroupLayerManagerListener" "getInstance_0" #[]) "getGroupSizeFromInterface_1" #[l_layerInterface]))
        if JR.truth (<- JR.gt (<- JR.call (<- JR.aget (<- JR.getField this "numberOnSameTeam") l_index) "intValue_0" #[]) l_size) then
            let _ := (<- JR.callInherited this "NumberOnOwnGroupSequenceAI" "next_0" #[])
            pure ()
        pure ()
    let _ := (<- JR.callSuper "SequenceAI" this "processAI_1" #[l_allBinaryLayerManager])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_numberOnSameTeam : JV := (JR.arg jargs 0)
    let mut l_artificialIntelligenceInterface : JV := (JR.arg jargs 1)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 2)
    let mut l_gameInput : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "SequenceAI" this #[l_artificialIntelligenceInterface, l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "numberOnSameTeam" l_numberOnSameTeam
    pure this

initialize JR.registerClass {
    name := "NumberOnOwnGroupSequenceAI",
    javaName := "org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI",
    super := "SequenceAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("numberOnSameTeam", JV.null)],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_4", #["IntegerArr", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberOnOwnGroupSequenceAI


