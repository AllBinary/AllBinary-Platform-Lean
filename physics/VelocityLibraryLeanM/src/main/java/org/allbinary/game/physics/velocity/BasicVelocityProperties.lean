-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.velocity
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicVelocityProperties

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "axisMathVectorUtil" (<- JR.callStatic "AxisMathVectorUtil" "getInstance_0" #[])
    JR.setField this "directionUtil" (<- JR.callStatic "DirectionUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_zero_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "velocityXBasicDecimal") "setint_1" #[(JV.int 0)])
    let _ := (<- JR.call (<- JR.getField this "velocityYBasicDecimal") "setint_1" #[(JV.int 0)])
    let _ := (<- JR.call (<- JR.getField this "velocityZBasicDecimal") "setint_1" #[(JV.int 0)])
    pure JV.null


def m_getVelocityXBasicDecimalP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "velocityXBasicDecimal")


def m_getVelocityYBasicDecimalP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "velocityYBasicDecimal")


def m_getVelocityZBasicDecimalP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "velocityZBasicDecimal")


def m_setVelocityWithBigDecimalAndDirection_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitudeBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_direction : JV := (JR.arg jargs 1)
    let mut l_otherDirection : JV := (JR.arg jargs 2)
    let mut l_angle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_direction])
    let mut l_otherAngle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_otherDirection])
    let _ := (<- JR.call this "setVelocityWithBigDecimal_3" #[l_magnitudeBasicDecimal, l_angle, l_otherAngle])
    pure JV.null


def m_setVelocityWithDirection_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_direction : JV := (JR.arg jargs 1)
    let mut l_otherDirection : JV := (JR.arg jargs 2)
    let mut l_angle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_direction])
    let mut l_otherAngle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_otherDirection])
    let _ := (<- JR.call this "setVelocity_3" #[l_magnitude, l_angle, l_otherAngle])
    pure JV.null


def m_addVelocityWithBigDecimalAndDirection_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitudeBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_direction : JV := (JR.arg jargs 1)
    let mut l_otherDirection : JV := (JR.arg jargs 2)
    let mut l_angle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_direction])
    let mut l_otherAngle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_otherDirection])
    let _ := (<- JR.call this "addVelocityWithBigDecimal_3" #[l_magnitudeBasicDecimal, l_angle, l_otherAngle])
    pure JV.null


def m_addVelocityWithDirection_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_direction : JV := (JR.arg jargs 1)
    let mut l_otherDirection : JV := (JR.arg jargs 2)
    let mut l_angle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_direction])
    let mut l_otherAngle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getAngle_1" #[l_otherDirection])
    let _ := (<- JR.call this "addVelocity_3" #[l_magnitude, l_angle, l_otherAngle])
    pure JV.null


def m_setVelocityWithBigDecimal_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitudeBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.arg jargs 1)
    let mut l_otherAngle : JV := (JR.arg jargs 2)
    let mut l_magnitude : JV := (JR.asJ (<- JR.call l_magnitudeBasicDecimal "getUnscaled_0" #[]))
    let _ := (<- JR.call this "setVelocity_3" #[l_magnitude, l_angle, l_otherAngle])
    pure JV.null


def m_addVelocityWithBigDecimal_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitudeBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.arg jargs 1)
    let mut l_otherAngle : JV := (JR.arg jargs 2)
    let mut l_magnitude : JV := (JR.asJ (<- JR.call l_magnitudeBasicDecimal "getUnscaled_0" #[]))
    let _ := (<- JR.call this "addVelocity_3" #[l_magnitude, l_angle, l_otherAngle])
    pure JV.null


def m_setVelocity_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.arg jargs 1)
    let mut l_otherAngle : JV := (JR.arg jargs 2)
    let _ := (<- JR.call this "setVelocityi_3" #[l_magnitude, (JR.toI (<- JR.call l_angle "getValue_0" #[])), (JR.toI (<- JR.call l_otherAngle "getValue_0" #[]))])
    pure JV.null


def m_addVelocity_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.arg jargs 1)
    let mut l_otherAngle : JV := (JR.arg jargs 2)
    let _ := (<- JR.call this "addVelocityi_3" #[l_magnitude, (JR.toI (<- JR.call l_angle "getValue_0" #[])), (JR.toI (<- JR.call l_otherAngle "getValue_0" #[]))])
    pure JV.null


def m_setVelocityi_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_xVector : JV := (JR.asJ ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateX_2" #[l_magnitude, l_angle]) (JR.toJ (<- JR.call (<- JR.getField this "velocityXBasicDecimal") "getScaledFactorValue_0" #[])))))
    let mut l_yVector : JV := (JR.asJ ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateY_2" #[l_magnitude, l_angle]) (JR.toJ (<- JR.call (<- JR.getField this "velocityYBasicDecimal") "getScaledFactorValue_0" #[])))))
    let mut l_zVector : JV := (JR.asJ ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateZ_2" #[l_magnitude, l_otherAngle]) (JR.toJ (<- JR.call (<- JR.getField this "velocityZBasicDecimal") "getScaledFactorValue_0" #[])))))
    let _ := (<- JR.call (<- JR.getField this "velocityXBasicDecimal") "setlong_1" #[l_xVector])
    let _ := (<- JR.call (<- JR.getField this "velocityYBasicDecimal") "setlong_1" #[l_yVector])
    let _ := (<- JR.call (<- JR.getField this "velocityZBasicDecimal") "setlong_1" #[l_zVector])
    pure JV.null


def m_addVelocityi_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_xVector : JV := (JR.asJ ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateX_2" #[l_magnitude, l_angle]) (JR.toJ (<- JR.call (<- JR.getField this "velocityXBasicDecimal") "getScaledFactorValue_0" #[])))))
    let mut l_yVector : JV := (JR.asJ ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateY_2" #[l_magnitude, l_angle]) (JR.toJ (<- JR.call (<- JR.getField this "velocityYBasicDecimal") "getScaledFactorValue_0" #[])))))
    let mut l_zVector : JV := (JR.asJ ((<- JR.div (<- JR.call (<- JR.getField this "axisMathVectorUtil") "calculateZ_2" #[l_magnitude, l_otherAngle]) (JR.toJ (<- JR.call (<- JR.getField this "velocityZBasicDecimal") "getScaledFactorValue_0" #[])))))
    let _ := (<- JR.call (<- JR.getField this "velocityXBasicDecimal") "addlong_1" #[l_xVector])
    let _ := (<- JR.call (<- JR.getField this "velocityYBasicDecimal") "addlong_1" #[l_yVector])
    let _ := (<- JR.call (<- JR.getField this "velocityZBasicDecimal") "addlong_1" #[l_zVector])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_positionStrings : JV := (<- JR.callStatic "PositionStrings" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Velocity ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "X_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.getField this "velocityXBasicDecimal")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Y_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.getField this "velocityYBasicDecimal")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Z_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.getField this "velocityZBasicDecimal")])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "velocityXBasicDecimal" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    JR.setField this "velocityYBasicDecimal" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    JR.setField this "velocityZBasicDecimal" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    pure this

initialize JR.registerClass {
    name := "BasicVelocityProperties",
    javaName := "org.allbinary.game.physics.velocity.BasicVelocityProperties",
    super := "Object",
    interfaces := #["BasicVelocityInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("velocityXBasicDecimal", JV.null), ("velocityYBasicDecimal", JV.null), ("velocityZBasicDecimal", JV.null), ("axisMathVectorUtil", JV.null), ("directionUtil", JV.null)],
    statics := #[],
    methods := #[
        ("zero_0", #[], false, m_zero_0), 
        ("getVelocityXBasicDecimalP_0", #[], false, m_getVelocityXBasicDecimalP_0), 
        ("getVelocityYBasicDecimalP_0", #[], false, m_getVelocityYBasicDecimalP_0), 
        ("getVelocityZBasicDecimalP_0", #[], false, m_getVelocityZBasicDecimalP_0), 
        ("setVelocityWithBigDecimalAndDirection_3", #["BasicDecimal", "Direction", "Direction"], false, m_setVelocityWithBigDecimalAndDirection_3), 
        ("setVelocityWithDirection_3", #["long", "Direction", "Direction"], false, m_setVelocityWithDirection_3), 
        ("addVelocityWithBigDecimalAndDirection_3", #["BasicDecimal", "Direction", "Direction"], false, m_addVelocityWithBigDecimalAndDirection_3), 
        ("addVelocityWithDirection_3", #["long", "Direction", "Direction"], false, m_addVelocityWithDirection_3), 
        ("setVelocityWithBigDecimal_3", #["BasicDecimal", "Angle", "Angle"], false, m_setVelocityWithBigDecimal_3), 
        ("addVelocityWithBigDecimal_3", #["BasicDecimal", "Angle", "Angle"], false, m_addVelocityWithBigDecimal_3), 
        ("setVelocity_3", #["long", "Angle", "Angle"], false, m_setVelocity_3), 
        ("addVelocity_3", #["long", "Angle", "Angle"], false, m_addVelocity_3), 
        ("setVelocityi_3", #["long", "int", "int"], false, m_setVelocityi_3), 
        ("addVelocityi_3", #["long", "int", "int"], false, m_addVelocityi_3), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicVelocityProperties


