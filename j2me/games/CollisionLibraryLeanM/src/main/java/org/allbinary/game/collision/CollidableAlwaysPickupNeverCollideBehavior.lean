-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableAlwaysPickupNeverCollideBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getCollisionTypeWith_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "CollisionTypeFactory" "getInstance_0" #[]) "PICKUP")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CollidableNeverCollideBehavior" this #[(JV.bool true)]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollidableAlwaysPickupNeverCollideBehavior",
    javaName := "org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior",
    super := "CollidableNeverCollideBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getCollisionTypeWith_1", #["AllBinaryLayer"], false, m_getCollisionTypeWith_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableAlwaysPickupNeverCollideBehavior


