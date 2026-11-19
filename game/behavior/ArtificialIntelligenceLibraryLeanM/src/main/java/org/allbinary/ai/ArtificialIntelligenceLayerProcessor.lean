-- Generated Code Do Not Modify
-- package org.allbinary.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ArtificialIntelligenceLayerProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAt_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_layerInterface : JV := (JR.arg jargs 1)
    let mut l_index : JV := (JR.asI (JR.arg jargs 2))
    let mut l_artificialIntelligenceCompositeInterface : JV := l_layerInterface
    let _ := (<- JR.call (<- JR.call l_artificialIntelligenceCompositeInterface "getArtificialIntelligenceInterface_0" #[]) "processAI_1" #[l_allBinaryLayerManager])
    pure JV.null


def m_isProcessorLayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call l_layerInterface "implmentsArtificialIntelligenceCompositeInterface_0" #[]) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LayerProcessor" this #[(<- JR.new "ArtificialIntelligenceLayerManager" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ArtificialIntelligenceLayerProcessor",
    javaName := "org.allbinary.ai.ArtificialIntelligenceLayerProcessor",
    super := "LayerProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processAt_3", #["AllBinaryLayerManager", "AllBinaryLayer", "int"], false, m_processAt_3), 
        ("isProcessorLayer_1", #["AllBinaryLayer"], false, m_isProcessorLayer_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ArtificialIntelligenceLayerProcessor


