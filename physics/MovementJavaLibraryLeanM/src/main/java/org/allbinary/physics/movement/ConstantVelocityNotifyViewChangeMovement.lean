-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ConstantVelocityNotifyViewChangeMovement

def jfields (this : JV) : JM JV := do
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
    let _ := (<- JR.call (<- JR.getField this "basicVelocityProperties") "setVelocityWithBigDecimal_3" #[l_speedBasicDecimal, (<- JR.call l_angleFactory "getAt_1" #[l_angle]), (<- JR.call l_angleFactory "getAt_1" #[l_otherAngle])])
    pure JV.null


def m_moveOutsideRadius_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let mut l_radius : JV := (JR.asJ (JR.arg jargs 1))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 3))
    let mut l_scaleFactorValue : JV := (JR.asI (<- JR.call (<- JR.getField this "speedBasicDecimal") "getScaledFactorValue_0" #[]))
    let mut l_xVector : JV := (JR.asI (JR.toI ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateX_2" #[l_radius, l_angle]) (JR.toJ l_scaleFactorValue)))))
    let mut l_yVector : JV := (JR.asI (JR.toI ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateY_2" #[l_radius, l_angle]) (JR.toJ l_scaleFactorValue)))))
    let mut l_zVector : JV := (JR.asI (JR.toI ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateZ_2" #[l_radius, l_otherAngle]) (JR.toJ l_scaleFactorValue)))))
    let _ := (<- JR.call l_layer "moveDXYZ_3" #[l_xVector, l_yVector, l_zVector])
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.getField this "basicVelocityProperties") "getVelocityXBasicDecimalP_0" #[]) "getScaled_0" #[]))
    let mut l_y : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.getField this "basicVelocityProperties") "getVelocityYBasicDecimalP_0" #[]) "getScaled_0" #[]))
    let mut l_z : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.getField this "basicVelocityProperties") "getVelocityZBasicDecimalP_0" #[]) "getScaled_0" #[]))
    let _ := (<- JR.call l_layer "moveDXYZ_3" #[l_x, l_y, l_z])
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.ne l_x (JV.int 0)) (do pure (<- JR.ne l_y (JV.int 0)))) (do pure (<- JR.ne l_z (JV.int 0)))) then
        let _ := (<- JR.call l_layer "onViewPositionChangeEvent_0" #[])
        pure ()
    pure JV.null


def m_stop_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "basicVelocityProperties") "zero_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Movement" this #[]
    let _ <- jfields this
    JR.setField this "speedBasicDecimal" (<- JR.getStatic "BasicDecimal" "ZERO_BIGDECIMAL")
    JR.setField this "basicVelocityProperties" (<- JR.new "BasicVelocityProperties" #[])
    pure this

initialize JR.registerClass {
    name := "ConstantVelocityNotifyViewChangeMovement",
    javaName := "org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement",
    super := "Movement",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicVelocityProperties", JV.null), ("speedBasicDecimal", JV.null), ("axisMathVectorUtil", JV.null)],
    statics := #[],
    methods := #[
        ("init_3", #["BasicDecimal", "int", "int"], false, m_init_3), 
        ("moveOutsideRadius_4", #["AllBinaryLayer", "long", "int", "int"], false, m_moveOutsideRadius_4), 
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("stop_0", #[], false, m_stop_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ConstantVelocityNotifyViewChangeMovement


