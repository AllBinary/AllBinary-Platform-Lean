-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicGravityConstantVelocityMovement

def jfields (this : JV) : JM JV := do
    JR.setField this "gravityUtil" (<- JR.callStatic "GravityUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicConstantVelocityMovement" this "process_1" #[l_layer])
    let _ := (<- JR.call (<- JR.getField this "gravityUtil") "process_2" #[(<- JR.callInherited this "BasicGravityConstantVelocityMovement" "getVelocityProperties_0" #[]), (<- JR.getField (<- JR.getField this "gravityUtil") "GAME_GRAVITY_VELOCITY")])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedBasicDecimal : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "BasicConstantVelocityMovement" this #[l_speedBasicDecimal, (<- JR.new "VelocityProperties" #[(JR.toI (<- JR.call l_speedBasicDecimal "getUnscaled_0" #[])), (JR.toI (<- JR.call l_speedBasicDecimal "getUnscaled_0" #[]))])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicGravityConstantVelocityMovement",
    javaName := "org.allbinary.physics.movement.BasicGravityConstantVelocityMovement",
    super := "BasicConstantVelocityMovement",
    interfaces := #[],
    isInterface := false,
    fields := #[("gravityUtil", JV.null)],
    statics := #[],
    methods := #[
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("jinit_1", #["BasicDecimal"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicGravityConstantVelocityMovement


