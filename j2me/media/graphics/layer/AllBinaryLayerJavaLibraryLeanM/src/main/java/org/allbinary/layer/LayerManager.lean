-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerManager

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "systemWrapper" (<- JR.callStatic "ABSystemWrapper" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "anyType" (<- JR.new "SynchObject" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_contains_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "list") "contains_1" #[l_layerInterface])


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_had : JV := (<- JR.call (<- JR.getField this "list") "remove_1" #[l_layerInterface])
    if JR.truth l_had then
        let mut l_nextLayerInterface : JV := JV.null
        let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_nextLayerInterface := (<- JR.call (<- JR.getField this "list") "get_1" #[l_index])
                if JR.truth (<- JR.gt (<- JR.call l_layerInterface "getZP_0" #[]) (<- JR.call l_nextLayerInterface "getZP_0" #[])) then
                    let _ := (<- JR.call (<- JR.getField this "list") "addAt_2" #[l_index, l_layerInterface])
                    return JV.null
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_layerInterface])
        pure ()
    pure JV.null


def m_insert_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_nextLayerInterface : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_nextLayerInterface := (<- JR.call (<- JR.getField this "list") "get_1" #[l_index])
            if JR.truth (<- JR.gt (<- JR.call l_layerInterface "getZP_0" #[]) (<- JR.call l_nextLayerInterface "getZP_0" #[])) then
                let _ := (<- JR.call this "appendAt_2" #[l_layerInterface, l_index])
                return JV.null
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call this "append_1" #[l_layerInterface])
    pure JV.null


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "layerManagerLogging") "append_1" #[l_layerInterface])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_layerInterface])
    pure JV.null


def m_appendAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "layerManagerLogging") "appendAt_2" #[l_layerInterface, l_index])
    let _ := (<- JR.call (<- JR.getField this "list") "addAt_2" #[l_index, l_layerInterface])
    pure JV.null


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    if true then
        let _ := (<- JR.call (<- JR.getField this "layerManagerLogging") "remove_1" #[l_layerInterface])
        let mut l_result : JV := (<- JR.call (<- JR.getField this "list") "remove_1" #[l_layerInterface])
        let _ := (<- JR.call (<- JR.getField this "layerManagerLogging") "removeResult_3" #[this, l_layerInterface, l_result])
        pure ()
    pure JV.null


def m_getLayerAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))


def m_cleanup_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
        let _ := (<- JR.call (<- JR.getField this "layerManagerLogging") "clear_0" #[])
        let _ := (<- JR.call (<- JR.getField this "tsUtil") "gc_0" #[])
        let _ := (<- JR.call (<- JR.getField this "tsUtil") "gc_0" #[])
        pure ()
    pure JV.null


def m_paint_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_g : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    if true then
        let mut l_comp : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
            repeat
                let jtemp1 : JV := (JR.dec l_index)
                l_index := jtemp1
                
                if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
                l_comp := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
                if JR.truth (<- JR.cand (<- JR.ne l_comp JV.null) (do pure (<- JR.call l_comp "isVisible_0" #[]))) then
                    let _ := (<- JR.call l_comp "paint_1" #[l_g])
                    pure ()
                pure ()
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManagerLogging : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR")])
    JR.setField this "layerManagerLogging" l_layerManagerLogging
    pure this

initialize JR.registerClass {
    name := "LayerManager",
    javaName := "org.allbinary.layer.LayerManager",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("systemWrapper", JV.null), ("tsUtil", JV.null), ("layerManagerLogging", JV.null), ("list", JV.null), ("anyType", JV.null)],
    statics := #[],
    methods := #[
        ("contains_1", #["AllBinaryLayer"], false, m_contains_1), 
        ("update_1", #["AllBinaryLayer"], false, m_update_1), 
        ("insert_1", #["AllBinaryLayer"], false, m_insert_1), 
        ("append_1", #["AllBinaryLayer"], false, m_append_1), 
        ("appendAt_2", #["AllBinaryLayer", "int"], false, m_appendAt_2), 
        ("remove_1", #["AllBinaryLayer"], false, m_remove_1), 
        ("getLayerAt_1", #["int"], false, m_getLayerAt_1), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("cleanup_0", #[], false, m_cleanup_0), 
        ("paint_3", #["Graphics", "int", "int"], false, m_paint_3), 
        ("jinit_1", #["LayerManagerLoggingBase"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerManager


