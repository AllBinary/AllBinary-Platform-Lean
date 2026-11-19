-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLThreadUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLThreadUtil" "instance" (<- JR.new "OpenGLThreadUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLThreadUtil" "instance")


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_glSurfaceView : JV := (JR.arg jargs 0)
    pure JV.null


def m_onPause_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onResume_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLThreadUtil",
    javaName := "org.allbinary.graphics.opengles.OpenGLThreadUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("set_1", #["Any"], false, m_set_1), 
        ("onPause_0", #[], false, m_onPause_0), 
        ("onResume_0", #[], false, m_onResume_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLThreadUtil


