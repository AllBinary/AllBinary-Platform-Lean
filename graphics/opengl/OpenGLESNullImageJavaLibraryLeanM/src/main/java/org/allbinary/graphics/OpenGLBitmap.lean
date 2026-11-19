-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLBitmap

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getPixels_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pixels : JV := (JR.arg jargs 0)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 1))
    let mut l_stride : JV := (JR.asI (JR.arg jargs 2))
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (JR.arg jargs 5))
    let mut l_height : JV := (JR.asI (JR.arg jargs 6))
    pure JV.null


def m_setPixels_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pixels : JV := (JR.arg jargs 0)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 1))
    let mut l_stride : JV := (JR.asI (JR.arg jargs 2))
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (JR.arg jargs 5))
    let mut l_height : JV := (JR.asI (JR.arg jargs 6))
    pure JV.null


def m_recycle_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bitmap : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "PlatformBitmapBase" this #[]
    let _ <- jfields this
    JR.setField this "bitmap" l_bitmap
    pure this

initialize JR.registerClass {
    name := "OpenGLBitmap",
    javaName := "org.allbinary.graphics.OpenGLBitmap",
    super := "PlatformBitmapBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("bitmap", JV.null)],
    statics := #[],
    methods := #[
        ("getPixels_7", #["intArr", "int", "int", "int", "int", "int", "int"], false, m_getPixels_7), 
        ("setPixels_7", #["intArr", "int", "int", "int", "int", "int", "int"], false, m_setPixels_7), 
        ("recycle_0", #[], false, m_recycle_0), 
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLBitmap


