-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoZBasicConstantVelocityMovement

def jfields (this : JV) : JM JV := do
    JR.setField this "speedBasicDecimal" (<- JR.getStatic "BasicDecimal" "ZERO_BIGDECIMAL")
    JR.setField this "axisMathVectorUtil" (<- JR.callStatic "AxisMathVectorUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    JR.setField this "speedBasicDecimal" l_speedBasicDecimal
    let mut l_angleFactory : JV := (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "velocityProperties") "setVelocityWithBigDecimal_3" #[l_speedBasicDecimal, (<- JR.call l_angleFactory "getAt_1" #[l_angle]), (<- JR.call l_angleFactory "getAt_1" #[l_otherAngle])])
    pure JV.null


def m_moveOutsideRadius_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let mut l_radius : JV := (JR.asJ (JR.arg jargs 1))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 3))
    let mut l_scaleFactorValue : JV := (JR.asI (<- JR.call (<- JR.getField this "speedBasicDecimal") "getScaledFactorValue_0" #[]))
    let mut l_xVector : JV := (JR.asI (JR.toI ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateX_2" #[l_radius, l_angle]) (JR.toJ l_scaleFactorValue)))))
    let mut l_yVector : JV := (JR.asI (JR.toI ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateY_2" #[l_radius, l_angle]) (JR.toJ l_scaleFactorValue)))))
    let _ := (<- JR.call l_layer "moveDXYZ_3" #[l_xVector, l_yVector, (JV.int 0)])
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_layer "moveDXYZ_3" #[(<- JR.call (<- JR.call (<- JR.getField this "velocityProperties") "getVelocityXBasicDecimalP_0" #[]) "getScaled_0" #[]), (<- JR.call (<- JR.call (<- JR.getField this "velocityProperties") "getVelocityYBasicDecimalP_0" #[]) "getScaled_0" #[]), (JV.int 0)])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "velocityProperties") "toString_0" #[])


def m_stop_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "velocityProperties") "zero_0" #[])
    pure JV.null


def m_getVelocityProperties_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "velocityProperties")


def m_setVelocityProperties_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    JR.setField this "velocityProperties" l_velocityProperties
    pure JV.null


def m_setSpeedBasicDecimal_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedBasicDecimal : JV := (JR.arg jargs 0)
    JR.setField this "speedBasicDecimal" l_speedBasicDecimal
    pure JV.null


def m_getSpeedBasicDecimal_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "speedBasicDecimal")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicDecimal : JV := (JR.arg jargs 0)
    let mut l_velocityProperties : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Movement" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setSpeedBasicDecimal_1" #[l_basicDecimal])
    JR.setField this "velocityProperties" l_velocityProperties
    pure this

initialize JR.registerClass {
    name := "NoZBasicConstantVelocityMovement",
    javaName := "org.allbinary.physics.movement.NoZBasicConstantVelocityMovement",
    super := "Movement",
    interfaces := #["VelocityInterfaceCompositeInterface"],
    isInterface := false,
    fields := #[("velocityProperties", JV.null), ("speedBasicDecimal", JV.null), ("axisMathVectorUtil", JV.null)],
    statics := #[],
    methods := #[
        ("init_3", #["BasicDecimal", "int", "int"], false, m_init_3), 
        ("moveOutsideRadius_4", #["AllBinaryLayer", "long", "int", "int"], false, m_moveOutsideRadius_4), 
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("stop_0", #[], false, m_stop_0), 
        ("getVelocityProperties_0", #[], false, m_getVelocityProperties_0), 
        ("setVelocityProperties_1", #["BasicVelocityProperties"], false, m_setVelocityProperties_1), 
        ("setSpeedBasicDecimal_1", #["BasicDecimal"], false, m_setSpeedBasicDecimal_1), 
        ("getSpeedBasicDecimal_0", #[], false, m_getSpeedBasicDecimal_0), 
        ("jinit_2", #["BasicDecimal", "BasicVelocityProperties"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoZBasicConstantVelocityMovement


