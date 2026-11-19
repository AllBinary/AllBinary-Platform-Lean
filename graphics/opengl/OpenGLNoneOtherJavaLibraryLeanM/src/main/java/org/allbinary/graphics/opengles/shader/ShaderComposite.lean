-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ShaderComposite

def jfields (this : JV) : JM JV := do
    JR.setField this "useProgramShaderOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "shaderMatrixOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "colorEnableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "normalEnableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "vertexEnableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "textureEnableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "colorDisableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "normalDisableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "vertexDisableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "textureDisableVertexAttribArrayOpenGLProcessor" (<- JR.callStatic "NullOpenGLProcessorFactory" "getInstance_0" #[])
    JR.setField this "uniformLightPositionOpenGLProcessor" (<- JR.callStatic "NullOpenGLTextureProcessor" "getInstance_0" #[])
    JR.setField this "uniformLightColorOpenGLProcessor" (<- JR.callStatic "NullOpenGLTextureProcessor" "getInstance_0" #[])
    JR.setField this "uniformCameraPositionOpenGLProcessor" (<- JR.callStatic "NullOpenGLTextureProcessor" "getInstance_0" #[])
    JR.setField this "uniformTextureUnitOpenGLProcessor" (<- JR.callStatic "NullOpenGLTextureProcessor" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    JR.setField this "programHandle" (JR.asI (<- JR.call (<- JR.getField this "shaderInitializer") "init_3" #[l_gl, (<- JR.getField this "shaderArray"), (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[])]))
    pure JV.null


def jinit_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_requiresOpenGLVersion : JV := (JR.arg jargs 0)
    let mut l_shaderArray : JV := (JR.arg jargs 1)
    let mut l_compositeShaderUpdater : JV := (JR.arg jargs 2)
    let mut l_shaderInitializer : JV := (JR.arg jargs 3)
    let mut l_modelViewProjection : JV := (JR.arg jargs 4)
    let mut l_colorOpenGLProcessor : JV := (JR.arg jargs 5)
    let mut l_vertexOpenGLProcessor : JV := (JR.arg jargs 6)
    let mut l_disableProgramShaderOpenGLProcessor : JV := (JR.arg jargs 7)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "requiresOpenGLVersion" l_requiresOpenGLVersion
    JR.setField this "shaderArray" l_shaderArray
    JR.setField this "shaderInitializer" l_shaderInitializer
    JR.setField this "compositeShaderUpdater" l_compositeShaderUpdater
    JR.setField this "modelViewProjection" l_modelViewProjection
    JR.setField this "colorOpenGLProcessor" l_colorOpenGLProcessor
    JR.setField this "vertexOpenGLProcessor" l_vertexOpenGLProcessor
    JR.setField this "disableProgramShaderOpenGLProcessor" l_disableProgramShaderOpenGLProcessor
    pure this

initialize JR.registerClass {
    name := "ShaderComposite",
    javaName := "org.allbinary.graphics.opengles.shader.ShaderComposite",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("disableProgramShaderOpenGLProcessor", JV.null), ("requiresOpenGLVersion", JV.null), ("shaderArray", JV.null), ("shaderInitializer", JV.null), ("compositeShaderUpdater", JV.null), ("modelViewProjection", JV.null), ("colorOpenGLProcessor", JV.null), ("vertexOpenGLProcessor", JV.null), ("useProgramShaderOpenGLProcessor", JV.null), ("shaderMatrixOpenGLProcessor", JV.null), ("colorEnableVertexAttribArrayOpenGLProcessor", JV.null), ("normalEnableVertexAttribArrayOpenGLProcessor", JV.null), ("vertexEnableVertexAttribArrayOpenGLProcessor", JV.null), ("textureEnableVertexAttribArrayOpenGLProcessor", JV.null), ("colorDisableVertexAttribArrayOpenGLProcessor", JV.null), ("normalDisableVertexAttribArrayOpenGLProcessor", JV.null), ("vertexDisableVertexAttribArrayOpenGLProcessor", JV.null), ("textureDisableVertexAttribArrayOpenGLProcessor", JV.null), ("uniformLightPositionOpenGLProcessor", JV.null), ("uniformLightColorOpenGLProcessor", JV.null), ("uniformCameraPositionOpenGLProcessor", JV.null), ("uniformTextureUnitOpenGLProcessor", JV.null), ("programHandle", (JV.int 0))],
    statics := #[],
    methods := #[
        ("init_1", #["GL10"], false, m_init_1), 
        ("jinit_8", #["String", "ShaderArr", "CompositeShaderUpdater", "ShaderInitializer", "ModelViewProjection", "OpenGLProcessor", "OpenGLProcessor", "OpenGLProcessor"], false, jinit_8)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ShaderComposite


