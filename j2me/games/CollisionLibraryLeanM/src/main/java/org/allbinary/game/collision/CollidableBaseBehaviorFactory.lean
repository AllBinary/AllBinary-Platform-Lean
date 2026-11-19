-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableBaseBehaviorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollidableBaseBehaviorFactory",
    javaName := "org.allbinary.game.collision.CollidableBaseBehaviorFactory",
    super := "Object",
    interfaces := #["CollidableBaseBehaviorFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createBehavior_0", #[], false, m_createBehavior_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableBaseBehaviorFactory


