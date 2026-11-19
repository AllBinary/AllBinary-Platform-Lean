-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollisionProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isCollision_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_myLayer : JV := (JR.arg jargs 0)
    let mut l_myLayer2 : JV := (JR.arg jargs 1)
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollisionProcessor",
    javaName := "org.allbinary.game.collision.CollisionProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isCollision_2", #["AllBinaryLayer", "AllBinaryLayer"], false, m_isCollision_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollisionProcessor


