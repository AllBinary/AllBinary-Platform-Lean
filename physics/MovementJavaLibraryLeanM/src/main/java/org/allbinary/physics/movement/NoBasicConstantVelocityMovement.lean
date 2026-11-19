-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoBasicConstantVelocityMovement

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicConstantVelocityMovement" this #[(<- JR.getStatic "BasicDecimal" "ZERO_BIGDECIMAL"), (<- JR.new "BasicVelocityProperties" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoBasicConstantVelocityMovement",
    javaName := "org.allbinary.physics.movement.NoBasicConstantVelocityMovement",
    super := "BasicConstantVelocityMovement",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoBasicConstantVelocityMovement


