-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimpleWeaponLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createDestroyed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "getProcedural_1" #[(<- JR.getField (<- JR.callStatic "ExplosionResources" "getInstance_0" #[]) "THIRD_EXPLOSION_RESOURCE")]) "getInstanceAnimation_1" #[(<- JR.call (<- JR.callStatic "NullIndexedAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])])


def jinit_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_remoteInfo : JV := (JR.arg jargs 1)
    let mut l_multiPlayerType : JV := (JR.asI (JR.arg jargs 2))
    let mut l_movement : JV := (JR.arg jargs 3)
    let mut l_animationInterface : JV := (JR.arg jargs 4)
    let mut l_destroyedAnimationInterface : JV := (JR.arg jargs 5)
    let mut l_rectangle : JV := (JR.arg jargs 6)
    let mut l_viewPosition : JV := (JR.arg jargs 7)
    let _ <- JR.superInit "WeaponLayer" this #[l_name, l_remoteInfo, l_multiPlayerType, l_movement, l_animationInterface, l_destroyedAnimationInterface, l_rectangle, l_viewPosition]
    let _ <- jfields this
    let _ := (<- JR.callInherited this "SimpleWeaponLayer" "setCollidableInferface_1" #[(<- JR.new "CollidableWeaponBehavior" #[(JV.bool true)])])
    pure this

initialize JR.registerClass {
    name := "SimpleWeaponLayer",
    javaName := "org.allbinary.game.layer.weapon.SimpleWeaponLayer",
    super := "WeaponLayer",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createDestroyed_0", #[], true, m_createDestroyed_0), 
        ("jinit_8", #["String", "RemoteInfo", "int", "Movement", "Animation", "Animation", "Rectangle", "ViewPositionBase"], false, jinit_8)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimpleWeaponLayer


