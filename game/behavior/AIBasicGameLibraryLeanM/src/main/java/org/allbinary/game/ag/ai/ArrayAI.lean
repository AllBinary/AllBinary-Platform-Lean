-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ArrayAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "artificialIntelligenceInterfaceArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "artificialIntelligenceInterfaceArray") l_index) "processAI_1" #[l_allBinaryLayerManager])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_getArtificialIntelligenceInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "artificialIntelligenceInterfaceArray")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_artificialIntelligenceInterface : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "artificialIntelligenceInterfaceArray" l_artificialIntelligenceInterface
    pure this

initialize JR.registerClass {
    name := "ArrayAI",
    javaName := "org.allbinary.game.ag.ai.ArrayAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("artificialIntelligenceInterfaceArray", JV.null)],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("getArtificialIntelligenceInterface_0", #[], false, m_getArtificialIntelligenceInterface_0), 
        ("jinit_3", #["ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ArrayAI


