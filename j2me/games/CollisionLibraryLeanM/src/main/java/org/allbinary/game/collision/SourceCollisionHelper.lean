-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SourceCollisionHelper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isCollidable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne (<- JR.getInherited this "SourceCollisionHelper" "sourceLayerInterface") l_layerInterface) then
        return (JV.bool true)
    return (JV.bool false)


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "CollisionHelper" this #[l_layerInterface]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SourceCollisionHelper",
    javaName := "org.allbinary.game.collision.SourceCollisionHelper",
    super := "CollisionHelper",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isCollidable_1", #["CollidableCompositeLayer"], false, m_isCollidable_1), 
        ("jinit_1", #["AllBinaryLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SourceCollisionHelper


