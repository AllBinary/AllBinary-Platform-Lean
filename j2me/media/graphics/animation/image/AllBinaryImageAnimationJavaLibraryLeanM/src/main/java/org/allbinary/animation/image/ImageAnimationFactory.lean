-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactory_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    return (<- JR.new "ImageAnimationFactory" #[l_image, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_scaledImage : JV := (<- JR.call (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryImageScaleUtil") "createImage_5" #[(<- JR.callInherited this "ImageAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "scaleProperties") "scaleHeight")])
    let mut l_openGLUtil : JV := (<- JR.callStatic "OpenGLUtil" "getInstance_0" #[])
    l_scaledImage := (<- JR.call l_openGLUtil "addImage_1" #[l_scaledImage])
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        let _ := (<- JR.call (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryImageScaleUtil") "processAdjust_1" #[this])
        return (<- JR.new "AdjustedImageAnimation" #[l_scaledImage, (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "ImageAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "ImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "ImageAnimation" #[l_scaledImage, (<- JR.call (<- JR.getInherited this "ImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, l_dx, l_dy, l_animationBehaviorFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageAnimationFactory",
    javaName := "org.allbinary.animation.image.ImageAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createFactory_1", #["Image"], true, m_createFactory_1), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_6", #["Image", "int", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageAnimationFactory


