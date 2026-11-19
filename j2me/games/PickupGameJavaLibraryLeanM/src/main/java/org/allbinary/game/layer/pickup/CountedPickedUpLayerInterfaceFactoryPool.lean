-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CountedPickedUpLayerInterfaceFactoryPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CountedPickedUpLayerInterfaceFactoryPool" "SINGLETON" (<- JR.new "CountedPickedUpLayerInterfaceFactoryPool" #[])
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CountedPickedUpLayerInterfaceFactoryPool" "SINGLETON")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setStatic "CountedPickedUpLayerInterfaceFactoryPool" "SINGLETON" (<- JR.new "CountedPickedUpLayerInterfaceFactoryPool" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure this

initialize JR.registerClass {
    name := "CountedPickedUpLayerInterfaceFactoryPool",
    javaName := "org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getList_0", #[], false, m_getList_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], true, m_init_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CountedPickedUpLayerInterfaceFactoryPool


