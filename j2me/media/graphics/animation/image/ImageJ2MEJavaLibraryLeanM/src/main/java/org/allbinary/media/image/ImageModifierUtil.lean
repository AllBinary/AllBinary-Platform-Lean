-- Generated Code Do Not Modify
-- package org.allbinary.media.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageModifierUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageModifierUtil" "instance" (<- JR.new "ImageModifierUtil" #[])
    pure JV.null


def m_getInstanceOrCreate_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageModifierUtil" "instance")


def m_setColor_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_unusedOriginalImage : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_imageIndex : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    pure JV.null


def m_changeColor_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_unusedOriginalImage : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_imageIndex : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    pure JV.null


def m_setAlpha_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalImage : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_imageIndex : JV := (JR.asI (JR.arg jargs 2))
    let mut l_alphaInt : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_getImageArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalImageArray : JV := (JR.arg jargs 0)
    return l_originalImageArray


def m_handleImage_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_image : JV := (JR.arg jargs 2)
    pure JV.null


def m_reset_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageModifierUtil",
    javaName := "org.allbinary.media.image.ImageModifierUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstanceOrCreate_0", #[], true, m_getInstanceOrCreate_0), 
        ("setColor_4", #["Image", "Image", "int", "BasicColor"], false, m_setColor_4), 
        ("changeColor_4", #["Image", "Image", "int", "BasicColor"], false, m_changeColor_4), 
        ("setAlpha_4", #["Image", "Image", "int", "int"], false, m_setAlpha_4), 
        ("getImageArray_1", #["ImageArr"], false, m_getImageArray_1), 
        ("handleImage_3", #["ImageArr", "int", "Image"], false, m_handleImage_3), 
        ("reset_0", #[], false, m_reset_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageModifierUtil


