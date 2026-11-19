-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PickedUpLayerInterfaceFactoryBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PickedUpLayerInterfaceFactoryBase" "NULL_PICKED_UP_LAYER_FACTORY_BASE" (<- JR.new "PickedUpLayerInterfaceFactoryBase" #[])
    pure JV.null


def m_getIconLayer_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_getAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_getPickedUpLayerType_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PickedUpLayerInterfaceFactoryBase",
    javaName := "org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase",
    super := "Object",
    interfaces := #["PickedUpLayerInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_PICKED_UP_LAYER_FACTORY_BASE", JV.null)],
    methods := #[
        ("getIconLayer_0", #[], false, m_getIconLayer_0), 
        ("getAnimationInterface_0", #[], false, m_getAnimationInterface_0), 
        ("getPickedUpLayerType_0", #[], false, m_getPickedUpLayerType_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PickedUpLayerInterfaceFactoryBase


