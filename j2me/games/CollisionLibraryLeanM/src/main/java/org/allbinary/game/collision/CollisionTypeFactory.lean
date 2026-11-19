-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollisionTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.new "CollisionType" #[(JV.str "None")])
    JR.setField this "DAMAGE" (<- JR.new "CollisionType" #[(JV.str "Damage")])
    JR.setField this "PICKUP" (<- JR.new "CollisionType" #[(JV.str "Pickup")])
    JR.setField this "COLLISION" (<- JR.new "CollisionType" #[(JV.str "Collision")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CollisionTypeFactory" "SINGLETON" (<- JR.new "CollisionTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CollisionTypeFactory" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollisionTypeFactory",
    javaName := "org.allbinary.game.collision.CollisionTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NONE", JV.null), ("DAMAGE", JV.null), ("PICKUP", JV.null), ("COLLISION", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollisionTypeFactory


