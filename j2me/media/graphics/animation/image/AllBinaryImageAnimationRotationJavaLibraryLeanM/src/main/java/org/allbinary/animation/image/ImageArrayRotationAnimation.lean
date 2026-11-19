-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayRotationAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createAnimation_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let mut l_imageRotationAnimationInfo : JV := l_anyType
    return (<- JR.new "ImageArrayRotationAnimation" #[(<- JR.call l_imageRotationAnimationInfo "getImageArray_0" #[]), (<- JR.call l_imageRotationAnimationInfo "getAngleInfoP_0" #[]), (<- JR.call l_imageRotationAnimationInfo "getTotalAngle_0" #[]), l_animationBehavior])


def m_initImageArray_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_angleInfo : JV := (JR.arg jargs 1)
    let mut l_totalAngle : JV := (JR.asI (JR.arg jargs 2))
    JR.setField this "expectedTotalFrames" (JR.asI (<- JR.div l_totalAngle (JR.toI (<- JR.call (<- JR.call (<- JR.getInherited this "ImageArrayRotationAnimation" "angleInfo") "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[]))))
    let _ := (<- JR.call (<- JR.getInherited this "ImageArrayRotationAnimation" "angleInfo") "adjustAngle_1" #[(JV.int 0)])
    if JR.truth (<- JR.ne (<- JR.getField this "expectedTotalFrames") (<- JR.callInherited this "ImageArrayRotationAnimation" "getSize_0" #[])) then
        throw (<- JR.new "Exception" #[(JV.str "Wrong Number of Frames")])
    pure JV.null


def m_setImageArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "ImageArrayBaseRotationAnimation" this "setImageArray_1" #[l_imageArray])
    let _ := (<- JR.call (<- JR.getInherited this "ImageArrayRotationAnimation" "angleInfo") "adjustAngle_1" #[(JV.int 0)])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_angleInfo : JV := (JR.arg jargs 1)
    let mut l_totalAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehavior : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "ImageArrayBaseRotationAnimation" this #[l_imageArray, l_angleInfo, l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "initImageArray_3" #[l_imageArray, l_angleInfo, l_totalAngle])
    pure this

initialize JR.registerClass {
    name := "ImageArrayRotationAnimation",
    javaName := "org.allbinary.animation.image.ImageArrayRotationAnimation",
    super := "ImageArrayBaseRotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("expectedTotalFrames", (JV.int 0))],
    statics := #[],
    methods := #[
        ("createAnimation_2", #["Any", "AnimationBehavior"], true, m_createAnimation_2), 
        ("initImageArray_3", #["ImageArr", "AngleInfo", "int"], false, m_initImageArray_3), 
        ("setImageArray_1", #["ImageArr"], false, m_setImageArray_1), 
        ("jinit_4", #["ImageArr", "AngleInfo", "int", "AnimationBehavior"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayRotationAnimation


