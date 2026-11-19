-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAt_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_layerInterface : JV := (JR.arg jargs 1)
    let mut l_index : JV := (JR.asI (JR.arg jargs 2))
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_isProcessorLayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_getLayerManager_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "layerManager")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_layerManager : JV := (<- JR.call this "getLayerManager_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_layerManager "getSize_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call this "processAt_3" #[l_allBinaryLayerManager, (<- JR.call l_layerManager "getLayerAt_1" #[l_index]), l_index])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "layerManager" l_layerManager
    pure this

initialize JR.registerClass {
    name := "LayerProcessor",
    javaName := "org.allbinary.layer.LayerProcessor",
    super := "Object",
    interfaces := #["LayerProcessorInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("layerManager", JV.null)],
    statics := #[],
    methods := #[
        ("processAt_3", #["AllBinaryLayerManager", "AllBinaryLayer", "int"], false, m_processAt_3), 
        ("isProcessorLayer_1", #["AllBinaryLayer"], false, m_isProcessorLayer_1), 
        ("getLayerManager_0", #[], false, m_getLayerManager_0), 
        ("process_1", #["AllBinaryLayerManager"], false, m_process_1), 
        ("jinit_1", #["LayerManager"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerProcessor


