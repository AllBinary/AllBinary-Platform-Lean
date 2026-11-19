-- Generated Code Do Not Modify
-- package org.allbinary.platform.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformBitmapBaseFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformBitmapBaseFactory" "NULL_PLATFORM_BITMAP_BASE_FACTORY" (<- JR.new "PlatformBitmapBaseFactory" #[])
    pure JV.null


def m_createBitmap_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    return (<- JR.getStatic "PlatformBitmapBase" "NULL_PLATFORM_BITMAP_BASE")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformBitmapBaseFactory",
    javaName := "org.allbinary.platform.graphics.PlatformBitmapBaseFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_PLATFORM_BITMAP_BASE_FACTORY", JV.null)],
    methods := #[
        ("createBitmap_1", #["Image"], false, m_createBitmap_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformBitmapBaseFactory


