-- Generated Code Do Not Modify
-- package org.allbinary.media.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageScaleUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageScaleUtil" "instance" (<- JR.new "ImageScaleUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageScaleUtil" "instance")


def m_createImage2_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_originalImage : JV := (JR.arg jargs 1)
    let mut l_scaleNominatorX : JV := (JR.asF (JR.arg jargs 2))
    let mut l_scaleDenominatorX : JV := (JR.asF (JR.arg jargs 3))
    let mut l_scaleNominatorY : JV := (JR.asF (JR.arg jargs 4))
    let mut l_scaleDenominatorY : JV := (JR.asF (JR.arg jargs 5))
    let mut l_cached : JV := (JR.arg jargs 6)
    return (<- JR.call this "createImage3_8" #[l_imageCache, l_originalImage, l_scaleNominatorX, l_scaleDenominatorX, l_scaleNominatorY, l_scaleDenominatorY, l_cached, (JV.bool true)])


def m_createImage3_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_originalImage : JV := (JR.arg jargs 1)
    let mut l_scaleNominatorX : JV := (JR.asF (JR.arg jargs 2))
    let mut l_scaleDenominatorX : JV := (JR.asF (JR.arg jargs 3))
    let mut l_scaleNominatorY : JV := (JR.asF (JR.arg jargs 4))
    let mut l_scaleDenominatorY : JV := (JR.asF (JR.arg jargs 5))
    let mut l_cached : JV := (JR.arg jargs 6)
    let mut l_mutable : JV := (JR.arg jargs 7)
    return l_originalImage


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageScaleUtil",
    javaName := "org.allbinary.media.image.ImageScaleUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createImage2_7", #["ImageCache", "Image", "float", "float", "float", "float", "boolean"], false, m_createImage2_7), 
        ("createImage3_8", #["ImageCache", "Image", "float", "float", "float", "float", "boolean", "boolean"], false, m_createImage3_8), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageScaleUtil


