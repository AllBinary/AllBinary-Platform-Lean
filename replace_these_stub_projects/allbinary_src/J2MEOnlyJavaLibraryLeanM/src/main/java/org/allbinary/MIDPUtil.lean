-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MIDPUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MIDPUtil" "instance" (<- JR.new "MIDPUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MIDPUtil" "instance")


def m_createImageWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.callStatic "Image" "createImage_2" #[l_width, l_height])


def m_createImageFromByteArray_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageData : JV := (JR.arg jargs 0)
    let mut l_imageOffset : JV := (JR.asI (JR.arg jargs 1))
    let mut l_imageLength : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.callStatic "Image" "createImage_3" #[l_imageData, l_imageOffset, l_imageLength])


def m_createImageFromInputStream_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    return (<- JR.callStatic "Image" "createImage_1" #[l_inputStream])


def m_createPlayerFromInputStream_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    let mut l_type : JV := (JR.arg jargs 1)
    return (<- JR.callStatic "Manager" "createPlayer_2" #[l_inputStream, l_type])


def m_appendItem_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_form : JV := (JR.arg jargs 0)
    let mut l_item : JV := (JR.arg jargs 1)
    return (JR.asI (<- JR.call l_form "append_1" #[l_item]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MIDPUtil",
    javaName := "org.allbinary.MIDPUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createImageWH_2", #["int", "int"], false, m_createImageWH_2), 
        ("createImageFromByteArray_3", #["byteArr", "int", "int"], false, m_createImageFromByteArray_3), 
        ("createImageFromInputStream_1", #["InputStream"], false, m_createImageFromInputStream_1), 
        ("createPlayerFromInputStream_2", #["InputStream", "String"], false, m_createPlayerFromInputStream_2), 
        ("appendItem_2", #["Form", "LcduiItem"], false, m_appendItem_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MIDPUtil


