-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableCharacterBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_collide_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let mut l_collisionTypeFactory : JV := (<- JR.callStatic "CollisionTypeFactory" "getInstance_0" #[])
    let mut l_collisionType : JV := (<- JR.call (<- JR.call l_collidableInterfaceCompositeInterface "getCollidableInferface_0" #[]) "getCollisionTypeWith_1" #[l_ownerLayer])
    if JR.truth (<- JR.eq l_collisionType (<- JR.getField l_collisionTypeFactory "PICKUP")) then
        let mut l_collidableDestroyableDamageableLayer : JV := l_ownerLayer
        let _ := (<- JR.call (<- JR.call l_collidableDestroyableDamageableLayer "getPickupBehavior_0" #[]) "doPickupLayer_1" #[l_collidableInterfaceCompositeInterface])
        pure ()
    else
        let _ := (<- JR.callSuper "CollidableDestroyableDamageableBehavior" this "collide_2" #[l_ownerLayer, l_collidableInterfaceCompositeInterface])
        pure ()
    pure JV.null


def m_collideInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.getInherited this "CollidableCharacterBehavior" "commonStrings") "NOT_IMPLEMENTED"), this])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidable : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "CollidableDestroyableDamageableBehavior" this #[l_collidable]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollidableCharacterBehavior",
    javaName := "org.allbinary.game.layer.special.CollidableCharacterBehavior",
    super := "CollidableDestroyableDamageableBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("collide_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_collide_2), 
        ("collideInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_collideInterface_2), 
        ("jinit_1", #["boolean"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableCharacterBehavior


