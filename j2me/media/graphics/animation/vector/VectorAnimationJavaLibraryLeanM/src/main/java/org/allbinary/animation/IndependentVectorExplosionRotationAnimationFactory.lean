-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IndependentVectorExplosionRotationAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "framePoints" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY_ARRAY")
    JR.setField this "vectorExplosionGenerator" (<- JR.callStatic "VectorExplosionGenerator" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "framePoints" (<- JR.call (<- JR.callStatic "VectorRotationGenerator" "getInstance_0" #[]) "getInstance_1" #[(<- JR.getField this "vectorInfo")])
    pure JV.null


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_frame : JV := (JR.asI (JV.int 0))
    if JR.truth (<- JR.ne l_animationInterface JV.null) then
        let mut l_rotationAnimationInterface : JV := l_animationInterface
        l_frame := (JR.asI (<- JR.call l_rotationAnimationInterface "getFrame_0" #[]))
        pure ()
    let mut l_points : JV := (<- JR.call (<- JR.getField this "vectorExplosionGenerator") "getInstance_3" #[(<- JR.aget (<- JR.getField this "framePoints") l_frame), (JV.int 6), (<- JR.getField (<- JR.getField this "vectorExplosionGenerator") "ROTATION")])
    return (<- JR.call (<- JR.getField this "vectorAnimationFactoryInterface") "getInstance_2" #[l_points, (<- JR.getField this "basicColor")])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vectorInfo : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_vectorAnimationFactoryInterface : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "vectorInfo" l_vectorInfo
    JR.setField this "basicColor" l_basicColor
    JR.setField this "vectorAnimationFactoryInterface" l_vectorAnimationFactoryInterface
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "IndependentVectorExplosionRotationAnimationFactory",
    javaName := "org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory",
    super := "Object",
    interfaces := #["ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("framePoints", JV.null), ("vectorInfo", JV.null), ("basicColor", JV.null), ("vectorAnimationFactoryInterface", JV.null), ("vectorExplosionGenerator", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("jinit_3", #["VectorInfo", "BasicColor", "VectorAnimationFactoryInterface"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IndependentVectorExplosionRotationAnimationFactory


