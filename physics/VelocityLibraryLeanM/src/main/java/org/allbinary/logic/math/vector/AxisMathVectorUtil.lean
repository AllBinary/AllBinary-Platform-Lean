-- Generated Code Do Not Modify
-- package org.allbinary.logic.math.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AxisMathVectorUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "noDecimalTrigTable" (<- JR.callStatic "NoDecimalTrigTable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AxisMathVectorUtil" "instance" (<- JR.new "AxisMathVectorUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AxisMathVectorUtil" "instance")


def m_calculateX_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asJ (<- JR.div (<- JR.mul l_magnitude (<- JR.call (<- JR.getField this "noDecimalTrigTable") "cos_1" #[l_angle])) (JV.long 10)))


def m_calculateY_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asJ (<- JR.div (<- JR.mul l_magnitude (<- JR.call (<- JR.getField this "noDecimalTrigTable") "sin_1" #[l_angle])) (JV.long 10)))


def m_calculateZ_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asJ (<- JR.div (<- JR.mul l_magnitude (<- JR.call (<- JR.getField this "noDecimalTrigTable") "sin_1" #[l_otherAngle])) (JV.long 10)))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AxisMathVectorUtil",
    javaName := "org.allbinary.logic.math.vector.AxisMathVectorUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("noDecimalTrigTable", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("calculateX_2", #["long", "int"], false, m_calculateX_2), 
        ("calculateY_2", #["long", "int"], false, m_calculateY_2), 
        ("calculateZ_2", #["long", "int"], false, m_calculateZ_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AxisMathVectorUtil


