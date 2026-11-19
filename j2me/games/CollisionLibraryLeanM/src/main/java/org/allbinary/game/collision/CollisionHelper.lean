-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollisionHelper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isCollidable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    return (JV.bool true)


def m_getOwnerLayerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "sourceLayerInterface")


def m_setOwnerLayerInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    JR.setField this "sourceLayerInterface" l_sourceLayerInterface
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "sourceLayerInterface" l_sourceLayerInterface
    pure this

initialize JR.registerClass {
    name := "CollisionHelper",
    javaName := "org.allbinary.game.collision.CollisionHelper",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("sourceLayerInterface", JV.null)],
    statics := #[],
    methods := #[
        ("isCollidable_1", #["CollidableCompositeLayer"], false, m_isCollidable_1), 
        ("getOwnerLayerInterface_0", #[], false, m_getOwnerLayerInterface_0), 
        ("setOwnerLayerInterface_1", #["AllBinaryLayer"], false, m_setOwnerLayerInterface_1), 
        ("jinit_1", #["AllBinaryLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollisionHelper


