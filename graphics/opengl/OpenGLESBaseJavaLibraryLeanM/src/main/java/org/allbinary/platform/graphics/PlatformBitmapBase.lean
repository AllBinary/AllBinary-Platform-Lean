-- Generated Code Do Not Modify
-- package org.allbinary.platform.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformBitmapBase

def jfields (this : JV) : JM JV := do
    JR.setField this "alpha" (JR.asI (JV.int 255))
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "NULL_COLOR")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformBitmapBase" "NULL_PLATFORM_BITMAP_BASE" (<- JR.new "PlatformBitmapBase" #[])
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getImage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullImage" "NULL_IMAGE")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformBitmapBase",
    javaName := "org.allbinary.platform.graphics.PlatformBitmapBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("alpha", (JV.int 0)), ("basicColor", JV.null)],
    statics := #[("NULL_PLATFORM_BITMAP_BASE", JV.null)],
    methods := #[
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("getImage_0", #[], false, m_getImage_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformBitmapBase


