-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RightToLeftImageAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_scaledImage : JV := (<- JR.call (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryImageScaleUtil") "createImage_5" #[(<- JR.callInherited this "RightToLeftImageAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "scaleProperties") "scaleHeight")])
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        let _ := (<- JR.call (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryImageScaleUtil") "processAdjust_1" #[this])
        return (<- JR.new "AdjustedRightToLeftImageAnimation" #[l_scaledImage, (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "RightToLeftImageAnimation" #[l_scaledImage, (<- JR.call (<- JR.getInherited this "RightToLeftImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), l_dx, l_dy, l_animationBehaviorFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RightToLeftImageAnimationFactory",
    javaName := "org.allbinary.animation.image.RightToLeftImageAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_4", #["Image", "int", "int", "AnimationBehaviorFactory"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RightToLeftImageAnimationFactory


