-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BottomToTopImageAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_scaledImage : JV := (<- JR.call (<- JR.getInherited this "BottomToTopImageAnimationFactory" "animationFactoryImageScaleUtil") "createImage_5" #[(<- JR.callInherited this "BottomToTopImageAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "BottomToTopImageAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "BottomToTopImageAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "BottomToTopImageAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "BottomToTopImageAnimationFactory" "scaleProperties") "scaleHeight")])
    return (<- JR.new "BottomToTopImageAnimation" #[l_scaledImage, (<- JR.call (<- JR.getInherited this "BottomToTopImageAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), l_animationBehaviorFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BottomToTopImageAnimationFactory",
    javaName := "org.allbinary.animation.image.BottomToTopImageAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_2", #["Image", "AnimationBehaviorFactory"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BottomToTopImageAnimationFactory


