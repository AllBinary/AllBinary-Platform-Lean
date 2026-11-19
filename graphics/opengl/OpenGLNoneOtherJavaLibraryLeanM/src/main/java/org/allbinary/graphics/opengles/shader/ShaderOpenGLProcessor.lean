-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ShaderOpenGLProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process0_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_process1_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_process2_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_process3_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "OpenGLProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ShaderOpenGLProcessor",
    javaName := "org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor",
    super := "OpenGLProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process0_1", #["GL10"], false, m_process0_1), 
        ("process1_1", #["GL10"], false, m_process1_1), 
        ("process_1", #["GL10"], false, m_process_1), 
        ("process2_1", #["GL10"], false, m_process2_1), 
        ("process3_1", #["GL10"], false, m_process3_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ShaderOpenGLProcessor


