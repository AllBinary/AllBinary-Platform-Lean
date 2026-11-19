-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLBitmapFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "ARGB_8888" (<- JR.new "OpenGLBitmapConfig" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLBitmapFactory" "instance" (<- JR.new "OpenGLBitmapFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLBitmapFactory" "instance")


def m_createBitmap_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_config : JV := (JR.arg jargs 2)
    return (<- JR.new "OpenGLBitmap" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])


def m_decodeStream_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    return (<- JR.new "OpenGLBitmap" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])


def m_createBitmap_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    return (<- JR.new "OpenGLBitmap" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "PlatformBitmapBaseFactory" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLBitmapFactory",
    javaName := "org.allbinary.graphics.OpenGLBitmapFactory",
    super := "PlatformBitmapBaseFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("ARGB_8888", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createBitmap_3", #["int", "int", "OpenGLBitmapConfig"], false, m_createBitmap_3), 
        ("decodeStream_1", #["InputStream"], false, m_decodeStream_1), 
        ("createBitmap_1", #["Image"], false, m_createBitmap_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLBitmapFactory


