-- Generated Code Do Not Modify
-- package org.allbinary.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESGraphics

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "gl" (<- JR.getStatic "NullGL10" "NULL_GL10")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateGL_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setOrthoginalMode_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setCameraMode_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getGlP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gl")


def m_setFontDebug_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    let mut l_fontDebug : JV := (JR.arg jargs 1)
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESGraphics",
    javaName := "org.allbinary.device.OpenGLESGraphics",
    super := "Object",
    interfaces := #["OpenGLSurfaceChangedInterface", "GraphicsInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("gl", JV.null)],
    statics := #[],
    methods := #[
        ("updateGL_1", #["GL"], false, m_updateGL_1), 
        ("set_1", #["GL"], false, m_set_1), 
        ("init_0", #[], false, m_init_0), 
        ("update_0", #[], false, m_update_0), 
        ("setOrthoginalMode_0", #[], false, m_setOrthoginalMode_0), 
        ("setCameraMode_0", #[], false, m_setCameraMode_0), 
        ("getGlP_0", #[], false, m_getGlP_0), 
        ("setFontDebug_2", #["Font", "FontDebugBase"], false, m_setFontDebug_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESGraphics


