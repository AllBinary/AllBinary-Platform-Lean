-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TopToBottomImageAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_scaledImage : JV := (<- JR.call (<- JR.getInherited this "TopToBottomImageAnimationFactory" "animationFactoryImageScaleUtil") "createImage_5" #[(<- JR.callInherited this "TopToBottomImageAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "TopToBottomImageAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "TopToBottomImageAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "TopToBottomImageAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "TopToBottomImageAnimationFactory" "scaleProperties") "scaleHeight")])
    return (<- JR.new "TopToBottomImageAnimation" #[l_scaledImage, (<- JR.callInherited this "TopToBottomImageAnimationFactory" "getSequenceArray_0" #[]), (<- JR.call (<- JR.getInherited this "TopToBottomImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_sequenceArray : JV := (JR.arg jargs 1)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, l_sequenceArray, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), l_animationBehaviorFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TopToBottomImageAnimationFactory",
    javaName := "org.allbinary.animation.image.TopToBottomImageAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_3", #["Image", "intArr", "AnimationBehaviorFactory"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TopToBottomImageAnimationFactory


