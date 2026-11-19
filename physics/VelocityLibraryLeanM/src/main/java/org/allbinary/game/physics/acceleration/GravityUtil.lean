-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.acceleration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GravityUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "GAME_GRAVITY_VELOCITY" (JR.asI (JV.int 1800))
    JR.setField this "MAX_GAME_VELOCITY" (JR.asI (JV.int 18000))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GravityUtil" "instance" (<- JR.new "GravityUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GravityUtil" "instance")


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_customGravity : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.call l_velocityProperties "getVelocityYBasicDecimalP_0" #[]) "addint_1" #[l_customGravity])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GravityUtil",
    javaName := "org.allbinary.game.physics.acceleration.GravityUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("GAME_GRAVITY_VELOCITY", (JV.int 0)), ("MAX_GAME_VELOCITY", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_2", #["BasicVelocityProperties", "int"], false, m_process_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GravityUtil


