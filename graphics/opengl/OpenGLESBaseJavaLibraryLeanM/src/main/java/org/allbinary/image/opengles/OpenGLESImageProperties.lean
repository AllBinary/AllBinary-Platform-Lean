-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESImageProperties

def jfields (this : JV) : JM JV := do
    JR.setField this "textureID" (JR.asI (JV.int (-1)))
    JR.setField this "scaleX" (JR.asF (JV.float 1.0))
    JR.setField this "scaleY" (JR.asF (JV.float 1.0))
    JR.setField this "scaleX2" (JR.asF (JV.float 1.0))
    JR.setField this "scaleY2" (JR.asF (JV.float 1.0))
    JR.setField this "redf" (JR.asF (JV.float 1.0))
    JR.setField this "greenf" (JR.asF (JV.float 1.0))
    JR.setField this "bluef" (JR.asF (JV.float 1.0))
    JR.setField this "alphaf" (JR.asF (JV.float 1.0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESImageProperties",
    javaName := "org.allbinary.image.opengles.OpenGLESImageProperties",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("textureID", (JV.int 0)), ("scaleX", (JV.float 0.0)), ("scaleY", (JV.float 0.0)), ("scaleX2", (JV.float 0.0)), ("scaleY2", (JV.float 0.0)), ("angle", (JV.int 0)), ("redf", (JV.float 0.0)), ("greenf", (JV.float 0.0)), ("bluef", (JV.float 0.0)), ("alphaf", (JV.float 0.0))],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESImageProperties


