-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PickedUpLayerInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getIconLayer_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "iconLayer")


def m_getAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterface")


def m_getPickedUpLayerType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "pickedUpLayerType")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickeUpLayerType : JV := (JR.arg jargs 0)
    let mut l_iconLayer : JV := (JR.arg jargs 1)
    let mut l_animationInterface : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "PickedUpLayerInterfaceFactoryBase" this #[]
    let _ <- jfields this
    JR.setField this "pickedUpLayerType" l_pickeUpLayerType
    JR.setField this "animationInterface" l_animationInterface
    JR.setField this "iconLayer" l_iconLayer
    pure this

initialize JR.registerClass {
    name := "PickedUpLayerInterfaceFactory",
    javaName := "org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory",
    super := "PickedUpLayerInterfaceFactoryBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("pickedUpLayerType", JV.null), ("iconLayer", JV.null), ("animationInterface", JV.null)],
    statics := #[],
    methods := #[
        ("getIconLayer_0", #[], false, m_getIconLayer_0), 
        ("getAnimationInterface_0", #[], false, m_getAnimationInterface_0), 
        ("getPickedUpLayerType_0", #[], false, m_getPickedUpLayerType_0), 
        ("jinit_3", #["PickedUpLayerType", "IconLayer", "Animation"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PickedUpLayerInterfaceFactory


