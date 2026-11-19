-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullRotationAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createTotalAngle_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleInfo : JV := (JR.arg jargs 0)
    let mut l_totalAngle : JV := (JR.asS (JR.arg jargs 1))
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    return (<- JR.new "NullRotationAnimation" #[l_angleInfo, (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.div l_totalAngle (<- JR.call (<- JR.call l_angleInfo "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[]))]), l_animationBehavior])


def m_createQuarter_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationBehavior : JV := (JR.arg jargs 0)
    return (<- JR.new "NullRotationAnimation" #[(<- JR.callStatic "AngleInfo" "getInstance_1" #[(<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "QUARTER_TOTAL_ANGLE")]), (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(JV.int 4)]), l_animationBehavior])


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleInfo : JV := (JR.arg jargs 0)
    let mut l_circularIndexUtil : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "RotationAnimation" this #[l_angleInfo, l_circularIndexUtil, l_animationBehavior]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullRotationAnimation",
    javaName := "org.allbinary.animation.NullRotationAnimation",
    super := "RotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createTotalAngle_3", #["AngleInfo", "short", "AnimationBehavior"], true, m_createTotalAngle_3), 
        ("createQuarter_1", #["AnimationBehavior"], true, m_createQuarter_1), 
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("jinit_3", #["AngleInfo", "CircularIndexUtil", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullRotationAnimation


