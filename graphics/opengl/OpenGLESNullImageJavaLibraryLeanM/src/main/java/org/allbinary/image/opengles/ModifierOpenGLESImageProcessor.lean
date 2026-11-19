-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ModifierOpenGLESImageProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ModifierOpenGLESImageProcessor" "instanceC" (<- JR.new "ModifierOpenGLESImageProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ModifierOpenGLESImageProcessor" "instanceC")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "OpenGLESImageProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ModifierOpenGLESImageProcessor",
    javaName := "org.allbinary.image.opengles.ModifierOpenGLESImageProcessor",
    super := "OpenGLESImageProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ModifierOpenGLESImageProcessor


