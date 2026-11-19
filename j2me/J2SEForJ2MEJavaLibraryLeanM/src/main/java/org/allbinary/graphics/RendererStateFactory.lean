-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RendererStateFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "loaded" (JV.bool false)
    JR.setField this "surfaceChanged" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RendererStateFactory" "instance" (<- JR.new "RendererStateFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "RendererStateFactory" "instance")


def m_setLoaded_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_loaded : JV := (JR.arg jargs 0)
    JR.setField this "loaded" l_loaded
    pure JV.null


def m_isLoaded_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "loaded")


def m_setSurfaceChanged_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initialized : JV := (JR.arg jargs 0)
    JR.setField this "surfaceChanged" l_initialized
    pure JV.null


def m_isSurfaceChanged_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "surfaceChanged")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RendererStateFactory",
    javaName := "org.allbinary.graphics.RendererStateFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("loaded", (JV.bool false)), ("surfaceChanged", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setLoaded_1", #["boolean"], false, m_setLoaded_1), 
        ("isLoaded_0", #[], false, m_isLoaded_0), 
        ("setSurfaceChanged_1", #["boolean"], false, m_setSurfaceChanged_1), 
        ("isSurfaceChanged_0", #[], false, m_isSurfaceChanged_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RendererStateFactory


