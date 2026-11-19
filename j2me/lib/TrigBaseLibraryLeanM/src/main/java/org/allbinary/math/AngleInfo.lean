-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AngleInfo

def jfields (this : JV) : JM JV := do
    JR.setField this "angle" (JR.asS (JV.int 0))
    JR.setField this "frameUtil" (<- JR.callStatic "FrameUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleIncrement : JV := (JR.asS (JR.arg jargs 0))
    return (<- JR.new "AngleInfo" #[(<- JR.call (<- JR.callStatic "AngleIncrementInfoFactory" "getInstance_0" #[]) "getAt_1" #[l_angleIncrement])])


def m_adjustAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    let mut l_newAngle : JV := (JR.asI (<- JR.sub (<- JR.mul (JR.toI (<- JR.call (<- JR.getField this "angleIncrementInfo") "getAngleIncrement_0" #[])) l_frame) (JV.int 90)))
    let _ := (<- JR.call this "setAngle_1" #[(JR.toS (<- JR.call (<- JR.getField this "frameUtil") "adjustAngleToFrameAngle_1" #[l_newAngle]))])
    pure JV.null


def m_getAngle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "angle"))


def m_setAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asS (JR.arg jargs 0))
    JR.setField this "angle" (JR.asS l_angle)
    pure JV.null


def m_getAngleIncrementInfo_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "angleIncrementInfo")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "AngleInfo" "ANGLE")])
    let _ := (<- JR.call l_stringBuffer "appendshort_1" #[(<- JR.getField this "angle")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.call this "getAngleIncrementInfo_0" #[])])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleIncrementInfo : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "angleIncrementInfo" l_angleIncrementInfo
    pure this

initialize JR.registerClass {
    name := "AngleInfo",
    javaName := "org.allbinary.math.AngleInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("angleIncrementInfo", JV.null), ("angle", (JV.short 0)), ("frameUtil", JV.null)],
    statics := #[("ANGLE", (JV.str "Angle: "))],
    methods := #[
        ("getInstance_1", #["short"], true, m_getInstance_1), 
        ("adjustAngle_1", #["int"], false, m_adjustAngle_1), 
        ("getAngle_0", #[], false, m_getAngle_0), 
        ("setAngle_1", #["short"], false, m_setAngle_1), 
        ("getAngleIncrementInfo_0", #[], false, m_getAngleIncrementInfo_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["AngleIncrementInfo"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AngleInfo


