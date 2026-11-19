-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PooledImageArrayRotationAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "allBinaryImageRotationAnimationInfo" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactory_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    let mut l_totalAngle : JV := (JR.asI (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")))
    let mut l_angleIncrement : JV := (JR.asI ((<- JR.div l_totalAngle (<- JR.call (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "getGameControlFidelity_0" #[]))))
    return (<- JR.new "PooledImageArrayRotationAnimationFactory" #[l_image, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), (JR.neg ((<- JR.shr (<- JR.call l_image "getWidth_0" #[]) (JV.int 2)))), (JR.neg ((<- JR.shr (<- JR.call l_image "getHeight_0" #[]) (JV.int 2)))), l_angleIncrement, l_animationBehaviorFactory])


def m_createDXY_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    let mut l_totalAngle : JV := (JR.asI (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")))
    let mut l_angleIncrement : JV := (JR.asI ((<- JR.div l_totalAngle (<- JR.call (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "getGameControlFidelity_0" #[]))))
    return (<- JR.new "PooledImageArrayRotationAnimationFactory" #[l_image, (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[]), l_dx, l_dy, l_angleIncrement, l_animationBehaviorFactory])


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.callStatic "AdjustedImageArrayRotationAnimation" "createAdjustedImageArrayRotationAnimationInfo_2" #[(<- JR.getField this "allBinaryImageRotationAnimationInfo"), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_angleIncrement : JV := (JR.asI (JR.arg jargs 5))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    let mut l_totalAngle : JV := (JR.asI (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")))
    let mut l_imageArray : JV := (<- JR.call (<- JR.callStatic "ImageToRotationImageArrayUtil" "getInstance_0" #[]) "generate_3" #[l_image, l_angleIncrement, l_totalAngle])
    JR.setField this "allBinaryImageRotationAnimationInfo" (<- JR.new "ImageArrayRotationAnimationInfo" #[l_imageArray, l_angleIncrement, l_totalAngle, l_dx, l_dy])
    pure this

initialize JR.registerClass {
    name := "PooledImageArrayRotationAnimationFactory",
    javaName := "org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("allBinaryImageRotationAnimationInfo", JV.null), ("animationBehaviorFactory", JV.null)],
    statics := #[],
    methods := #[
        ("createFactory_2", #["Image", "AnimationBehaviorFactory"], true, m_createFactory_2), 
        ("createDXY_4", #["Image", "int", "int", "AnimationBehaviorFactory"], true, m_createDXY_4), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_7", #["Image", "int", "int", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PooledImageArrayRotationAnimationFactory


