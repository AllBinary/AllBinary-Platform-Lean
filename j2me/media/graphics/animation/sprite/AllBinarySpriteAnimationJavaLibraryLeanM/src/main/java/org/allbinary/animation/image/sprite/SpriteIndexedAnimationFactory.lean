-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpriteIndexedAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "animationFactorySpriteScaleUtil" (<- JR.callStatic "AnimationFactorySpriteScaleUtil" "getInstance_0" #[])
    JR.setField this "basicColorArray" (<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ZERO_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createCWHDXY_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_basicColorArray : JV := (JR.arg jargs 1)
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 4))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 5))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 6)
    return (<- JR.new "SpriteIndexedAnimationFactory" #[l_image, l_basicColorArray, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, l_dx, l_dy, l_animationBehaviorFactory])


def m_createCWH_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_basicColorArray : JV := (JR.arg jargs 1)
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 4)
    let mut l_spriteIndexedAnimationFactory : JV := (<- JR.new "SpriteIndexedAnimationFactory" #[l_image, l_basicColorArray, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, (JV.int 0), (JV.int 0), l_animationBehaviorFactory])
    let _ := (<- JR.call l_spriteIndexedAnimationFactory "initHWH_0" #[])
    return l_spriteIndexedAnimationFactory


def m_createWH_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    return (<- JR.new "SpriteIndexedAnimationFactory" #[l_image, (<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ZERO_ARRAY"), (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, (JV.int 0), (JV.int 0), l_animationBehaviorFactory])


def m_initHWH_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.asI (JR.neg ((<- JR.shr (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "width") (JV.int 2)))))
    JR.setField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dy" (JR.asI (JR.neg ((<- JR.shr (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "height") (JV.int 2)))))
    if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
        JR.setField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.castLike (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx") (<- JR.add (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 3)))
        pure ()
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_sprite : JV := (<- JR.call (<- JR.getField this "animationFactorySpriteScaleUtil") "createImage_5" #[(<- JR.callInherited this "SpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "scaleProperties") "scaleHeight")])
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        return (<- JR.new "AdjustedSpriteIndexedAnimation" #[l_sprite, (<- JR.callInherited this "SpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField this "basicColorArray"), (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "SpriteIndexedAnimation" #[l_sprite, (<- JR.callInherited this "SpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField this "basicColorArray"), (<- JR.call (<- JR.getInherited this "SpriteIndexedAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.call this "getInstance_1" #[(JV.int 0)])


def jinit_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_basicColorArray : JV := (JR.arg jargs 1)
    let mut l_sequenceArray : JV := (JR.arg jargs 2)
    let mut l_width : JV := (JR.asI (JR.arg jargs 3))
    let mut l_height : JV := (JR.asI (JR.arg jargs 4))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 5))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 6))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 7)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, l_sequenceArray, l_width, l_height, l_dx, l_dy, l_animationBehaviorFactory]
    let _ <- jfields this
    JR.setField this "basicColorArray" l_basicColorArray
    pure this

initialize JR.registerClass {
    name := "SpriteIndexedAnimationFactory",
    javaName := "org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #["ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("animationFactorySpriteScaleUtil", JV.null), ("basicColorArray", JV.null)],
    statics := #[],
    methods := #[
        ("createCWHDXY_7", #["Image", "BasicColorArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], true, m_createCWHDXY_7), 
        ("createCWH_5", #["Image", "BasicColorArr", "int", "int", "AnimationBehaviorFactory"], true, m_createCWH_5), 
        ("createWH_4", #["Image", "int", "int", "AnimationBehaviorFactory"], true, m_createWH_4), 
        ("initHWH_0", #[], false, m_initHWH_0), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("jinit_8", #["Image", "BasicColorArr", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_8)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpriteIndexedAnimationFactory


