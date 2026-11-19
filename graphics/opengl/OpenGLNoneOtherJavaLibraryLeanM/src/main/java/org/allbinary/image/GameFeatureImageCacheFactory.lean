-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureImageCacheFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "ImageCacheFactory" "getInstance_0" #[])


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "ImageCacheFactory" "init_0" #[])
    pure JV.null


def m_releaseAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "ImageCacheFactory" "getInstance_0" #[]) "releaseAll_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameFeatureImageCacheFactory",
    javaName := "org.allbinary.image.GameFeatureImageCacheFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], true, m_init_0), 
        ("releaseAll_0", #[], true, m_releaseAll_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureImageCacheFactory


