-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimpleShaderInitializer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SimpleShaderInitializer" "instanceC" (<- JR.new "SimpleShaderInitializer" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SimpleShaderInitializer" "instanceC")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "ShaderInitializer" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SimpleShaderInitializer",
    javaName := "org.allbinary.graphics.opengles.shader.SimpleShaderInitializer",
    super := "ShaderInitializer",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimpleShaderInitializer


