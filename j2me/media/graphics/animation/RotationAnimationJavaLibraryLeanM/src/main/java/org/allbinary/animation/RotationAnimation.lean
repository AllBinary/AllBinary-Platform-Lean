-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RotationAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "frameUtil" (<- JR.callStatic "FrameUtil" "getInstance_0" #[])
    JR.setField this "directionUtil" (<- JR.callStatic "DirectionUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextRotationX_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_previousRotationX_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_nextRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "angleInfo") "adjustAngle_1" #[(<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])])
    pure JV.null


def m_previousRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "angleInfo") "adjustAngle_1" #[(<- JR.call (<- JR.getField this "circularIndexUtil") "previous_0" #[])])
    pure JV.null


def m_nextRotationZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_previousRotationZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "setIndex_1" #[l_index])
    let mut l_newFrame : JV := (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "angleInfo") "adjustAngle_1" #[l_newFrame])
    pure JV.null


def m_setFrameByDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (<- JR.call (<- JR.getField this "directionUtil") "getFrameAngle_1" #[l_direction])
    let _ := (<- JR.call this "adjustFrameToAngle_1" #[l_angle])
    pure JV.null


def m_setFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "adjustFrameToAngle_1" #[l_angle])
    pure JV.null


def m_adjustFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "adjustFrame_1" #[(<- JR.call l_angle "getValue_0" #[])])
    pure JV.null


def m_adjustFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asS (JR.arg jargs 0))
    let _ := (<- JR.call this "setFrame_1" #[(<- JR.call (<- JR.getField this "frameUtil") "getFrameForAngle_2" #[l_angle, (JR.toI (<- JR.call (<- JR.call (<- JR.getField this "angleInfo") "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[]))])])
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getSize_0" #[]))


def m_getAngleInfoP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "angleInfo")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.callSuper "IndexedAnimation" this "toString_0" #[])]) "append_1" #[(JV.str "circularIndexUtil: ")]) "append_1" #[(<- JR.call (<- JR.getField this "circularIndexUtil") "toString_0" #[])]) "append_1" #[(JV.str "angleInfo: ")]) "append_1" #[(<- JR.call (<- JR.getField this "angleInfo") "toString_0" #[])]) "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleInfo : JV := (JR.arg jargs 0)
    let mut l_circularIndexUtil : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "angleInfo" l_angleInfo
    JR.setField this "circularIndexUtil" l_circularIndexUtil
    pure this

initialize JR.registerClass {
    name := "RotationAnimation",
    javaName := "org.allbinary.animation.RotationAnimation",
    super := "IndexedAnimation",
    interfaces := #["RotationAnimationInterface"],
    isInterface := false,
    fields := #[("frameUtil", JV.null), ("directionUtil", JV.null), ("angleInfo", JV.null), ("circularIndexUtil", JV.null)],
    statics := #[],
    methods := #[
        ("nextRotationX_0", #[], false, m_nextRotationX_0), 
        ("previousRotationX_0", #[], false, m_previousRotationX_0), 
        ("nextRotation_0", #[], false, m_nextRotation_0), 
        ("previousRotation_0", #[], false, m_previousRotation_0), 
        ("nextRotationZ_0", #[], false, m_nextRotationZ_0), 
        ("previousRotationZ_0", #[], false, m_previousRotationZ_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("setFrameByDirection_1", #["Direction"], false, m_setFrameByDirection_1), 
        ("setFrameToAngle_1", #["Angle"], false, m_setFrameToAngle_1), 
        ("adjustFrameToAngle_1", #["Angle"], false, m_adjustFrameToAngle_1), 
        ("adjustFrame_1", #["short"], false, m_adjustFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("getAngleInfoP_0", #[], false, m_getAngleInfoP_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_3", #["AngleInfo", "CircularIndexUtil", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RotationAnimation


