-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinarySpriteRotationAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "animationFactorySpriteScaleUtil" (<- JR.callStatic "AnimationFactorySpriteScaleUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createWHDY_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    let mut l_spriteRotationAnimationFactory : JV := (<- JR.new "AllBinarySpriteRotationAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), ((<- JR.shr (<- JR.call l_image "getHeight_0" #[]) (JV.int 2))), ((<- JR.shr (<- JR.call l_image "getHeight_0" #[]) (JV.int 2))), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])
    let _ := (<- JR.call l_spriteRotationAnimationFactory "initWH_2" #[l_dx, l_dy])
    return l_spriteRotationAnimationFactory


def m_createWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    return (<- JR.callStatic "AllBinarySpriteRotationAnimationFactory" "createWHDY_4" #[l_image, (JV.int 0), (JV.int 0), l_animationBehaviorFactory])


def m_createDXY_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    let mut l_spriteRotationAnimationFactory : JV := (<- JR.new "AllBinarySpriteRotationAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])
    let _ := (<- JR.call l_spriteRotationAnimationFactory "init_2" #[l_dx, l_dy])
    return l_spriteRotationAnimationFactory


def m_createDXYQ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    let mut l_spriteRotationAnimationFactory : JV := (<- JR.new "AllBinarySpriteRotationAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), ((<- JR.shr (<- JR.call l_image "getHeight_0" #[]) (JV.int 2))), ((<- JR.shr (<- JR.call l_image "getHeight_0" #[]) (JV.int 2))), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])
    let _ := (<- JR.call l_spriteRotationAnimationFactory "init_2" #[l_dx, l_dy])
    return l_spriteRotationAnimationFactory


def m_createQ_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    return (<- JR.new "AllBinarySpriteRotationAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), ((<- JR.shr (<- JR.call l_image "getHeight_0" #[]) (JV.int 2))), ((<- JR.shr (<- JR.call l_image "getHeight_0" #[]) (JV.int 2))), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])


def m_createWHF_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    return (<- JR.new "AllBinarySpriteRotationAnimationFactory" #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JV.int 0), (JV.int 0), l_animationBehaviorFactory])


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    JR.setField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.asI l_dx)
    JR.setField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy" (JR.asI l_dy)
    pure JV.null


def m_initWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call this "init_2" #[l_dx, l_dy])
    JR.setField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx" (JR.castLike (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx") (<- JR.add (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx") (<- JR.div (JR.neg (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "width")) (JV.int 5))))
    JR.setField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy" (JR.castLike (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy") (<- JR.add (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy") (<- JR.div (JR.neg (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "height")) (JV.int 5))))
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_sprite : JV := (<- JR.call (<- JR.getField this "animationFactorySpriteScaleUtil") "createImage_5" #[(<- JR.callInherited this "AllBinarySpriteRotationAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "width"), (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "height"), (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "scaleProperties") "scaleWidth"), (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "scaleProperties") "scaleHeight")])
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy") (JV.int 0)))) then
        return (<- JR.new "AllBinaryAdjustedSpriteRotationAnimation" #[l_sprite, (<- JR.callInherited this "AllBinarySpriteRotationAnimationFactory" "getImage_0" #[]), (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dx"), (<- JR.getField (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationFactoryInitializationVisitor") "dy"), (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "AllBinarySpriteRotationAnimation" #[l_sprite, (<- JR.callInherited this "AllBinarySpriteRotationAnimationFactory" "getImage_0" #[]), (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimationFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    pure JV.null


def m_getInstanceAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.call this "getInstance_1" #[(JV.int 0)])


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
    if JR.truth (<- JR.eq l_animationBehaviorFactory (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])) then
        let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(JV.str "Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this])
        pure ()
    pure this

initialize JR.registerClass {
    name := "AllBinarySpriteRotationAnimationFactory",
    javaName := "org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimationFactory",
    super := "BaseImageAnimationFactory",
    interfaces := #["ProceduralAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("animationFactorySpriteScaleUtil", JV.null)],
    statics := #[],
    methods := #[
        ("createWHDY_4", #["Image", "int", "int", "AnimationBehaviorFactory"], true, m_createWHDY_4), 
        ("createWH_2", #["Image", "AnimationBehaviorFactory"], true, m_createWH_2), 
        ("createDXY_4", #["Image", "int", "int", "AnimationBehaviorFactory"], true, m_createDXY_4), 
        ("createDXYQ_4", #["Image", "int", "int", "AnimationBehaviorFactory"], true, m_createDXYQ_4), 
        ("createQ_2", #["Image", "AnimationBehaviorFactory"], true, m_createQ_2), 
        ("createWHF_2", #["Image", "AnimationBehaviorFactory"], true, m_createWHF_2), 
        ("init_2", #["int", "int"], false, m_init_2), 
        ("initWH_2", #["int", "int"], false, m_initWH_2), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getInstanceAnimation_1", #["Animation"], false, m_getInstanceAnimation_1), 
        ("jinit_7", #["Image", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinarySpriteRotationAnimationFactory


