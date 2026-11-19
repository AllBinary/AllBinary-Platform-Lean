-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableDestroyableDamageableBehavior

def jfields (this : JV) : JM JV := do
    JR.setField this "damageUtil" (<- JR.callStatic "DamageUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isCollision_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collisionLayer : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.ne (<- JR.aget (<- JR.call l_ownerLayer "getGroupInterface_0" #[]) (JV.int 0)) (<- JR.aget (<- JR.call l_collisionLayer "getGroupInterface_0" #[]) (JV.int 0))) then
        return (<- JR.callSuper "CollidableBaseBehavior" this "isCollision_2" #[l_ownerLayer, l_collisionLayer])
    return (JV.bool false)


def m_collide_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let mut l_ownerCollidableDestroyableDamageableLayer : JV := l_ownerLayer
    let mut l_collidableDestroyableDamageableLayer : JV := l_collidableInterfaceCompositeInterface
    let _ := (<- JR.call l_ownerCollidableDestroyableDamageableLayer "damage_2" #[(<- JR.call l_collidableDestroyableDamageableLayer "getDamage_1" #[(JV.int 0)]), (JV.int 0)])
    pure JV.null


def m_isCollisionInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(JV.str "No Longer Used"), this])
    return (JV.bool false)


def m_collideInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(JV.str "No Longer Used"), this])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidable : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "CollidableBaseBehavior" this #[l_collidable]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollidableDestroyableDamageableBehavior",
    javaName := "org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior",
    super := "CollidableBaseBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[("damageUtil", JV.null)],
    statics := #[],
    methods := #[
        ("isCollision_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_isCollision_2), 
        ("collide_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_collide_2), 
        ("isCollisionInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_isCollisionInterface_2), 
        ("collideInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_collideInterface_2), 
        ("jinit_1", #["boolean"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableDestroyableDamageableBehavior


