-- Generated Code Do Not Modify
-- package org.allbinary.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESGraphicsFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getOpenGLESGraphicsInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "OpenGLESNullGraphicsFactory" "getInstance_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESGraphicsFactory",
    javaName := "org.allbinary.device.OpenGLESGraphicsFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getOpenGLESGraphicsInstance_0", #[], false, m_getOpenGLESGraphicsInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESGraphicsFactory


