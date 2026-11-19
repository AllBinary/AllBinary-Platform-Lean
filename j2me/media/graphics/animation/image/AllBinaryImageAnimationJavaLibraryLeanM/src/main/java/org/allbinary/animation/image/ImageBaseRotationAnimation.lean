-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageBaseRotationAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "ImageBaseRotationAnimation" "getSize_0" #[]))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call l_graphics "drawImage_4" #[(<- JR.getField this "image"), l_x, l_y, (<- JR.getField this "anchor")])
    pure JV.null


def m_getImage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "image")


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "image") "getWidth_0" #[]))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "image") "getHeight_0" #[]))


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisposalUtil" "getInstance_0" #[]) "disposeImage_1" #[(<- JR.getField this "image")])
    pure JV.null


def m_finalize_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisposalUtil" "getInstance_0" #[]) "disposeImage_1" #[(<- JR.getField this "image")])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_angleInfo : JV := (JR.arg jargs 1)
    let mut l_totalAngle : JV := (JR.asS (JR.arg jargs 2))
    let mut l_animationBehavior : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "RotationAnimation" this #[l_angleInfo, (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.div l_totalAngle (<- JR.call (<- JR.call l_angleInfo "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[]))]), l_animationBehavior]
    let _ <- jfields this
    JR.setField this "image" l_image
    pure this

initialize JR.registerClass {
    name := "ImageBaseRotationAnimation",
    javaName := "org.allbinary.animation.image.ImageBaseRotationAnimation",
    super := "RotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("image", JV.null), ("anchor", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("getImage_0", #[], false, m_getImage_0), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("close_0", #[], false, m_close_0), 
        ("finalize_0", #[], false, m_finalize_0), 
        ("jinit_4", #["Image", "AngleInfo", "short", "AnimationBehavior"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageBaseRotationAnimation


