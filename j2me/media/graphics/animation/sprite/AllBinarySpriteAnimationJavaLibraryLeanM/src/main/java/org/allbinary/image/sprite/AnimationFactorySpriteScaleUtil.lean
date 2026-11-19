-- Generated Code Do Not Modify
-- package org.allbinary.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnimationFactorySpriteScaleUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "imageCache" (<- JR.callStatic "ImageCacheFactory" "getInstance_0" #[])
    JR.setField this "imageScaleUtil" (<- JR.callStatic "ImageScaleUtil" "getInstance_0" #[])
    JR.setField this "openGLUtil" (<- JR.callStatic "OpenGLUtil" "getInstance_0" #[])
    JR.setField this "j2seMath" (<- JR.callStatic "J2SEMath" "getInstance_0" #[])
    JR.setField this "openGLESImageExclusionUtil" (<- JR.callStatic "OpenGLESImageExclusionUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AnimationFactorySpriteScaleUtil" "instance" (<- JR.new "AnimationFactorySpriteScaleUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AnimationFactorySpriteScaleUtil" "instance")


def m_createImage_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_scaleWidth : JV := (JR.asI (JR.arg jargs 3))
    let mut l_scaleHeight : JV := (JR.asI (JR.arg jargs 4))
    let mut l_spriteFactory : JV := (<- JR.callStatic "SpriteFactory" "getInstance_0" #[])
    let mut l_sprite : JV := JV.null
    let mut l_scaledImage : JV := JV.null
    if JR.truth (<- JR.cand (<- JR.ne l_scaleWidth (JV.int 0)) (do pure (<- JR.ne l_scaleHeight (JV.int 0)))) then
        let mut l_scaleX : JV := (JR.asF (<- JR.div ((JR.toF l_scaleWidth)) ((JR.toF l_width))))
        let mut l_scaleY : JV := (JR.asF (<- JR.div ((JR.toF l_scaleHeight)) ((JR.toF l_height))))
        if JR.truth (<- JR.cor ((<- JR.cand (<- JR.eq l_scaleX (JV.float 1.0)) (do pure (<- JR.eq l_scaleY (JV.float 1.0))))) (do pure ((<- JR.cor (<- JR.eq l_scaleX (JV.float 0.0)) (do pure (<- JR.eq l_scaleY (JV.float 0.0))))))) then
            l_scaledImage := (<- JR.call (<- JR.getField this "openGLUtil") "addImage_1" #[l_image])
            l_sprite := (<- JR.call l_spriteFactory "createSprite_3" #[l_scaledImage, l_width, l_height])
            pure ()
        else
            if JR.truth (<- JR.call (<- JR.getField this "openGLESImageExclusionUtil") "isCustomScaling_1" #[l_image]) then
                let mut l_width2 : JV := (JR.asI (<- JR.call (<- JR.getField this "j2seMath") "round_1" #[(<- JR.sub (JR.toF (l_scaleWidth)) (JV.float 0.5))]))
                let mut l_height2 : JV := (JR.asI (<- JR.call (<- JR.getField this "j2seMath") "round_1" #[(<- JR.sub (JR.toF (l_scaleHeight)) (JV.float 0.5))]))
                let mut l_multiplesOf16Width : JV := (JR.asI (<- JR.div l_width2 (JV.int 16)))
                let mut l_by16Width : JV := (JR.asI (<- JR.mul l_multiplesOf16Width (JV.int 16)))
                l_scaleX := (JR.asF (<- JR.div ((JR.toF l_by16Width)) (JR.toF l_width)))
                let mut l_multiplesOf16Height : JV := (JR.asI (<- JR.div l_height2 (JV.int 16)))
                let mut l_by16Height : JV := (JR.asI (<- JR.mul l_multiplesOf16Height (JV.int 16)))
                l_scaleY := (JR.asF (<- JR.div ((JR.toF l_by16Height)) (JR.toF l_height)))
                if JR.truth (<- JR.lt l_scaleWidth l_width) then
                    l_scaleX := (JR.asF (<- JR.mul l_scaleX (JV.float 2.35)))
                    pure ()
                if JR.truth (<- JR.lt l_scaleHeight l_height) then
                    l_scaleY := (JR.asF (<- JR.mul l_scaleY (JV.float 2.35)))
                    pure ()
                pure ()
            l_scaledImage := (<- JR.call (<- JR.getField this "imageScaleUtil") "createImage2_7" #[(<- JR.getField this "imageCache"), l_image, l_scaleX, (JV.float 1.0), l_scaleY, (JV.float 1.0), (JV.bool true)])
            l_sprite := (<- JR.call l_spriteFactory "createSprite_3" #[l_scaledImage, (JR.toI ((<- JR.mul (JR.toF l_width) l_scaleX))), (JR.toI ((<- JR.mul (JR.toF l_height) l_scaleY)))])
            pure ()
        pure ()
    else
        l_scaledImage := (<- JR.call (<- JR.getField this "openGLUtil") "addImage_1" #[l_image])
        l_sprite := (<- JR.call l_spriteFactory "createSprite_3" #[l_scaledImage, l_width, l_height])
        pure ()
    return l_sprite


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AnimationFactorySpriteScaleUtil",
    javaName := "org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageCache", JV.null), ("imageScaleUtil", JV.null), ("openGLUtil", JV.null), ("j2seMath", JV.null), ("openGLESImageExclusionUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createImage_5", #["Image", "int", "int", "int", "int"], false, m_createImage_5), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnimationFactorySpriteScaleUtil


