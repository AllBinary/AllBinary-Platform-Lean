-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageRotationAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "ImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "ImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        let _ := (<- JR.call (<- JR.getInherited this "ImageRotationAnimationFactory" "animationFactoryImageScaleUtil") "processAdjust_1" #[this])
        return (<- JR.new "AdjustedImageBaseRotationAnimation" #[(<- JR.callInherited this "ImageRotationAnimationFactory" "getImage_0" #[]), (<- JR.callStatic "AngleInfo" "getInstance_1" #[(<- JR.getField this "angleIncrement")]), (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE"), (<- JR.getField (<- JR.getInherited this "ImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "ImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "ImageRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "ImageBaseRotationAnimation" #[(<- JR.callInherited this "ImageRotationAnimationFactory" "getImage_0" #[]), (<- JR.callStatic "AngleInfo" "getInstance_1" #[(<- JR.getField this "angleIncrement")]), (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE"), (<- JR.call (<- JR.getInherited this "ImageRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def m_getAngleIncrementP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "angleIncrement"))


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_angleIncrement : JV := (JR.asS (JR.arg jargs 5))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, (JV.int 0), (JV.int 0), l_animationBehaviorFactory]
    let _ <- jfields this
    JR.setField this "angleIncrement" (JR.asS l_angleIncrement)
    JR.setField (<- JR.getInherited this "ImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.asI l_dx)
    JR.setField (<- JR.getInherited this "ImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "ImageRotationAnimationFactory",
    javaName := "org.allbinary.animation.image.ImageRotationAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("angleIncrement", (JV.short 0))],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getAngleIncrementP_0", #[], false, m_getAngleIncrementP_0), 
        ("jinit_7", #["Image", "int", "int", "int", "int", "short", "AnimationBehaviorFactory"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageRotationAnimationFactory


