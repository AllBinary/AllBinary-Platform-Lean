-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayRotationAnimationCacheable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "AdjustedImageArrayRotationAnimation" this #[(<- JR.call (l_anyType) "getImageArray_0" #[]), (<- JR.call (l_anyType) "getAngleInfoP_0" #[]), (<- JR.call (l_anyType) "getTotalAngle_0" #[]), (<- JR.call (l_anyType) "getDx_0" #[]), (<- JR.call (l_anyType) "getDy_0" #[]), l_animationBehavior]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageArrayRotationAnimationCacheable",
    javaName := "org.allbinary.animation.image.ImageArrayRotationAnimationCacheable",
    super := "AdjustedImageArrayRotationAnimation",
    interfaces := #["CacheableInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getKey_0", #[], false, m_getKey_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["Any", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayRotationAnimationCacheable


