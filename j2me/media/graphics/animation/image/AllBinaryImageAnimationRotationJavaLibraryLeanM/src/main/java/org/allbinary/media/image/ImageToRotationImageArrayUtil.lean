-- Generated Code Do Not Modify
-- package org.allbinary.media.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageToRotationImageArrayUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageToRotationImageArrayUtil" "instance" (<- JR.new "ImageToRotationImageArrayUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageToRotationImageArrayUtil" "instance")


def m_generate_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_angleIncrement : JV := (JR.asI (JR.arg jargs 1))
    let mut l_totalAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_imageRotationUtil : JV := (<- JR.callStatic "ImageRotationUtil" "getInstance_0" #[])
    let mut l_totalFrames : JV := (JR.asI (<- JR.div l_totalAngle l_angleIncrement))
    let mut l_imageArray : JV := (<- JR.newArray "L" 1 #[l_totalFrames])
    JR.aset l_imageArray (JV.int 0) l_image
    if true then
        let mut l_index : JV := (JR.asI (JV.int 1))
        repeat
            if !(JR.truth (<- JR.lt l_index l_totalFrames)) then break
            JR.aset l_imageArray l_index (<- JR.call l_imageRotationUtil "createRotatedImage_2" #[l_image, (<- JR.mul l_index l_angleIncrement)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_imageArray


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageToRotationImageArrayUtil",
    javaName := "org.allbinary.media.image.ImageToRotationImageArrayUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("generate_3", #["Image", "int", "int"], false, m_generate_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageToRotationImageArrayUtil


