-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FrameUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FrameUtil" "instance" (<- JR.new "FrameUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FrameUtil" "instance")


def m_getFrameForAngle_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asS (JR.arg jargs 0))
    let mut l_angleIncrement : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI (<- JR.div (<- JR.call this "adjustAngleToFrameAngle_1" #[(JR.toI l_angle)]) l_angleIncrement))


def m_getFrameAngle_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    let mut l_angleIncrement : JV := (JR.asI (JR.arg jargs 1))
    let mut l_frameAngle : JV := (JR.asI (<- JR.sub (<- JR.mul l_angleIncrement l_frame) (JV.int 90)))
    return (JR.asI (<- JR.call this "adjustAngleToFrameAngle_1" #[l_frameAngle]))


def m_adjustAngleToFrameAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentAngle : JV := (JR.asI (JR.arg jargs 0))
    let mut l_angleFactory : JV := (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    if JR.truth (<- JR.gt l_currentAngle (JV.int 359)) then
        l_currentAngle := (JR.asI ((<- JR.sub l_currentAngle (JR.toI (<- JR.getField l_angleFactory "TOTAL_ANGLE")))))
        repeat
            if !(JR.truth (<- JR.gt l_currentAngle (JV.int 359))) then break
            l_currentAngle := (JR.asI ((<- JR.sub l_currentAngle (JR.toI (<- JR.getField l_angleFactory "TOTAL_ANGLE")))))
            pure ()
        pure ()
    if JR.truth (<- JR.lt l_currentAngle (JV.int 0)) then
        l_currentAngle := (JR.asI ((<- JR.add l_currentAngle (JR.toI (<- JR.getField l_angleFactory "TOTAL_ANGLE")))))
        repeat
            if !(JR.truth (<- JR.lt l_currentAngle (JV.int 0))) then break
            l_currentAngle := (JR.asI ((<- JR.add l_currentAngle (JR.toI (<- JR.getField l_angleFactory "TOTAL_ANGLE")))))
            pure ()
        pure ()
    return (JR.asI l_currentAngle)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FrameUtil",
    javaName := "org.allbinary.math.FrameUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getFrameForAngle_2", #["short", "int"], false, m_getFrameForAngle_2), 
        ("getFrameAngle_2", #["int", "int"], false, m_getFrameAngle_2), 
        ("adjustAngleToFrameAngle_1", #["int"], false, m_adjustAngleToFrameAngle_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FrameUtil


