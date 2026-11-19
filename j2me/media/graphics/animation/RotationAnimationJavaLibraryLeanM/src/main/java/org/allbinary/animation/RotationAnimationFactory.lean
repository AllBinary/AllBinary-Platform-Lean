-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RotationAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactory_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalAngle : JV := (JR.asS (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE"))
    return (<- JR.new "RotationAnimationFactory" #[l_totalAngle, (JR.toS ((<- JR.div (JR.toI l_totalAngle) (<- JR.call (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "getGameControlFidelity_0" #[]))))])


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.callStatic "NullRotationAnimation" "createTotalAngle_3" #[(<- JR.callStatic "AngleInfo" "getInstance_1" #[(<- JR.getField this "angleIncrement")]), (<- JR.getField this "totalAngle"), (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.callStatic "NullRotationAnimation" "createTotalAngle_3" #[(<- JR.callStatic "AngleInfo" "getInstance_1" #[(<- JR.getField this "angleIncrement")]), (<- JR.getField this "totalAngle"), (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalAngle : JV := (JR.asS (JR.arg jargs 0))
    let mut l_angleIncrement : JV := (JR.asS (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "totalAngle" (JR.asS l_totalAngle)
    JR.setField this "angleIncrement" (JR.asS l_angleIncrement)
    pure this

initialize JR.registerClass {
    name := "RotationAnimationFactory",
    javaName := "org.allbinary.animation.RotationAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("totalAngle", (JV.short 0)), ("angleIncrement", (JV.short 0))],
    statics := #[],
    methods := #[
        ("createFactory_0", #[], true, m_createFactory_0), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_2", #["short", "short"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RotationAnimationFactory


