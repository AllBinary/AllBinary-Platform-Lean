-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESImageExclusionUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLESImageExclusionUtil" "instance" (<- JR.new "OpenGLESImageExclusionUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLESImageExclusionUtil" "instance")


def m_isCustomScaling_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESImageExclusionUtil",
    javaName := "org.allbinary.image.opengles.OpenGLESImageExclusionUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isCustomScaling_1", #["Image"], false, m_isCustomScaling_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESImageExclusionUtil


