-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnimationFactoryImageScaleUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "imageScaleUtil" (<- JR.callStatic "ImageJ2MEScaleUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AnimationFactoryImageScaleUtil" "instance" (<- JR.new "AnimationFactoryImageScaleUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AnimationFactoryImageScaleUtil" "instance")


def m_createImage_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_scaleWidth : JV := (JR.asI (JR.arg jargs 3))
    let mut l_scaleHeight : JV := (JR.asI (JR.arg jargs 4))
    let mut l_scaledImage : JV := JV.null
    if JR.truth (<- JR.cand (<- JR.ne l_scaleWidth (JV.int 0)) (do pure (<- JR.ne l_scaleHeight (JV.int 0)))) then
        let mut l_scaleX : JV := (JR.asF (<- JR.div ((JR.toF l_scaleWidth)) ((JR.toF l_width))))
        let mut l_scaleY : JV := (JR.asF (<- JR.div ((JR.toF l_scaleHeight)) ((JR.toF l_height))))
        if JR.truth (<- JR.cor ((<- JR.cand (<- JR.eq l_scaleX (JV.float 1.0)) (do pure (<- JR.eq l_scaleY (JV.float 1.0))))) (do pure ((<- JR.cor (<- JR.eq l_scaleX (JV.float 0.0)) (do pure (<- JR.eq l_scaleY (JV.float 0.0))))))) then
            l_scaledImage := l_image
            pure ()
        else
            let mut l_scaledWidth : JV := (JR.asI (JR.toI ((<- JR.mul l_scaleX (JR.toF l_width)))))
            let mut l_scaledHeight : JV := (JR.asI (JR.toI ((<- JR.mul l_scaleY (JR.toF l_height)))))
            l_scaledImage := (<- JR.call (<- JR.getField this "imageScaleUtil") "scale_3" #[l_image, l_scaledWidth, l_scaledHeight])
            pure ()
        pure ()
    else
        l_scaledImage := l_image
        pure ()
    return l_scaledImage


def m_processAdjust_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_baseImageAnimationFactory : JV := (JR.arg jargs 0)
    let mut l_scaleProperties : JV := (<- JR.call l_baseImageAnimationFactory "getScalePropertiesP_0" #[])
    if JR.truth (<- JR.cand (<- JR.ne (<- JR.getField l_scaleProperties "scaleWidth") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField l_scaleProperties "scaleHeight") (JV.int 0)))) then
        let mut l_animationFactoryInitializationVisitor : JV := (<- JR.call l_baseImageAnimationFactory "getAnimationFactoryInitializationVisitorP_0" #[])
        let mut l_scaleX : JV := (JR.asF (<- JR.div ((JR.toF (<- JR.getField l_scaleProperties "scaleWidth"))) ((JR.toF (<- JR.getField l_animationFactoryInitializationVisitor "width")))))
        let mut l_scaleY : JV := (JR.asF (<- JR.div ((JR.toF (<- JR.getField l_scaleProperties "scaleHeight"))) ((JR.toF (<- JR.getField l_animationFactoryInitializationVisitor "height")))))
        if JR.truth (<- JR.cor ((<- JR.cand (<- JR.eq l_scaleX (JV.float 1.0)) (do pure (<- JR.eq l_scaleY (JV.float 1.0))))) (do pure ((<- JR.cor (<- JR.eq l_scaleX (JV.float 0.0)) (do pure (<- JR.eq l_scaleY (JV.float 0.0))))))) then
            pure ()
        else
            JR.setField l_animationFactoryInitializationVisitor "dx" (JR.asI (JR.toI ((<- JR.mul (JR.toF (<- JR.getField l_animationFactoryInitializationVisitor "originalDx")) l_scaleX))))
            JR.setField l_animationFactoryInitializationVisitor "dy" (JR.asI (JR.toI ((<- JR.mul (JR.toF (<- JR.getField l_animationFactoryInitializationVisitor "originalDy")) l_scaleY))))
            pure ()
        pure ()
    else
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AnimationFactoryImageScaleUtil",
    javaName := "org.allbinary.image.AnimationFactoryImageScaleUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageScaleUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createImage_5", #["Image", "int", "int", "int", "int"], false, m_createImage_5), 
        ("processAdjust_1", #["BaseImageAnimationFactory"], false, m_processAdjust_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnimationFactoryImageScaleUtil


