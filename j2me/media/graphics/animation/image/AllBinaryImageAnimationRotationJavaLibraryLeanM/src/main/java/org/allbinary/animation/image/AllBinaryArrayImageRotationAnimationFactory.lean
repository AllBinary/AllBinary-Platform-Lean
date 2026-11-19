-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryArrayImageRotationAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "imageArray" (<- JR.getStatic "NullImage" "NULL_IMAGE_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactory_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_arrayImageRotationAnimationFactory : JV := (<- JR.new "AllBinaryArrayImageRotationAnimationFactory" #[l_image, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (<- JR.div (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")) (<- JR.call (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "getGameControlFidelity_0" #[])), (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])
    let _ := (<- JR.call l_arrayImageRotationAnimationFactory "initDXY_2" #[l_dx, l_dy])
    return l_arrayImageRotationAnimationFactory


def m_createFactoryA_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_angleIncrement : JV := (JR.asI (JR.arg jargs 3))
    let mut l_arrayImageRotationAnimationFactory : JV := (<- JR.new "AllBinaryArrayImageRotationAnimationFactory" #[l_image, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), l_angleIncrement, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])
    let _ := (<- JR.call l_arrayImageRotationAnimationFactory "initDXY_2" #[l_dx, l_dy])
    return l_arrayImageRotationAnimationFactory


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setImageArray_1" #[(<- JR.call (<- JR.callStatic "ImageToRotationImageArrayUtil" "getInstance_0" #[]) "generate_3" #[(<- JR.callInherited this "AllBinaryArrayImageRotationAnimationFactory" "getImage_0" #[]), (<- JR.call this "getAngleIncrement_0" #[]), (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE"))])])
    pure JV.null


def m_initDXY_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    JR.setField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.asI l_dx)
    JR.setField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy" (JR.asI l_dy)
    JR.setField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "originalDx" (JR.asI l_dx)
    JR.setField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "originalDy" (JR.asI l_dy)
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_scaledImageArray : JV := (<- JR.newArray "L" 1 #[(<- JR.alen (<- JR.getField this "imageArray"))])
    let mut l_size : JV := (JR.asI (<- JR.alen l_scaledImageArray))
    let mut l_image : JV := (<- JR.callInherited this "AllBinaryArrayImageRotationAnimationFactory" "getImage_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset l_scaledImageArray l_index (<- JR.call (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryImageScaleUtil") "createImage_5" #[l_image, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (<- JR.getField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "scaleProperties") "scaleHeight")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryImageScaleUtil") "processAdjust_1" #[this])
        return (<- JR.new "AdjustedImageArrayRotationAnimation" #[l_scaledImageArray, (<- JR.callStatic "AngleInfo" "getInstance_1" #[(JR.toS (<- JR.call this "getAngleIncrement_0" #[]))]), (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")), (<- JR.getField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "ImageArrayRotationAnimation" #[l_scaledImageArray, (<- JR.callStatic "AngleInfo" "getInstance_1" #[(JR.toS (<- JR.call this "getAngleIncrement_0" #[]))]), (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")), (<- JR.call (<- JR.getInherited this "AllBinaryArrayImageRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def m_setImageArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    JR.setField this "imageArray" l_imageArray
    pure JV.null


def m_getAngleIncrement_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "angleIncrement"))


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_angleIncrement : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, (JV.int 0), (JV.int 0), l_animationBehaviorFactory]
    let _ <- jfields this
    JR.setField this "angleIncrement" (JR.asI l_angleIncrement)
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "AllBinaryArrayImageRotationAnimationFactory",
    javaName := "org.allbinary.animation.image.AllBinaryArrayImageRotationAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageArray", JV.null), ("angleIncrement", (JV.int 0))],
    statics := #[],
    methods := #[
        ("createFactory_3", #["Image", "int", "int"], true, m_createFactory_3), 
        ("createFactoryA_4", #["Image", "int", "int", "int"], true, m_createFactoryA_4), 
        ("init_0", #[], false, m_init_0), 
        ("initDXY_2", #["int", "int"], false, m_initDXY_2), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setImageArray_1", #["ImageArr"], false, m_setImageArray_1), 
        ("getAngleIncrement_0", #[], false, m_getAngleIncrement_0), 
        ("jinit_5", #["Image", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryArrayImageRotationAnimationFactory


