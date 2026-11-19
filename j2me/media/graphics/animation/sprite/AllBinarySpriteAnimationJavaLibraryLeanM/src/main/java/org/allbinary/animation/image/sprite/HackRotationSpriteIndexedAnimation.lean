-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HackRotationSpriteIndexedAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call this "getSize_0" #[]))


def m_paintFrame_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_g : JV := (JR.arg jargs 0)
    let mut l_frame : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.call this "setFrame_1" #[l_frame])
    let _ := (<- JR.call this "paintXY_3" #[l_g, l_x, l_y])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_g : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "sprite") "setPosition_2" #[l_x, l_y])
    let _ := (<- JR.call this "paint_1" #[l_g])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_g : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "sprite") "paint_1" #[l_g])
    pure JV.null


def m_nextRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "sprite") "nextFrame_0" #[])
    pure JV.null


def m_previousRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "sprite") "prevFrame_0" #[])
    pure JV.null


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "sprite") "getRawFrameCount_0" #[]))


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "sprite") "setFrame_1" #[l_frame])
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "sprite") "getFrame_0" #[]))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sprite : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_angleInfo : JV := (JR.arg jargs 2)
    let mut l_animationBehavior : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "RotationAnimation" this #[l_angleInfo, (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.div (JV.int 360) (JR.toI (<- JR.call (<- JR.call l_angleInfo "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[])))]), l_animationBehavior]
    let _ <- jfields this
    JR.setField this "sprite" l_sprite
    JR.setField this "image" l_image
    pure this

initialize JR.registerClass {
    name := "HackRotationSpriteIndexedAnimation",
    javaName := "org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation",
    super := "RotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("sprite", JV.null), ("image", JV.null)],
    statics := #[],
    methods := #[
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("paintFrame_4", #["Graphics", "int", "int", "int"], false, m_paintFrame_4), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("nextRotation_0", #[], false, m_nextRotation_0), 
        ("previousRotation_0", #[], false, m_previousRotation_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("jinit_4", #["Sprite", "Image", "AngleInfo", "AnimationBehavior"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HackRotationSpriteIndexedAnimation


