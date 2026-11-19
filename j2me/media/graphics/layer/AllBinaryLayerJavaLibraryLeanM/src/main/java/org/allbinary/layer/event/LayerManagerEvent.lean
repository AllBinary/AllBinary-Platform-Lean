-- Generated Code Do Not Modify
-- package org.allbinary.layer.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerManagerEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "layerInterface" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getLayerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "layerInterface")


def m_setLayerInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    JR.setField this "layerInterface" l_layerInterface
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "LayerManagerEvent: \n")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "LayerInterface: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.call this "getLayerInterface_0" #[]) "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "\nCRUD: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "crud")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_crud : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_layerManager]
    let _ <- jfields this
    JR.setField this "crud" l_crud
    pure this

initialize JR.registerClass {
    name := "LayerManagerEvent",
    javaName := "org.allbinary.layer.event.LayerManagerEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("layerInterface", JV.null), ("crud", JV.null)],
    statics := #[],
    methods := #[
        ("getLayerInterface_0", #[], false, m_getLayerInterface_0), 
        ("setLayerInterface_1", #["AllBinaryLayer"], false, m_setLayerInterface_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["LayerManager", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerManagerEvent


