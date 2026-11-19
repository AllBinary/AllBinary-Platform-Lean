-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PickupLayerCircularStaticPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PickupLayerCircularStaticPool" "SINGLETON" (<- JR.new "PickupLayerCircularStaticPool" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PickupLayerCircularStaticPool" "SINGLETON")


def m_getInstanceXYZ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickedUpLayerInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    let mut l_pickupLayer : JV := (<- JR.callInherited this "PickupLayerCircularStaticPool" "getNextInstance_0" #[])
    let _ := (<- JR.call l_pickupLayer "initXYZ_3" #[l_x, l_y, l_z])
    let _ := (<- JR.call l_pickupLayer "init_2" #[l_pickedUpLayerInterfaceFactoryInterface, (<- JR.call l_pickedUpLayerInterfaceFactoryInterface "getAnimationInterface_0" #[])])
    return l_pickupLayer


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryLayerCircularPool" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PickupLayerCircularStaticPool",
    javaName := "org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool",
    super := "AllBinaryLayerCircularPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceXYZ_4", #["PickedUpLayerInterfaceFactoryInterface", "int", "int", "int"], false, m_getInstanceXYZ_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PickupLayerCircularStaticPool


