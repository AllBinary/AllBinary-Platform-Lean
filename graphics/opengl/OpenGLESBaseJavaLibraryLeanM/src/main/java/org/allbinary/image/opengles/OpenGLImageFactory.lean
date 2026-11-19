-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLImageFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLImageFactory" "NULL_OPENGL_IMAGE_FACTORY" (<- JR.new "OpenGLImageFactory" #[])
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_bitmapFactory : JV := (JR.arg jargs 1)
    let mut l_textureFactory : JV := (JR.arg jargs 2)
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLImageFactory",
    javaName := "org.allbinary.image.opengles.OpenGLImageFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_OPENGL_IMAGE_FACTORY", JV.null)],
    methods := #[
        ("getInstance_3", #["Image", "PlatformBitmapBaseFactory", "PlatformTextureBaseFactory"], false, m_getInstance_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLImageFactory


