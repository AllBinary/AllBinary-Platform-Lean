-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerCollisionUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LayerCollisionUtil" "instance" (<- JR.new "LayerCollisionUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LayerCollisionUtil" "instance")


def m_isCollision_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_myLayer : JV := (JR.arg jargs 0)
    let mut l_myLayer2 : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.getField this "collisionProcessor") "isCollision_2" #[l_myLayer, l_myLayer2])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_gameFeatureFactory : JV := (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cand (<- JR.call (<- JR.callStatic "OpenGLFeatureUtil" "getInstance_0" #[]) "isAnyThreed_0" #[]) (do pure (JR.not (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_gameFeatureFactory "COLLISIONS_FORCED_TWO_DIMENSIONAL")])))) then
        JR.setField this "collisionProcessor" (<- JR.new "CollisionThreedProcessor" #[])
        pure ()
    else
        JR.setField this "collisionProcessor" (<- JR.new "Collision2DProcessor" #[])
        pure ()
    pure this

initialize JR.registerClass {
    name := "LayerCollisionUtil",
    javaName := "org.allbinary.game.collision.LayerCollisionUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("collisionProcessor", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isCollision_2", #["AllBinaryLayer", "AllBinaryLayer"], false, m_isCollision_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerCollisionUtil


