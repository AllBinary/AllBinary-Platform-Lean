-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESImageTranslate

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLESImageTranslate" "instance" (<- JR.new "OpenGLESImageTranslate" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLESImageTranslate" "instance")


def m_translate_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_openGLESImage : JV := (JR.arg jargs 1)
    let mut l_x : JV := (JR.asF (JR.arg jargs 2))
    let mut l_y : JV := (JR.asF (JR.arg jargs 3))
    pure JV.null


def m_translate2_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_openGLESImage : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESImageTranslate",
    javaName := "org.allbinary.image.opengles.OpenGLESImageTranslate",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("translate_4", #["GL10", "OpenGLESImage", "float", "float"], false, m_translate_4), 
        ("translate2_2", #["GL10", "OpenGLESImage"], false, m_translate2_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESImageTranslate


