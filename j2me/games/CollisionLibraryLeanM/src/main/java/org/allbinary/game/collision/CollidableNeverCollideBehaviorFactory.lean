-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableNeverCollideBehaviorFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "instance" (<- JR.new "CollidableNeverCollideBehavior" #[(JV.bool false)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CollidableNeverCollideBehaviorFactory" "instanceC" (<- JR.new "CollidableNeverCollideBehaviorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CollidableNeverCollideBehaviorFactory" "instanceC")


def m_createBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CollidableBaseBehaviorFactory" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollidableNeverCollideBehaviorFactory",
    javaName := "org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory",
    super := "CollidableBaseBehaviorFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("instance", JV.null)],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createBehavior_0", #[], false, m_createBehavior_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableNeverCollideBehaviorFactory


