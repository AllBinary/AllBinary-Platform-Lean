-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorExplosionAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "vectorExplosionGenerator" (<- JR.callStatic "VectorExplosionGenerator" "getInstance_0" #[])
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_vectorRotationAnimationInterface : JV := l_animationInterface
    let mut l_frame : JV := (JR.asI (<- JR.call l_vectorRotationAnimationInterface "getFrame_0" #[]))
    let mut l_framePoints : JV := (<- JR.call l_vectorRotationAnimationInterface "getPoints_1" #[l_frame])
    let mut l_points : JV := (<- JR.call (<- JR.getField this "vectorExplosionGenerator") "getInstance_3" #[l_framePoints, (JV.int 6), (<- JR.getField (<- JR.getField this "vectorExplosionGenerator") "ROTATION")])
    return (<- JR.new "VectorRotationAnimation" #[l_points, (<- JR.call this "getBasicColorP_0" #[]), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "VectorExplosionAnimationFactory",
    javaName := "org.allbinary.animation.VectorExplosionAnimationFactory",
    super := "Object",
    interfaces := #["ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("vectorExplosionGenerator", JV.null), ("basicColor", JV.null), ("animationBehaviorFactory", JV.null)],
    statics := #[],
    methods := #[
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("jinit_2", #["BasicColor", "AnimationBehaviorFactory"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorExplosionAnimationFactory


