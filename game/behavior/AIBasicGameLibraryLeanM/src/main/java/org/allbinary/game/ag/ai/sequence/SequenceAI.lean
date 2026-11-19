-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.sequence
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SequenceAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.aget (<- JR.callInherited this "SequenceAI" "getArtificialIntelligenceInterface_0" #[]) (<- JR.getField this "index")) "processAI_1" #[l_allBinaryLayerManager])
    pure JV.null


def m_next_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "index" (JR.inc (<- JR.getField this "index"))
    let mut l_artificialIntelligenceInterface : JV := (<- JR.call this "getSelectedArtificialIntelligenceInterface_0" #[])
    if JR.truth (<- JR.eq (<- JR.call l_artificialIntelligenceInterface "getId_0" #[]) (<- JR.getStatic "ArtificialIntelligence" "AI_ID")) then
        let mut l_artificialIntelligenceTransitionInterface : JV := l_artificialIntelligenceInterface
        let _ := (<- JR.call l_artificialIntelligenceTransitionInterface "transition_0" #[])
        pure ()
    pure JV.null


def m_getIndex_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "index"))


def m_setIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "index" (JR.asI l_index)
    pure JV.null


def m_getSelectedArtificialIntelligenceInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.aget (<- JR.callInherited this "SequenceAI" "getArtificialIntelligenceInterface_0" #[]) (<- JR.getField this "index"))


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SequenceAI" "SEQUENCE_AI")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callSuper "ArrayAI" this "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Selected AI: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.call this "getSelectedArtificialIntelligenceInterface_0" #[])])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_artificialIntelligenceInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "ArrayAI" this #[l_artificialIntelligenceInterfaceArray, l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SequenceAI",
    javaName := "org.allbinary.game.ag.ai.sequence.SequenceAI",
    super := "ArrayAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("index", (JV.int 0))],
    statics := #[("SEQUENCE_AI", (JV.str "Sequence AI"))],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("next_0", #[], false, m_next_0), 
        ("getIndex_0", #[], false, m_getIndex_0), 
        ("setIndex_1", #["int"], false, m_setIndex_1), 
        ("getSelectedArtificialIntelligenceInterface_0", #[], false, m_getSelectedArtificialIntelligenceInterface_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_3", #["ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SequenceAI


