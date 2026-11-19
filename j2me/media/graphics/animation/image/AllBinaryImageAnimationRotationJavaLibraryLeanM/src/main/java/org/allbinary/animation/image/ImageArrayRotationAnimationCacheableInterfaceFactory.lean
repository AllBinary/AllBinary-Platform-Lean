-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayRotationAnimationCacheableInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    return (<- JR.new "ImageArrayRotationAnimationCacheable" #[l_key, (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageArrayRotationAnimationCacheableInterfaceFactory",
    javaName := "org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory",
    super := "Object",
    interfaces := #["CacheableInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["Any"], false, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayRotationAnimationCacheableInterfaceFactory


