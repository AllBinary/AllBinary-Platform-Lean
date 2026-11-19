-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableNeverCollideBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isCollision_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_allbinaryCollidableLayer : JV := (JR.arg jargs 1)
    return (JV.bool false)


def m_collide_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_allbinaryCollidableLayer : JV := (JR.arg jargs 1)
    pure JV.null


def m_collideInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    pure JV.null


def m_isCollisionInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    return (JV.bool false)


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isCollidable : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "CollidableBaseBehavior" this #[l_isCollidable]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollidableNeverCollideBehavior",
    javaName := "org.allbinary.game.collision.CollidableNeverCollideBehavior",
    super := "CollidableBaseBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isCollision_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_isCollision_2), 
        ("collide_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_collide_2), 
        ("collideInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_collideInterface_2), 
        ("isCollisionInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_isCollisionInterface_2), 
        ("jinit_1", #["boolean"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableNeverCollideBehavior


