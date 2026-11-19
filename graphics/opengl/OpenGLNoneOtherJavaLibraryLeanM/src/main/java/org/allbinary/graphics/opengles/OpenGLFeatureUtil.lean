-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLFeatureUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLFeatureUtil" "instance" (<- JR.new "OpenGLFeatureUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLFeatureUtil" "instance")


def m_isAnyThreed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLFeatureUtil",
    javaName := "org.allbinary.graphics.opengles.OpenGLFeatureUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isAnyThreed_0", #[], false, m_isAnyThreed_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLFeatureUtil


