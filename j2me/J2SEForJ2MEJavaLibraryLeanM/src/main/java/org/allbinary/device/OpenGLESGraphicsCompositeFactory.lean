-- Generated Code Do Not Modify
-- package org.allbinary.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESGraphicsCompositeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "openGLESGraphicsFactory" (<- JR.new "OpenGLESGraphicsFactory" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLESGraphicsCompositeFactory" "instance" (<- JR.new "OpenGLESGraphicsCompositeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLESGraphicsCompositeFactory" "instance")


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_openGLESGraphicsFactory : JV := (JR.arg jargs 0)
    JR.setField this "openGLESGraphicsFactory" l_openGLESGraphicsFactory
    pure JV.null


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "openGLESGraphicsFactory")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESGraphicsCompositeFactory",
    javaName := "org.allbinary.device.OpenGLESGraphicsCompositeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("openGLESGraphicsFactory", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("set_1", #["OpenGLESGraphicsFactory"], false, m_set_1), 
        ("get_0", #[], false, m_get_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESGraphicsCompositeFactory


