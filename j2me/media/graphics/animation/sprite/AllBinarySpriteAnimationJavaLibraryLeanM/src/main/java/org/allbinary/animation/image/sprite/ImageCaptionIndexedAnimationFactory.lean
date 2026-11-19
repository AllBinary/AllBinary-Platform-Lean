-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageCaptionIndexedAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "animationFactoryImageScaleUtil" (<- JR.callStatic "AnimationFactoryImageScaleUtil" "getInstance_0" #[])
    JR.setField this "animationFactorySpriteScaleUtil" (<- JR.callStatic "AnimationFactorySpriteScaleUtil" "getInstance_0" #[])
    JR.setField this "scaleProperties" (<- JR.getStatic "ScaleProperties" "instance")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_scaledImage : JV := (<- JR.call (<- JR.getField this "animationFactoryImageScaleUtil") "createImage_5" #[(<- JR.getField this "captionImage"), (<- JR.call (<- JR.getField this "captionImage") "getWidth_0" #[]), (<- JR.call (<- JR.getField this "captionImage") "getHeight_0" #[]), (<- JR.getField (<- JR.getField this "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight")])
    let mut l_animationInterface : JV := (<- JR.new "ImageAnimation" #[l_scaledImage, (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    let mut l_sprite : JV := (<- JR.call (<- JR.getField this "animationFactorySpriteScaleUtil") "createImage_5" #[(<- JR.getField this "spriteMovieImage"), (<- JR.getField this "frameWidth"), (<- JR.getField this "frameHeight"), (<- JR.getField (<- JR.getField this "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight")])
    let mut l_movieIndexedAnimationInterface : JV := (<- JR.new "SpriteIndexedAnimation" #[l_sprite, (<- JR.getField this "spriteMovieImage"), (<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ZERO_ARRAY"), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    let mut l_player : JV := (<- JR.call (<- JR.getField this "soundInterface") "getPlayerP_0" #[])
    if JR.truth (<- JR.eq l_player JV.null) then
        throw (<- JR.new "Exception" #[(JV.str "Sound Was not Initialized")])
    return (<- JR.new "CaptionIndexedAnimation" #[l_animationInterface, l_movieIndexedAnimationInterface, l_player, (<- JR.getField this "captionDx"), (<- JR.getField this "captionDy"), (<- JR.getField this "dx"), (<- JR.getField this "dy"), (<- JR.getField this "time"), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    JR.setField this "scaleProperties" l_scaleProperties
    pure JV.null


def jinit_11 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_captionImage : JV := (JR.arg jargs 0)
    let mut l_spriteMovieImage : JV := (JR.arg jargs 1)
    let mut l_soundInterface : JV := (JR.arg jargs 2)
    let mut l_frameWidth : JV := (JR.asI (JR.arg jargs 3))
    let mut l_frameHeight : JV := (JR.asI (JR.arg jargs 4))
    let mut l_captionDx : JV := (JR.asI (JR.arg jargs 5))
    let mut l_captionDy : JV := (JR.asI (JR.arg jargs 6))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 7))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 8))
    let mut l_time : JV := (JR.asI (JR.arg jargs 9))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 10)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    if JR.truth (<- JR.eq l_animationBehaviorFactory (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])) then
        let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(JV.str "Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this])
        pure ()
    JR.setField this "captionImage" l_captionImage
    JR.setField this "spriteMovieImage" l_spriteMovieImage
    JR.setField this "frameWidth" (JR.asI l_frameWidth)
    JR.setField this "frameHeight" (JR.asI l_frameHeight)
    JR.setField this "captionDx" (JR.asI l_captionDx)
    JR.setField this "captionDy" (JR.asI l_captionDy)
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    JR.setField this "time" (JR.asI l_time)
    JR.setField this "soundInterface" l_soundInterface
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    pure this

initialize JR.registerClass {
    name := "ImageCaptionIndexedAnimationFactory",
    javaName := "org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("animationFactoryImageScaleUtil", JV.null), ("animationFactorySpriteScaleUtil", JV.null), ("captionImage", JV.null), ("spriteMovieImage", JV.null), ("frameWidth", (JV.int 0)), ("frameHeight", (JV.int 0)), ("captionDx", (JV.int 0)), ("captionDy", (JV.int 0)), ("dx", (JV.int 0)), ("dy", (JV.int 0)), ("time", (JV.int 0)), ("soundInterface", JV.null), ("scaleProperties", JV.null), ("animationBehaviorFactory", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_11", #["Image", "Image", "Sound", "int", "int", "int", "int", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_11)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageCaptionIndexedAnimationFactory


