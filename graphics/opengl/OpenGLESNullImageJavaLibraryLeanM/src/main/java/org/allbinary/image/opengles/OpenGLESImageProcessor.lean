-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESImageProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLESImageProcessor" "instance" (<- JR.new "OpenGLESImageProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLESImageProcessor" "instance")


def m_translate_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_translateX : JV := (JR.asF (JR.arg jargs 1))
    let mut l_translateY : JV := (JR.asF (JR.arg jargs 2))
    pure JV.null


def m_rotate_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asF (JR.arg jargs 1))
    pure JV.null


def m_scale_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_scaleX : JV := (JR.asF (JR.arg jargs 1))
    let mut l_scaleY : JV := (JR.asF (JR.arg jargs 2))
    pure JV.null


def m_colorMask_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_red : JV := (JR.asF (JR.arg jargs 1))
    let mut l_green : JV := (JR.asF (JR.arg jargs 2))
    let mut l_blue : JV := (JR.asF (JR.arg jargs 3))
    let mut l_alpha : JV := (JR.asF (JR.arg jargs 4))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESImageProcessor",
    javaName := "org.allbinary.image.opengles.OpenGLESImageProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("translate_3", #["GL10", "float", "float"], false, m_translate_3), 
        ("rotate_2", #["GL10", "float"], false, m_rotate_2), 
        ("scale_3", #["GL10", "float", "float"], false, m_scale_3), 
        ("colorMask_5", #["GL10", "float", "float", "float", "float"], false, m_colorMask_5), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESImageProcessor


