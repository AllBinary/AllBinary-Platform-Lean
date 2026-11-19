-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerPlacer

def jfields (this : JV) : JM JV := do
    JR.setField this "enumerationUtil" (<- JR.callStatic "EnumerationUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_layerPlacementInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_layerPlacementInterface := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call this "process_1" #[l_layerPlacementInterface])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerPlacementInterface : JV := (JR.arg jargs 0)
    let mut l_relativePoint : JV := (<- JR.call this "getPoint_1" #[l_layerPlacementInterface])
    let mut l_layerInterfaceFactory : JV := (<- JR.callStatic "LayerInterfaceFactory" "getInstance_0" #[])
    let mut l_hashtable : JV := (<- JR.call l_layerPlacementInterface "getInstance_0" #[])
    let mut l_enumeration : JV := (<- JR.call l_hashtable "keys_0" #[])
    let mut l_point : JV := JV.null
    let mut l_layerHashtable : JV := JV.null
    let mut l_x : JV := (JR.asI (JV.int 0))
    let mut l_y : JV := (JR.asI (JV.int 0))
    let mut l_z : JV := (JR.asI (JV.int 0))
    let mut l_layerInterface : JV := JV.null
    repeat
        if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
        l_point := (<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])
        l_layerHashtable := (<- JR.call l_hashtable "get_1" #[l_point])
        l_x := (JR.asI (<- JR.add (<- JR.call l_point "getX_0" #[]) (<- JR.call l_relativePoint "getX_0" #[])))
        l_y := (JR.asI (<- JR.add (<- JR.call l_point "getY_0" #[]) (<- JR.call l_relativePoint "getY_0" #[])))
        l_z := (JR.asI (<- JR.add (<- JR.call l_point "getZ_0" #[]) (<- JR.call l_relativePoint "getZ_0" #[])))
        l_layerInterface := (<- JR.call l_layerInterfaceFactory "getNexInstance_4" #[l_layerHashtable, l_x, l_y, l_z])
        let _ := (<- JR.call (<- JR.getField this "layerInterfaceVisitor") "visit_1" #[l_layerInterface])
        pure ()
    pure JV.null


def m_getPoint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerPlacementInterface : JV := (JR.arg jargs 0)
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_layerPlacementType : JV := (<- JR.call l_layerPlacementInterface "getLayerType_0" #[])
    if JR.truth (<- JR.eq l_layerPlacementType (<- JR.getField (<- JR.callStatic "LayerPlacementTypeFactory" "getInstance_0" #[]) "MAP")) then
        let mut l_width : JV := (JR.asI (<- JR.call l_layerPlacementInterface "getWidth_0" #[]))
        let mut l_height : JV := (JR.asI (<- JR.call l_layerPlacementInterface "getHeight_0" #[]))
        let mut l_x : JV := (JR.asI ((<- JR.div ((<- JR.sub (<- JR.call (<- JR.getField this "dimension") "getX_0" #[]) l_width)) (JV.int 2))))
        let mut l_y : JV := (JR.asI ((<- JR.div ((<- JR.sub (<- JR.call (<- JR.getField this "dimension") "getY_0" #[]) l_height)) (JV.int 2))))
        return (<- JR.call l_pointFactory "createXY_2" #[l_x, l_y])
    else
        if JR.truth (<- JR.eq l_layerPlacementType (<- JR.getField (<- JR.callStatic "LayerPlacementTypeFactory" "getInstance_0" #[]) "UP")) then
            let mut l_width : JV := (JR.asI (<- JR.call l_layerPlacementInterface "getWidth_0" #[]))
            let mut l_height : JV := (JR.asI (<- JR.call l_layerPlacementInterface "getHeight_0" #[]))
            let mut l_x : JV := (JR.asI ((<- JR.div ((<- JR.sub (<- JR.call (<- JR.getField this "dimension") "getX_0" #[]) l_width)) (JV.int 2))))
            let mut l_y : JV := (JR.asI (JR.neg l_height))
            return (<- JR.call l_pointFactory "createXY_2" #[l_x, l_y])
        else
            throw (<- JR.new "Exception" #[(JV.str "PlacementType Not Recognized")])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterfaceVisitor : JV := (JR.arg jargs 0)
    let mut l_dimension : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "layerInterfaceVisitor" l_layerInterfaceVisitor
    JR.setField this "dimension" l_dimension
    pure this

initialize JR.registerClass {
    name := "LayerPlacer",
    javaName := "org.allbinary.game.layer.LayerPlacer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("enumerationUtil", JV.null), ("layerInterfaceVisitor", JV.null), ("dimension", JV.null)],
    statics := #[],
    methods := #[
        ("processList_1", #["BasicArrayList"], false, m_processList_1), 
        ("process_1", #["LayerPlacementInterface"], false, m_process_1), 
        ("getPoint_1", #["LayerPlacementInterface"], false, m_getPoint_1), 
        ("jinit_2", #["LayerInterfaceVisitor", "GPoint"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerPlacer


