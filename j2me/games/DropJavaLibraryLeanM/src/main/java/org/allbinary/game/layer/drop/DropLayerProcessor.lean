-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.drop
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DropLayerProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DropLayerProcessor" "LAYER_PROCESSOR" (<- JR.new "DropLayerProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DropLayerProcessor" "LAYER_PROCESSOR")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_list : JV := (<- JR.callInherited this "DropLayerProcessor" "getList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_layerInterface : JV := JV.null
    let mut l_dropLayerInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_layerInterface := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            l_dropLayerInterface := l_layerInterface
            l_layerInterface := (<- JR.call l_dropLayerInterface "getDroppedLayer_0" #[])
            let _ := (<- JR.call l_allBinaryLayerManager "append_1" #[l_layerInterface])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_list "clear_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicLayerProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DropLayerProcessor",
    javaName := "org.allbinary.game.layer.drop.DropLayerProcessor",
    super := "BasicLayerProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("LAYER_PROCESSOR", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_1", #["AllBinaryLayerManager"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DropLayerProcessor


