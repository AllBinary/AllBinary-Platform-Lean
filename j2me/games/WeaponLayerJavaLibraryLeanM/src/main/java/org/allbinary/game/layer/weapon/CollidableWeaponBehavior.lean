-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableWeaponBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CollidableWeaponBehavior" "NULL_COLLIDABLE_WEAPON_BEHAVIOR" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "CollidableWeaponBehavior" "NULL_COLLIDABLE_WEAPON_BEHAVIOR") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "CollidableWeaponBehavior" "NULL_COLLIDABLE_WEAPON_BEHAVIOR" (<- JR.new "CollidableWeaponBehavior" #[(JV.bool false)])
        pure ()
    return (<- JR.getStatic "CollidableWeaponBehavior" "NULL_COLLIDABLE_WEAPON_BEHAVIOR")


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "setCollided_1" #[(JV.bool false)])
    let _ := (<- JR.call (<- JR.getField this "collisionHelper") "setOwnerLayerInterface_1" #[l_sourceLayerInterface])
    pure JV.null


def m_isCollision_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collisionLayer : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.call (<- JR.getField this "collisionHelper") "isCollidable_1" #[l_collisionLayer]) then
        if JR.truth (<- JR.ne (<- JR.aget (<- JR.call l_ownerLayer "getGroupInterface_0" #[]) (JV.int 0)) (<- JR.aget (<- JR.call l_collisionLayer "getGroupInterface_0" #[]) (JV.int 0))) then
            return (<- JR.callSuper "CollidableDestroyableDamageableBehavior" this "isCollision_2" #[l_ownerLayer, l_collisionLayer])
        pure ()
    return (JV.bool false)


def m_collide_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collisionLayer : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "CollidableDestroyableDamageableBehavior" this "collide_2" #[l_ownerLayer, l_collisionLayer])
    JR.setField this "collided" (JV.bool true)
    pure JV.null


def m_isCollisionInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.call (<- JR.getField this "collisionHelper") "isCollidable_1" #[l_collidableInterfaceCompositeInterface]) then
        let mut l_layerInterface : JV := l_collidableInterfaceCompositeInterface
        if JR.truth (<- JR.ne (<- JR.aget (<- JR.call l_ownerLayer "getGroupInterface_0" #[]) (JV.int 0)) (<- JR.aget (<- JR.call l_layerInterface "getGroupInterface_0" #[]) (JV.int 0))) then
            if JR.truth (<- JR.call (<- JR.getInherited this "CollidableWeaponBehavior" "layerCollisionUtil") "isCollision_2" #[l_ownerLayer, l_layerInterface]) then
                return (JV.bool true)
            pure ()
        pure ()
    return (JV.bool false)


def m_collideInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let mut l_ownerDamageableInterface : JV := l_ownerLayer
    let mut l_damageableInterface : JV := l_collidableInterfaceCompositeInterface
    let _ := (<- JR.call (<- JR.getInherited this "CollidableWeaponBehavior" "damageUtil") "process_2" #[l_ownerDamageableInterface, l_damageableInterface])
    JR.setField this "collided" (JV.bool true)
    pure JV.null


def m_getCollisionTypeWith_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "CollisionTypeFactory" "getInstance_0" #[]) "COLLISION")


def m_isCollided_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "collided")


def m_setCollided_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collided : JV := (JR.arg jargs 0)
    JR.setField this "collided" l_collided
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidable : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "CollidableDestroyableDamageableBehavior" this #[l_collidable]
    let _ <- jfields this
    let _ := (<- JR.call this "setCollided_1" #[(JV.bool false)])
    let _ := (<- JR.callInherited this "CollidableWeaponBehavior" "setCollidable_1" #[(JV.bool true)])
    JR.setField this "collisionHelper" (<- JR.callStatic "CollidableHelperFactory" "getInstance_0" #[])
    pure this

initialize JR.registerClass {
    name := "CollidableWeaponBehavior",
    javaName := "org.allbinary.game.layer.weapon.CollidableWeaponBehavior",
    super := "CollidableDestroyableDamageableBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[("collided", (JV.bool false)), ("collisionHelper", JV.null)],
    statics := #[("NULL_COLLIDABLE_WEAPON_BEHAVIOR", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("init_1", #["AllBinaryLayer"], false, m_init_1), 
        ("isCollision_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_isCollision_2), 
        ("collide_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_collide_2), 
        ("isCollisionInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_isCollisionInterface_2), 
        ("collideInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_collideInterface_2), 
        ("getCollisionTypeWith_1", #["AllBinaryLayer"], false, m_getCollisionTypeWith_1), 
        ("isCollided_0", #[], false, m_isCollided_0), 
        ("setCollided_1", #["boolean"], false, m_setCollided_1), 
        ("jinit_1", #["boolean"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableWeaponBehavior


