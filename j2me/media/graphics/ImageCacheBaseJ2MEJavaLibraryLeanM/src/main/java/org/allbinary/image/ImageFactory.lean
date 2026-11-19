-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageFactory" "instance" (<- JR.new "ImageFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageFactory" "instance")


def m_createImageUrl_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_url : JV := (JR.arg jargs 0)
    return (<- JR.callStatic "Image" "createImage_1" #[l_url])


def m_createImage_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_caller : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.call (<- JR.callStatic "MIDPUtil" "getInstance_0" #[]) "createImageWH_2" #[l_width, l_height])


def m_createImageFromInputStream_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    let mut l_inputStream : JV := (JR.arg jargs 1)
    let mut l_image : JV := (<- JR.call (<- JR.callStatic "MIDPUtil" "getInstance_0" #[]) "createImageFromInputStream_1" #[l_inputStream])
    return l_image


def m_createImageFromInputStream_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "MIDPUtil" "getInstance_0" #[]) "createImageFromInputStream_1" #[l_inputStream])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageFactory",
    javaName := "org.allbinary.image.ImageFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createImageUrl_1", #["String"], false, m_createImageUrl_1), 
        ("createImage_3", #["String", "int", "int"], false, m_createImage_3), 
        ("createImageFromInputStream_2", #["Any", "InputStream"], false, m_createImageFromInputStream_2), 
        ("createImageFromInputStream_1", #["InputStream"], false, m_createImageFromInputStream_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageFactory


