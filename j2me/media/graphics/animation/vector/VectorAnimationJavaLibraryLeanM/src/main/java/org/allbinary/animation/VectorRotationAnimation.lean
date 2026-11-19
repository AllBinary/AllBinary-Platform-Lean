-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorRotationAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setFrameByDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (<- JR.call (<- JR.getInherited this "VectorRotationAnimation" "directionUtil") "getFrameAngle_1" #[l_direction])
    let _ := (<- JR.call this "adjustFrameToAngle_1" #[l_angle])
    pure JV.null


def m_setFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "adjustFrameToAngle_1" #[l_angle])
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "VectorBaseRotationAnimation" this "setFrame_1" #[l_index])
    let _ := (<- JR.call (<- JR.getInherited this "VectorRotationAnimation" "angleInfo") "adjustAngle_1" #[(<- JR.callInherited this "VectorRotationAnimation" "getFrame_0" #[])])
    pure JV.null


def m_adjustFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newAngle : JV := (JR.asS (JR.arg jargs 0))
    let _ := (<- JR.call this "setFrame_1" #[(<- JR.call (<- JR.getInherited this "VectorRotationAnimation" "frameUtil") "getFrameForAngle_2" #[l_newAngle, (JR.toI (<- JR.call (<- JR.call (<- JR.getInherited this "VectorRotationAnimation" "angleInfo") "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[]))])])
    pure JV.null


def m_adjustFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newAngle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "adjustFrame_1" #[(<- JR.call l_newAngle "getValue_0" #[])])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "VectorBaseRotationAnimation" this #[(<- JR.callStatic "AngleInfo" "getInstance_1" #[(JR.toS ((<- JR.div (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")) (<- JR.alen l_currentPoints))))]), l_currentPoints, l_basicColor, l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "VectorRotationAnimation" "angleInfo") "adjustAngle_1" #[(<- JR.callInherited this "VectorRotationAnimation" "getFrame_0" #[])])
    pure this

initialize JR.registerClass {
    name := "VectorRotationAnimation",
    javaName := "org.allbinary.animation.VectorRotationAnimation",
    super := "VectorBaseRotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("setFrameByDirection_1", #["Direction"], false, m_setFrameByDirection_1), 
        ("setFrameToAngle_1", #["Angle"], false, m_setFrameToAngle_1), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("adjustFrame_1", #["short"], false, m_adjustFrame_1), 
        ("adjustFrameToAngle_1", #["Angle"], false, m_adjustFrameToAngle_1), 
        ("jinit_3", #["intArrArrArr", "BasicColor", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorRotationAnimation


