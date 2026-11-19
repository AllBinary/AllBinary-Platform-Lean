-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OneRowSpriteIndexedAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "animationFactorySpriteScaleUtil" (<- JR.callStatic "AnimationFactorySpriteScaleUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactoryDX_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 2)
    let mut l_oneRowSpriteIndexedAnimationFactory : JV := (<- JR.new "OneRowSpriteIndexedAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])
    let _ := (<- JR.call l_oneRowSpriteIndexedAnimationFactory "initW_1" #[l_dx])
    return l_oneRowSpriteIndexedAnimationFactory


def m_createFactoryDXY_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    let mut l_oneRowSpriteIndexedAnimationFactory : JV := (<- JR.new "OneRowSpriteIndexedAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])
    let _ := (<- JR.call l_oneRowSpriteIndexedAnimationFactory "init_2" #[l_dx, l_dy])
    return l_oneRowSpriteIndexedAnimationFactory


def m_createFactoryWH_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    return (<- JR.new "OneRowSpriteIndexedAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_width, l_height, (JV.int 0), (JV.int 0), l_animationBehaviorFactory])


def m_createFactory_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    return (<- JR.new "OneRowSpriteIndexedAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    JR.setField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.asI l_dx)
    JR.setField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dy" (JR.asI l_dy)
    pure JV.null


def m_initW_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "init_2" #[l_dx, (JV.int 0)])
    JR.setField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.castLike (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx") (<- JR.add (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JR.neg ((<- JR.shr (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "width") (JV.int 2))))))
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_sprite : JV := (<- JR.call (<- JR.getField this "animationFactorySpriteScaleUtil") "createImage_5" #[(<- JR.callInherited this "OneRowSpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "scaleProperties") "scaleHeight")])
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        return (<- JR.new "AdjustedSpriteIndexedAnimation" #[l_sprite, (<- JR.callInherited this "OneRowSpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ZERO_ARRAY"), (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "SpriteIndexedAnimation" #[l_sprite, (<- JR.callInherited this "OneRowSpriteIndexedAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ZERO_ARRAY"), (<- JR.call (<- JR.getInherited this "OneRowSpriteIndexedAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_sequenceArray : JV := (JR.arg jargs 1)
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 4))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 5))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "BaseImageAnimationFactory" this #[l_image, l_sequenceArray, l_width, l_height, l_dx, l_dy, l_animationBehaviorFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OneRowSpriteIndexedAnimationFactory",
    javaName := "org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("animationFactorySpriteScaleUtil", JV.null)],
    statics := #[],
    methods := #[
        ("createFactoryDX_3", #["Image", "int", "AnimationBehaviorFactory"], true, m_createFactoryDX_3), 
        ("createFactoryDXY_4", #["Image", "int", "int", "AnimationBehaviorFactory"], true, m_createFactoryDXY_4), 
        ("createFactoryWH_4", #["Image", "int", "int", "AnimationBehaviorFactory"], true, m_createFactoryWH_4), 
        ("createFactory_2", #["Image", "AnimationBehaviorFactory"], true, m_createFactory_2), 
        ("init_2", #["int", "int"], false, m_init_2), 
        ("initW_1", #["int"], false, m_initW_1), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_7", #["Image", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OneRowSpriteIndexedAnimationFactory


