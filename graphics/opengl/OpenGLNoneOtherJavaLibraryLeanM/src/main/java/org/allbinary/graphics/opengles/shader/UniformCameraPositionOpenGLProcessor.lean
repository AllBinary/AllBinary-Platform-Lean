-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_UniformCameraPositionOpenGLProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_shaderComposite : JV := (JR.arg jargs 0)
    let mut l_handleIndex : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "OpenGLObject3dProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "UniformCameraPositionOpenGLProcessor",
    javaName := "org.allbinary.graphics.opengles.shader.UniformCameraPositionOpenGLProcessor",
    super := "OpenGLObject3dProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process_2", #["GL10", "Any"], false, m_process_2), 
        ("jinit_2", #["ShaderComposite", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_UniformCameraPositionOpenGLProcessor


