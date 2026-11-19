-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLImageUtilBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alphaBitmap : JV := (JR.arg jargs 0)
    let mut l_originalBitmap : JV := (JR.arg jargs 1)
    let mut l_index : JV := (JR.asI (JR.arg jargs 2))
    throw (<- JR.new "RuntimeException" #[])


def m_paint_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_colorBitmap : JV := (JR.arg jargs 0)
    let mut l_originalBitmap : JV := (JR.arg jargs 1)
    let mut l_alpha : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    throw (<- JR.new "RuntimeException" #[])


def m_createImage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def m_createImageFromInputStream_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLImageUtilBase",
    javaName := "org.allbinary.image.opengles.OpenGLImageUtilBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("paint_3", #["OpenGLBitmap", "OpenGLBitmap", "int"], false, m_paint_3), 
        ("paint_4", #["OpenGLBitmap", "OpenGLBitmap", "int", "BasicColor"], false, m_paint_4), 
        ("createImage_1", #["String"], false, m_createImage_1), 
        ("createImageFromInputStream_1", #["InputStream"], false, m_createImageFromInputStream_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLImageUtilBase


