-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorAnimationInterfaceFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.new "VectorAnimation" #[(<- JR.getField this "currentPoints"), (<- JR.call this "getBasicColorP_0" #[]), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "currentPoints" l_currentPoints
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    pure this

initialize JR.registerClass {
    name := "VectorAnimationInterfaceFactory",
    javaName := "org.allbinary.animation.VectorAnimationInterfaceFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("currentPoints", JV.null), ("basicColor", JV.null), ("animationBehaviorFactory", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_3", #["intArrArrArr", "BasicColor", "AnimationBehaviorFactory"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorAnimationInterfaceFactory


