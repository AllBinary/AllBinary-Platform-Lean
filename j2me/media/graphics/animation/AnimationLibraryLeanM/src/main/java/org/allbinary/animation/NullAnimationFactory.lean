-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_ANIMATION" (<- JR.newWith "NullAnimationFactory_jAnon1" this #[] #[])
    JR.setField this "EMPTY_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullAnimationFactory" "NULL_NOT_FOR_USE_ANIMATION_FACTORY" (<- JR.new "NullAnimationFactory" #[])
    JR.setStatic "NullAnimationFactory" "NULL_ANIMATION_FACTORY" (<- JR.new "NullAnimationFactory" #[])
    pure JV.null


def m_getFactoryInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullAnimationFactory" "NULL_ANIMATION_FACTORY")


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
    name := "NullAnimationFactory",
    javaName := "org.allbinary.animation.NullAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("NULL_ANIMATION", JV.null), ("EMPTY_ARRAY", JV.null)],
    statics := #[("NULL_NOT_FOR_USE_ANIMATION_FACTORY", JV.null), ("NULL_ANIMATION_FACTORY", JV.null)],
    methods := #[
        ("getFactoryInstance_0", #[], true, m_getFactoryInstance_0), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullAnimationFactory


namespace jclass_NullAnimationFactory_jAnon1

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Animation" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullAnimationFactory_jAnon1",
    javaName := "org.allbinary.animation.NullAnimationFactory$1",
    super := "Animation",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null)],
    statics := #[],
    methods := #[
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullAnimationFactory_jAnon1


