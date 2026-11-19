-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullRotationAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_ROTATION_ANIMATION_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    JR.setField this "NULL_ANIMATION" (<- JR.new "NullRotationAnimation2" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullRotationAnimationFactory" "NULL_ROTATION_ANIMATION_FACTORY" (<- JR.new "NullRotationAnimationFactory" #[])
    pure JV.null


def m_getFactoryInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullRotationAnimationFactory" "NULL_ROTATION_ANIMATION_FACTORY")


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.getField this "NULL_ANIMATION")


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.getField this "NULL_ANIMATION")


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullRotationAnimationFactory",
    javaName := "org.allbinary.animation.NullRotationAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("NULL_ROTATION_ANIMATION_ARRAY", JV.null), ("NULL_ANIMATION", JV.null)],
    statics := #[("NULL_ROTATION_ANIMATION_FACTORY", JV.null)],
    methods := #[
        ("getFactoryInstance_0", #[], true, m_getFactoryInstance_0), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullRotationAnimationFactory


