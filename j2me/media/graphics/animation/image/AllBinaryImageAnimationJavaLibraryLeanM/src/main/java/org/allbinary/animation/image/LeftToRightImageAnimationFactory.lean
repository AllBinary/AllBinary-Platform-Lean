-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LeftToRightImageAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_scaledImage : JV := (<- JR.call (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryImageScaleUtil") "createImage_5" #[(<- JR.callInherited this "LeftToRightImageAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "scaleProperties") "scaleHeight")])
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        let _ := (<- JR.call (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryImageScaleUtil") "processAdjust_1" #[this])
        return (<- JR.new "AdjustedLeftToRightImageAnimation" #[l_scaledImage, (<- JR.callInherited this "LeftToRightImageAnimationFactory" "getSequenceArray_0" #[]), (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "LeftToRightImageAnimation" #[l_scaledImage, (<- JR.callInherited this "LeftToRightImageAnimationFactory" "getSequenceArray_0" #[]), (<- JR.call (<- JR.getInherited this "LeftToRightImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_sequenceArray : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, l_sequenceArray, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), l_dx, l_dy, l_animationBehaviorFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LeftToRightImageAnimationFactory",
    javaName := "org.allbinary.animation.image.LeftToRightImageAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_5", #["Image", "intArr", "int", "int", "AnimationBehaviorFactory"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LeftToRightImageAnimationFactory


