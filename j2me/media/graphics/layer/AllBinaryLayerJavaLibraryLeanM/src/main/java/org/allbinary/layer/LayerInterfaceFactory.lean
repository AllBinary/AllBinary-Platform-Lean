-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerInterfaceFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "list" (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
    JR.setField this "HASHTABLE_LABEL" (JV.str "Hashtable: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LayerInterfaceFactory" "SINGLETON" (<- JR.new "LayerInterfaceFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LayerInterfaceFactory" "SINGLETON")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null


def m_getNexInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "HASHTABLE_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_hashtable])]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "GET_INSTANCE")])
    let mut l_typeInteger : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.getStatic "Layer" "ID")])
    let mut l_layerInterfaceFactoryInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") (<- JR.sub (<- JR.call l_typeInteger "intValue_0" #[]) (JV.int 1)))
    return (<- JR.call l_layerInterfaceFactoryInterface "getNextInstance_4" #[l_hashtable, l_x, l_y, l_z])


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_layerInterfaceFactoryInterface])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LayerInterfaceFactory",
    javaName := "org.allbinary.layer.LayerInterfaceFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("list", JV.null), ("HASHTABLE_LABEL", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("getNexInstance_4", #["ABHashtable", "int", "int", "int"], false, m_getNexInstance_4), 
        ("add_1", #["LayerInterfaceFactoryInterface"], false, m_add_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerInterfaceFactory


