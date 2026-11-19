-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SingletonAnimationInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.getField this "animationInterface")


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.getField this "animationInterface")


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "animationInterface" l_animationInterface
    pure this

initialize JR.registerClass {
    name := "SingletonAnimationInterfaceFactory",
    javaName := "org.allbinary.animation.SingletonAnimationInterfaceFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("animationInterface", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_1", #["Animation"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SingletonAnimationInterfaceFactory


