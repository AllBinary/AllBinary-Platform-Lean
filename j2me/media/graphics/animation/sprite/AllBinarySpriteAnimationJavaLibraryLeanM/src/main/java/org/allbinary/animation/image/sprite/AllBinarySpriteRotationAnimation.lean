-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinarySpriteRotationAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "sprite") "nextFrame_0" #[])
    let _ := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "angleInfo") "adjustAngle_1" #[(<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "sprite") "getFrame_0" #[])])
    pure JV.null


def m_previousRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "sprite") "prevFrame_0" #[])
    let _ := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "angleInfo") "adjustAngle_1" #[(<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "sprite") "getFrame_0" #[])])
    pure JV.null


def m_setFrameByDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "directionUtil") "getFrameAngle_1" #[l_direction])
    let _ := (<- JR.call this "adjustFrameToAngle_1" #[l_angle])
    pure JV.null


def m_setFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "adjustFrameToAngle_1" #[l_angle])
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "sprite") "setFrame_1" #[l_index])
    let _ := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "angleInfo") "adjustAngle_1" #[(<- JR.callInherited this "AllBinarySpriteRotationAnimation" "getFrame_0" #[])])
    pure JV.null


def m_adjustFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "adjustFrame_1" #[(<- JR.call l_angle "getValue_0" #[])])
    pure JV.null


def m_adjustFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asS (JR.arg jargs 0))
    let _ := (<- JR.call this "setFrame_1" #[(<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "frameUtil") "getFrameForAngle_2" #[l_angle, (JR.toI (<- JR.call (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "angleInfo") "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[]))])])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sprite : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "HackRotationSpriteIndexedAnimation" this #[l_sprite, l_image, (<- JR.callStatic "AngleInfo" "getInstance_1" #[(JR.toS ((<- JR.div (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")) (<- JR.call l_sprite "getRawFrameCount_0" #[]))))]), l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "angleInfo") "adjustAngle_1" #[(<- JR.call (<- JR.getInherited this "AllBinarySpriteRotationAnimation" "sprite") "getFrame_0" #[])])
    pure this

initialize JR.registerClass {
    name := "AllBinarySpriteRotationAnimation",
    javaName := "org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation",
    super := "HackRotationSpriteIndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("nextRotation_0", #[], false, m_nextRotation_0), 
        ("previousRotation_0", #[], false, m_previousRotation_0), 
        ("setFrameByDirection_1", #["Direction"], false, m_setFrameByDirection_1), 
        ("setFrameToAngle_1", #["Angle"], false, m_setFrameToAngle_1), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("adjustFrameToAngle_1", #["Angle"], false, m_adjustFrameToAngle_1), 
        ("adjustFrame_1", #["short"], false, m_adjustFrame_1), 
        ("jinit_3", #["Sprite", "Image", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinarySpriteRotationAnimation


