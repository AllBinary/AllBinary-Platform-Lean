-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLBitmapConfig

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bitmapConfig : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "bitmapConfig" l_bitmapConfig
    pure this

initialize JR.registerClass {
    name := "OpenGLBitmapConfig",
    javaName := "org.allbinary.graphics.OpenGLBitmapConfig",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("bitmapConfig", JV.null)],
    statics := #[],
    methods := #[
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLBitmapConfig


