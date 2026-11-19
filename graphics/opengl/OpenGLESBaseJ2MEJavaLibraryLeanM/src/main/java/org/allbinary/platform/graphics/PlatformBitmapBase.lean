-- Generated Code Do Not Modify
-- package org.allbinary.platform.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformBitmapBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


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
    fields := #[],
    statics := #[],
    methods := #[
        ("getImage_0", #[], false, m_getImage_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformBitmapBase


