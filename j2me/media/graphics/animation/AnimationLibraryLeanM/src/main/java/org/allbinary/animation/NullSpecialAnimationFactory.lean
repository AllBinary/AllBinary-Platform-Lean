-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullSpecialAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullSpecialAnimationFactory" "NULL_SPECIAL_ANIMATION_FACTORY" (<- JR.new "NullSpecialAnimationFactory" #[])
    pure JV.null


def m_getFactoryInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullSpecialAnimationFactory" "NULL_SPECIAL_ANIMATION_FACTORY")


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.callStatic "SpecialAnimation" "getInstance_0" #[])


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.callStatic "SpecialAnimation" "getInstance_0" #[])


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullSpecialAnimationFactory",
    javaName := "org.allbinary.animation.NullSpecialAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_SPECIAL_ANIMATION_FACTORY", JV.null)],
    methods := #[
        ("getFactoryInstance_0", #[], true, m_getFactoryInstance_0), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullSpecialAnimationFactory


