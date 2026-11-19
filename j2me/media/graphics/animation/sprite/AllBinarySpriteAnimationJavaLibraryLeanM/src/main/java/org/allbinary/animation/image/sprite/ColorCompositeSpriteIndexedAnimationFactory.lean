-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ColorCompositeSpriteIndexedAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "animationFactorySpriteScaleUtil" (<- JR.callStatic "AnimationFactorySpriteScaleUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_sprite : JV := (<- JR.call (<- JR.getField this "animationFactorySpriteScaleUtil") "createImage_5" #[(<- JR.callInherited this "ColorCompositeSpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "ColorCompositeSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "ColorCompositeSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "ColorCompositeSpriteIndexedAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "ColorCompositeSpriteIndexedAnimationFactory" "scaleProperties") "scaleHeight")])
    return (<- JR.new "SpriteIndexedAnimation" #[l_sprite, (<- JR.callInherited this "ColorCompositeSpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField this "basicColorArray"), (<- JR.call (<- JR.getInherited this "ColorCompositeSpriteIndexedAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.call this "getInstance_1" #[(JV.int 0)])


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_basicColorArray : JV := (JR.arg jargs 1)
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, (JV.int 0), (JV.int 0), l_animationBehaviorFactory]
    let _ <- jfields this
    JR.setField this "basicColorArray" l_basicColorArray
    pure this

initialize JR.registerClass {
    name := "ColorCompositeSpriteIndexedAnimationFactory",
    javaName := "org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #["ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("animationFactorySpriteScaleUtil", JV.null), ("basicColorArray", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("jinit_5", #["Image", "BasicColorArr", "int", "int", "AnimationBehaviorFactory"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ColorCompositeSpriteIndexedAnimationFactory


