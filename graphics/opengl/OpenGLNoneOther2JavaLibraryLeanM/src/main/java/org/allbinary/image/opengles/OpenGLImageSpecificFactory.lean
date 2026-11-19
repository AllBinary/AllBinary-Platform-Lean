-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLImageSpecificFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "updating" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLImageSpecificFactory" "instance" (<- JR.new "OpenGLImageSpecificFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLImageSpecificFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLImageSpecificFactory",
    javaName := "org.allbinary.image.opengles.OpenGLImageSpecificFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("updating", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLImageSpecificFactory


