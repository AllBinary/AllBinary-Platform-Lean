-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdjustedImageArrayRotationAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createAdjustedImageArrayRotationAnimationInfo_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let mut l_imageRotationAnimationInfo : JV := l_anyType
    return (<- JR.new "AdjustedImageArrayRotationAnimation" #[(<- JR.call l_imageRotationAnimationInfo "getImageArray_0" #[]), (<- JR.call l_imageRotationAnimationInfo "getAngleInfoP_0" #[]), (<- JR.call l_imageRotationAnimationInfo "getTotalAngle_0" #[]), (<- JR.call l_imageRotationAnimationInfo "getDx_0" #[]), (<- JR.call l_imageRotationAnimationInfo "getDy_0" #[]), l_animationBehavior])


def m_createAnimation_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_angleInfo : JV := (JR.arg jargs 1)
    let mut l_totalAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehavior : JV := (JR.arg jargs 3)
    return (<- JR.new "AdjustedImageArrayRotationAnimation" #[l_imageArray, l_angleInfo, l_totalAngle, (JR.neg ((<- JR.shr (<- JR.call (<- JR.aget l_imageArray (JV.int 0)) "getWidth_0" #[]) (JV.int 2)))), (JR.neg ((<- JR.shr (<- JR.call (<- JR.aget l_imageArray (JV.int 0)) "getHeight_0" #[]) (JV.int 2)))), l_animationBehavior])


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call this "setDx_1" #[l_dx])
    let _ := (<- JR.call this "setDy_1" #[l_dy])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "ImageArrayRotationAnimation" this "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "dx")), (<- JR.add l_y (<- JR.getField this "dy"))])
    pure JV.null


def m_setDx_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dx" (JR.asI l_dx)
    pure JV.null


def m_getDx_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dx"))


def m_setDy_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dy : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dy" (JR.asI l_dy)
    pure JV.null


def m_getDy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dy"))


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_angleInfo : JV := (JR.arg jargs 1)
    let mut l_totalAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_animationBehavior : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "ImageArrayRotationAnimation" this #[l_imageArray, l_angleInfo, l_totalAngle, l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "init_2" #[l_dx, l_dy])
    pure this

initialize JR.registerClass {
    name := "AdjustedImageArrayRotationAnimation",
    javaName := "org.allbinary.animation.image.AdjustedImageArrayRotationAnimation",
    super := "ImageArrayRotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("createAdjustedImageArrayRotationAnimationInfo_2", #["Any", "AnimationBehavior"], true, m_createAdjustedImageArrayRotationAnimationInfo_2), 
        ("createAnimation_4", #["ImageArr", "AngleInfo", "int", "AnimationBehavior"], true, m_createAnimation_4), 
        ("init_2", #["int", "int"], false, m_init_2), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("setDx_1", #["int"], false, m_setDx_1), 
        ("getDx_0", #[], false, m_getDx_0), 
        ("setDy_1", #["int"], false, m_setDy_1), 
        ("getDy_0", #[], false, m_getDy_0), 
        ("jinit_6", #["ImageArr", "AngleInfo", "int", "int", "int", "AnimationBehavior"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdjustedImageArrayRotationAnimation


