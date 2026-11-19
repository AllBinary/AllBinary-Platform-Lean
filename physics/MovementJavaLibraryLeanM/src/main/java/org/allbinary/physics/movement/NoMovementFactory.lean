-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoMovementFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "movement" (<- JR.new "Movement" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoMovementFactory" "instance" (<- JR.new "NoMovementFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoMovementFactory" "instance")


def m_getMovmentInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "movement")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoMovementFactory",
    javaName := "org.allbinary.physics.movement.NoMovementFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("movement", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getMovmentInstance_0", #[], false, m_getMovmentInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoMovementFactory


