-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PreciseConstantVelocityMovement

def jfields (this : JV) : JM JV := do
    JR.setField this "factorValue" (JR.asI (<- JR.getField (<- JR.callStatic "ScaleFactorFactory" "getInstance_0" #[]) "DEFAULT_SCALE_VALUE"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let mut l_mathUtil : JV := (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    let mut l_velocityProperties : JV := (<- JR.callInherited this "PreciseConstantVelocityMovement" "getVelocityProperties_0" #[])
    JR.setField this "accumulatedX" (JR.asI (JR.toI ((<- JR.add (JR.toJ (<- JR.getField this "accumulatedX")) (<- JR.call (<- JR.call l_velocityProperties "getVelocityXBasicDecimalP_0" #[]) "getUnscaled_0" #[])))))
    JR.setField this "accumulatedY" (JR.asI (JR.toI ((<- JR.add (JR.toJ (<- JR.getField this "accumulatedY")) (<- JR.call (<- JR.call l_velocityProperties "getVelocityYBasicDecimalP_0" #[]) "getUnscaled_0" #[])))))
    JR.setField this "accumulatedZ" (JR.asI (JR.toI ((<- JR.add (JR.toJ (<- JR.getField this "accumulatedZ")) (<- JR.call (<- JR.call l_velocityProperties "getVelocityZBasicDecimalP_0" #[]) "getUnscaled_0" #[])))))
    let _ := (<- JR.call l_layer "moveDXYZ_3" #[(<- JR.div (<- JR.getField this "accumulatedX") (<- JR.getField this "factorValue")), (<- JR.div (<- JR.getField this "accumulatedY") (<- JR.getField this "factorValue")), (<- JR.div (<- JR.getField this "accumulatedZ") (<- JR.getField this "factorValue"))])
    if JR.truth (<- JR.gt (<- JR.call l_mathUtil "abs_1" #[(<- JR.getField this "accumulatedX")]) (<- JR.getField this "factorValue")) then
        JR.setField this "accumulatedX" (JR.asI (JV.int 0))
        pure ()
    if JR.truth (<- JR.gt (<- JR.call l_mathUtil "abs_1" #[(<- JR.getField this "accumulatedY")]) (<- JR.getField this "factorValue")) then
        JR.setField this "accumulatedY" (JR.asI (JV.int 0))
        pure ()
    if JR.truth (<- JR.gt (<- JR.call l_mathUtil "abs_1" #[(<- JR.getField this "accumulatedZ")]) (<- JR.getField this "factorValue")) then
        JR.setField this "accumulatedZ" (JR.asI (JV.int 0))
        pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicDecimal : JV := (JR.arg jargs 0)
    let mut l_velocityProperties : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BasicConstantVelocityMovement" this #[l_basicDecimal, l_velocityProperties]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PreciseConstantVelocityMovement",
    javaName := "org.allbinary.physics.movement.PreciseConstantVelocityMovement",
    super := "BasicConstantVelocityMovement",
    interfaces := #[],
    isInterface := false,
    fields := #[("accumulatedX", (JV.int 0)), ("accumulatedY", (JV.int 0)), ("accumulatedZ", (JV.int 0)), ("factorValue", (JV.int 0))],
    statics := #[],
    methods := #[
        ("init_3", #["BasicDecimal", "int", "int"], false, m_init_3), 
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("jinit_2", #["BasicDecimal", "BasicVelocityProperties"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PreciseConstantVelocityMovement


