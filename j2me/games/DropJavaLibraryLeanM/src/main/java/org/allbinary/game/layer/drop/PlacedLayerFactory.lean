-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.drop
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlacedLayerFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "basicArrayListUtil" (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlacedLayerFactory" "instance" (<- JR.new "PlacedLayerFactory" #[])
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PlacedLayerFactory" "instance")


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))


def m_getRandomInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "basicArrayListUtil") "getRandom_1" #[(<- JR.getField this "list")])


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_layerInterfaceFactoryInterface])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlacedLayerFactory",
    javaName := "org.allbinary.game.layer.drop.PlacedLayerFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null), ("basicArrayListUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("clear_0", #[], false, m_clear_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("getRandomInstance_0", #[], false, m_getRandomInstance_0), 
        ("add_1", #["AllBinaryLayerFactoryInterface"], false, m_add_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlacedLayerFactory


