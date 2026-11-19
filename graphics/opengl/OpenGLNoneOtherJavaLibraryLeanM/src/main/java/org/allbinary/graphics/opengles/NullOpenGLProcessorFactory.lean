-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullOpenGLProcessorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullOpenGLProcessorFactory" "instance" (<- JR.new "OpenGLProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullOpenGLProcessorFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullOpenGLProcessorFactory",
    javaName := "org.allbinary.graphics.opengles.NullOpenGLProcessorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullOpenGLProcessorFactory


