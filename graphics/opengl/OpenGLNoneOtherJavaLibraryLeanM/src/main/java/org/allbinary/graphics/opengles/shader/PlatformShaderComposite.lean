-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformShaderComposite

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_requiresOpenGLVersion : JV := (JR.arg jargs 0)
    let mut l_shaderArray : JV := (JR.arg jargs 1)
    let mut l_compositeShaderUpdater : JV := (JR.arg jargs 2)
    let mut l_shaderInitializer : JV := (JR.arg jargs 3)
    let mut l_modelViewProjection : JV := (JR.arg jargs 4)
    let mut l_colorOpenGLProcessor : JV := (JR.arg jargs 5)
    let mut l_vertexOpenGLProcessor : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "ShaderComposite" this #[l_requiresOpenGLVersion, l_shaderArray, l_compositeShaderUpdater, l_shaderInitializer, l_modelViewProjection, l_colorOpenGLProcessor, l_vertexOpenGLProcessor, (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformShaderComposite",
    javaName := "org.allbinary.graphics.opengles.shader.PlatformShaderComposite",
    super := "ShaderComposite",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_7", #["String", "ShaderArr", "CompositeShaderUpdater", "ShaderInitializer", "ModelViewProjection", "OpenGLProcessor", "OpenGLProcessor"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformShaderComposite


