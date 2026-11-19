-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryLayerManager

def jfields (this : JV) : JM JV := do
    JR.setField this "layerManagerEventHandler" (<- JR.callStatic "LayerManagerEventHandler" "getInstance_0" #[])
    JR.setField this "createLayerManagerEvent" (<- JR.new "LayerManagerEvent" #[this, (<- JR.getField (<- JR.getField this "layerManagerEventHandler") "CREATE")])
    JR.setField this "deleteLayerManagerEvent" (<- JR.new "LayerManagerEvent" #[this, (<- JR.getField (<- JR.getField this "layerManagerEventHandler") "DELETE")])
    JR.setField this "basicLayerProcessorArray" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getLayerProcessorArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicLayerProcessorArray")


def m_setLayerProcessorArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerProcessorArray : JV := (JR.arg jargs 0)
    JR.setField this "basicLayerProcessorArray" l_layerProcessorArray
    pure JV.null


def m_log_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "basicLayerProcessorArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_layerProcessorInterface : JV := (<- JR.aget (<- JR.getField this "basicLayerProcessorArray") l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.callInherited this "AllBinaryLayerManager" "contains_1" #[l_layerInterface])) then
        let _ := (<- JR.call this "appendProcessors_1" #[l_layerInterface])
        let _ := (<- JR.callSuper "LayerManager" this "append_1" #[l_layerInterface])
        pure ()
    pure JV.null


def m_appendAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (JR.not (<- JR.callInherited this "AllBinaryLayerManager" "contains_1" #[l_layerInterface])) then
        let _ := (<- JR.call this "appendProcessors_1" #[l_layerInterface])
        let _ := (<- JR.callSuper "LayerManager" this "appendAt_2" #[l_layerInterface, l_index])
        pure ()
    pure JV.null


def m_appendProcessors_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "createLayerManagerEvent") "setLayerInterface_1" #[l_layerInterface])
    let _ := (<- JR.call (<- JR.getField this "layerManagerEventHandler") "fireEvent_1" #[(<- JR.getField this "createLayerManagerEvent")])
    let mut l_layerProcessorInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "basicLayerProcessorArray")))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            l_layerProcessorInterface := (<- JR.aget (<- JR.getField this "basicLayerProcessorArray") l_index)
            if JR.truth (<- JR.call l_layerProcessorInterface "isProcessorLayer_1" #[l_layerInterface]) then
                let _ := (<- JR.call (<- JR.call l_layerProcessorInterface "getLayerManager_0" #[]) "append_1" #[l_layerInterface])
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "deleteLayerManagerEvent") "setLayerInterface_1" #[l_layerInterface])
    let _ := (<- JR.call (<- JR.getField this "layerManagerEventHandler") "fireDeleteEvent_1" #[(<- JR.getField this "deleteLayerManagerEvent")])
    let mut l_layerProcessorInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "basicLayerProcessorArray")))
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            l_layerProcessorInterface := (<- JR.aget (<- JR.getField this "basicLayerProcessorArray") l_index)
            let _ := (<- JR.call (<- JR.call l_layerProcessorInterface "getLayerManager_0" #[]) "remove_1" #[l_layerInterface])
            pure ()
        pure ()
    let _ := (<- JR.callSuper "LayerManager" this "remove_1" #[l_layerInterface])
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerProcessorInterface : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "basicLayerProcessorArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_layerProcessorInterface := (<- JR.aget (<- JR.getField this "basicLayerProcessorArray") l_index)
            let _ := (<- JR.call l_layerProcessorInterface "process_1" #[this])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_cleanup_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerProcessorInterface : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "basicLayerProcessorArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_layerProcessorInterface := (<- JR.aget (<- JR.getField this "basicLayerProcessorArray") l_index)
            let _ := (<- JR.call (<- JR.call l_layerProcessorInterface "getLayerManager_0" #[]) "cleanup_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.callSuper "LayerManager" this "cleanup_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LayerManager" this #[(<- JR.callStatic "LayerManagerNoDebug" "getInstance_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryLayerManager",
    javaName := "org.allbinary.layer.AllBinaryLayerManager",
    super := "LayerManager",
    interfaces := #[],
    isInterface := false,
    fields := #[("layerManagerEventHandler", JV.null), ("createLayerManagerEvent", JV.null), ("deleteLayerManagerEvent", JV.null), ("basicLayerProcessorArray", JV.null)],
    statics := #[],
    methods := #[
        ("getLayerProcessorArray_0", #[], false, m_getLayerProcessorArray_0), 
        ("setLayerProcessorArray_1", #["LayerProcessorArr"], false, m_setLayerProcessorArray_1), 
        ("log_0", #[], false, m_log_0), 
        ("append_1", #["AllBinaryLayer"], false, m_append_1), 
        ("appendAt_2", #["AllBinaryLayer", "int"], false, m_appendAt_2), 
        ("appendProcessors_1", #["AllBinaryLayer"], false, m_appendProcessors_1), 
        ("remove_1", #["AllBinaryLayer"], false, m_remove_1), 
        ("process_0", #[], false, m_process_0), 
        ("cleanup_0", #[], false, m_cleanup_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryLayerManager


