-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PickupLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "pickedUpLayerInterfaceFactoryInterface" (<- JR.getStatic "CountedPickedUpLayerInterfaceFactory" "NULL_COUNTED_PICKUP_LAYER_FACTORY")
    JR.setField this "animationInterface" (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickedUpLayerInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_animationInterface : JV := (JR.arg jargs 1)
    JR.setField this "pickedUpLayerInterfaceFactoryInterface" l_pickedUpLayerInterfaceFactoryInterface
    JR.setField this "animationInterface" l_animationInterface
    let _ := (<- JR.call this "setDestroyed_1" #[(JV.bool false)])
    pure JV.null


def m_initXYZ_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callInherited this "PickupLayer" "setPosition_3" #[l_x, l_y, l_z])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_viewPosition : JV := (<- JR.callInherited this "PickupLayer" "getViewPosition_0" #[])
    let mut l_viewX : JV := (JR.asI (<- JR.call l_viewPosition "getX_0" #[]))
    let mut l_viewY : JV := (JR.asI (<- JR.call l_viewPosition "getY_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, l_viewX, l_viewY])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_viewPosition : JV := (<- JR.callInherited this "PickupLayer" "getViewPosition_0" #[])
    let mut l_viewX : JV := (JR.asI (<- JR.call l_viewPosition "getX_0" #[]))
    let mut l_viewY : JV := (JR.asI (<- JR.call l_viewPosition "getY_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, l_viewX, l_viewY, (JV.int 3)])
    pure JV.null


def m_getPickedUpLayerInterfaceFactoryInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "pickedUpLayerInterfaceFactoryInterface")


def m_setPickedUp_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setDestroyed_1" #[(JV.bool true)])
    pure JV.null


def m_isDestroyed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "destroyed")


def m_setDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyed : JV := (JR.arg jargs 0)
    JR.setField this "destroyed" l_destroyed
    if JR.truth (<- JR.call this "isDestroyed_0" #[]) then
        let _ := (<- JR.call (<- JR.callStatic "DestroyedLayerProcessor" "getInstance_0" #[]) "add_1" #[this])
        pure ()
    pure JV.null


def m_damage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_getDamage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (JV.int 0))


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_openGLSurfaceChangedInterface : JV := (<- JR.getField this "animationInterface")
    let _ := (<- JR.call l_openGLSurfaceChangedInterface "set_1" #[l_gl])
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_remoteInfo : JV := (JR.arg jargs 1)
    let mut l_total : JV := (JR.asI (JR.arg jargs 2))
    let mut l_pickedUpLayerInterfaceFactoryInterface : JV := (JR.arg jargs 3)
    let mut l_animationInterface : JV := (JR.arg jargs 4)
    let mut l_rectangle : JV := (JR.arg jargs 5)
    let mut l_viewPosition : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "MultiPlayerGameLayer" this #[l_remoteInfo, (<- JR.getField (<- JR.callStatic "BasicGroupFactory" "getInstance_0" #[]) "NONE_ARRAY"), l_name, l_rectangle, l_viewPosition]
    let _ <- jfields this
    let _ := (<- JR.callInherited this "PickupLayer" "setCollidableInferface_1" #[(<- JR.call (<- JR.callStatic "CollidableAlwaysPickupNeverCollideBehaviorFactory" "getInstance_0" #[]) "createBehavior_0" #[])])
    let _ := (<- JR.callInherited this "PickupLayer" "setLayerWidth_1" #[(JV.int 10)])
    let _ := (<- JR.callInherited this "PickupLayer" "setLayerHeight_1" #[(JV.int 10)])
    let _ := (<- JR.call this "init_2" #[l_pickedUpLayerInterfaceFactoryInterface, l_animationInterface])
    pure this

initialize JR.registerClass {
    name := "PickupLayer",
    javaName := "org.allbinary.game.layer.pickup.PickupLayer",
    super := "MultiPlayerGameLayer",
    interfaces := #["PickedUpLayerInterface", "PickupableInterface"],
    isInterface := false,
    fields := #[("pickedUpLayerInterfaceFactoryInterface", JV.null), ("destroyed", (JV.bool false)), ("animationInterface", JV.null)],
    statics := #[],
    methods := #[
        ("init_2", #["PickedUpLayerInterfaceFactoryInterface", "Animation"], false, m_init_2), 
        ("initXYZ_3", #["int", "int", "int"], false, m_initXYZ_3), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getPickedUpLayerInterfaceFactoryInterface_0", #[], false, m_getPickedUpLayerInterfaceFactoryInterface_0), 
        ("setPickedUp_0", #[], false, m_setPickedUp_0), 
        ("isDestroyed_0", #[], false, m_isDestroyed_0), 
        ("setDestroyed_1", #["boolean"], false, m_setDestroyed_1), 
        ("damage_2", #["int", "int"], false, m_damage_2), 
        ("getDamage_1", #["int"], false, m_getDamage_1), 
        ("set_1", #["GL"], false, m_set_1), 
        ("jinit_7", #["String", "RemoteInfo", "int", "PickedUpLayerInterfaceFactoryInterface", "Animation", "Rectangle", "ViewPositionBase"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PickupLayer


