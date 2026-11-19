-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorToImageArrayRotationAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "imageArray" (<- JR.getStatic "NullImage" "NULL_IMAGE_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleFactory : JV := (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    JR.setField this "angleIncrement" (JR.asI (<- JR.div (JR.toI (<- JR.getField l_angleFactory "TOTAL_ANGLE")) (<- JR.call (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "getGameControlFidelity_0" #[])))
    JR.setField this "imageArray" (<- JR.call (<- JR.callStatic "ImageToRotationImageArrayUtil" "getInstance_0" #[]) "generate_3" #[(<- JR.callInherited this "VectorToImageArrayRotationAnimationFactory" "getImage_0" #[]), (<- JR.call this "getAngleIncrement_0" #[]), (JR.toI (<- JR.getField l_angleFactory "TOTAL_ANGLE"))])
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "VectorToImageArrayRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "VectorToImageArrayRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        return (<- JR.new "AdjustedImageArrayRotationAnimation" #[(<- JR.getField this "imageArray"), (<- JR.callStatic "AngleInfo" "getInstance_1" #[(JR.toS (<- JR.call this "getAngleIncrement_0" #[]))]), (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")), (<- JR.getField (<- JR.getInherited this "VectorToImageArrayRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "VectorToImageArrayRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "VectorToImageArrayRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.callStatic "AdjustedImageArrayRotationAnimation" "createAnimation_4" #[(<- JR.getField this "imageArray"), (<- JR.callStatic "AngleInfo" "getInstance_1" #[(JR.toS (<- JR.getField this "angleIncrement"))]), (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")), (<- JR.call (<- JR.getInherited this "VectorToImageArrayRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def m_getAngleIncrement_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "angleIncrement"))


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vectorInfo : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[(<- JR.call (<- JR.callStatic "AnimationFrameToImageUtil" "getInstance_0" #[]) "getInstanceTranslate_3" #[(<- JR.call l_vectorInfo "getWidth_0" #[]), (<- JR.call l_vectorInfo "getHeight_0" #[]), (<- JR.callStatic "VectorAnimation" "createVectorAnimation_3" #[(<- JR.call l_vectorInfo "getPoints_0" #[]), l_basicColor, (<- JR.call l_animationBehaviorFactory "getOrCreateInstance_0" #[])])]), (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (JV.int 0), (JV.int 0), (JV.int 0), (JV.int 0), l_animationBehaviorFactory]
    let _ <- jfields this
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "VectorToImageArrayRotationAnimationFactory",
    javaName := "org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageArray", JV.null), ("angleIncrement", (JV.int 0))],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getAngleIncrement_0", #[], false, m_getAngleIncrement_0), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_3", #["VectorInfo", "BasicColor", "AnimationBehaviorFactory"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorToImageArrayRotationAnimationFactory


