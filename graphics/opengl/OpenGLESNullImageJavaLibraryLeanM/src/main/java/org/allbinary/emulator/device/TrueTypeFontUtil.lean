-- Generated Code Do Not Modify
-- package org.allbinary.emulator.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TrueTypeFontUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "fontImage" (<- JR.getStatic "OpenGLESImage" "NULL_OPENGL_IMAGE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TrueTypeFontUtil" "instance" (<- JR.new "TrueTypeFontUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TrueTypeFontUtil" "instance")


def m_getAsTextureSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_textureSize : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getCellSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cellSize : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getFontBitmap_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filename : JV := (JR.arg jargs 0)
    let mut l_fontSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_cellSize : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    throw (<- JR.new "RuntimeException" #[])


def m_saveFontAtlasAsFile_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getFontBitmapGL_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_filename : JV := (JR.arg jargs 1)
    let mut l_cellSize : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    throw (<- JR.new "RuntimeException" #[])


def m_getFontWidths_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filename : JV := (JR.arg jargs 0)
    let mut l_fontSize : JV := (JR.asI (JR.arg jargs 1))
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "TrueTypeFontUtilBase" this #[(JV.int 1)]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TrueTypeFontUtil",
    javaName := "org.allbinary.emulator.device.TrueTypeFontUtil",
    super := "TrueTypeFontUtilBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("fontImage", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getAsTextureSize_1", #["int"], false, m_getAsTextureSize_1), 
        ("getCellSize_1", #["int"], false, m_getCellSize_1), 
        ("getFontBitmap_4", #["String", "int", "int", "BasicColor"], false, m_getFontBitmap_4), 
        ("saveFontAtlasAsFile_0", #[], false, m_saveFontAtlasAsFile_0), 
        ("getFontBitmapGL_4", #["GL10", "String", "int", "BasicColor"], false, m_getFontBitmapGL_4), 
        ("getFontWidths_2", #["String", "int"], false, m_getFontWidths_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TrueTypeFontUtil


