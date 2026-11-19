-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayRotationAnimationPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageArrayRotationAnimationPool" "IMAGE_ROTATION_ANIMATION_POOL" (<- JR.new "ImageArrayRotationAnimationPool" #[(<- JR.new "ImageArrayRotationAnimationCacheableInterfaceFactory" #[])])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageArrayRotationAnimationPool" "IMAGE_ROTATION_ANIMATION_POOL")


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    let mut l_cacheableInterface : JV := (<- JR.callSuper "BasicArrayListResetablePool" this "remove_1" #[l_key])
    let mut l_allBinaryImageRotationAnimationInfo : JV := l_key
    let mut l_imageArrayRotationAnimationCacheable : JV := (l_cacheableInterface)
    let _ := (<- JR.call l_imageArrayRotationAnimationCacheable "setImageArray_1" #[(<- JR.call l_allBinaryImageRotationAnimationInfo "getImageArray_0" #[])])
    return l_cacheableInterface


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "BasicArrayListResetablePool" this #[l_cacheableInterfaceFactoryInterface]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageArrayRotationAnimationPool",
    javaName := "org.allbinary.animation.image.ImageArrayRotationAnimationPool",
    super := "BasicArrayListResetablePool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("IMAGE_ROTATION_ANIMATION_POOL", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("remove_1", #["Any"], false, m_remove_1), 
        ("jinit_1", #["CacheableInterfaceFactoryInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayRotationAnimationPool


