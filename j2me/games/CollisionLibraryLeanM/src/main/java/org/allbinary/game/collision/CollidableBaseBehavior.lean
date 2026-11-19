-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableBaseBehavior

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "layerCollisionUtil" (<- JR.callStatic "LayerCollisionUtil" "getInstance_0" #[])
    JR.setField this "collidable" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callInherited this "CollidableBaseBehavior" "getClass_0" #[]) "getName_0" #[])


def m_setCollidable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidable : JV := (JR.arg jargs 0)
    JR.setField this "collidable" l_collidable
    pure JV.null


def m_isCollidable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    return (<- JR.getField this "collidable")


def m_collide_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_allbinaryCollidableLayer : JV := (JR.arg jargs 1)
    throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "COLON_SEP")]) "append_1" #[(<- JR.call (<- JR.callInherited this "CollidableBaseBehavior" "getClass_0" #[]) "getName_0" #[])]) "toString_0" #[])])


def m_isCollision_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collisionLayer : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.getField this "layerCollisionUtil") "isCollision_2" #[l_ownerLayer, l_collisionLayer])


def m_isCollisionInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.getField this "layerCollisionUtil") "isCollision_2" #[l_ownerLayer, l_collidableInterfaceCompositeInterface])


def m_collideInterface_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_paint_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let mut l_graphics : JV := (JR.arg jargs 1)
    pure JV.null


def m_getCollisionTypeWith_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "CollisionTypeFactory" "getInstance_0" #[]) "NONE")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidable : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "collidable" l_collidable
    pure this

initialize JR.registerClass {
    name := "CollidableBaseBehavior",
    javaName := "org.allbinary.game.collision.CollidableBaseBehavior",
    super := "Object",
    interfaces := #["CollidableInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("layerCollisionUtil", JV.null), ("collidable", (JV.bool false))],
    statics := #[],
    methods := #[
        ("update_0", #[], false, m_update_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("setCollidable_1", #["boolean"], false, m_setCollidable_1), 
        ("isCollidable_1", #["CollidableCompositeLayer"], false, m_isCollidable_1), 
        ("collide_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_collide_2), 
        ("isCollision_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_isCollision_2), 
        ("isCollisionInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_isCollisionInterface_2), 
        ("collideInterface_2", #["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], false, m_collideInterface_2), 
        ("paint_2", #["CollidableCompositeLayer", "Graphics"], false, m_paint_2), 
        ("getCollisionTypeWith_1", #["AllBinaryLayer"], false, m_getCollisionTypeWith_1), 
        ("jinit_1", #["boolean"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableBaseBehavior


