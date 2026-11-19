-- Generated Code Do Not Modify
-- package org.allbinary.media.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageRotationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageRotationUtil" "instance" (<- JR.new "ImageRotationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageRotationUtil" "instance")


def m_createRotatedImage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalImage : JV := (JR.arg jargs 0)
    let mut l_rotationInDegrees : JV := (JR.asI (JR.arg jargs 1))
    return l_originalImage


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageRotationUtil",
    javaName := "org.allbinary.media.image.ImageRotationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("anchor", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createRotatedImage_2", #["Image", "int"], false, m_createRotatedImage_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageRotationUtil


