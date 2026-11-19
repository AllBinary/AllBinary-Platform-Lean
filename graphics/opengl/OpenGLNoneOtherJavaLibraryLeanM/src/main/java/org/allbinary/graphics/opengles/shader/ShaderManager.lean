-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ShaderManager

def jfields (this : JV) : JM JV := do
    JR.setField this "LOAD_SHADER" (JV.str "loadShader")
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ShaderManager" "instance" (<- JR.new "ShaderManager" #[(JV.int (-1)), (JV.int (-1))])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ShaderManager" "instance")


def m_load_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_resource : JV := (JR.arg jargs 1)
    let mut l_shaderAsStringArray : JV := (JR.arg jargs 2)
    let mut l_shaderType : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (JV.int (-1)))


def m_loadShader_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_resource : JV := (JR.arg jargs 1)
    let mut l_stringList : JV := (JR.arg jargs 2)
    let mut l_shaderType : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (JV.int (-1)))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_GL_VERTEX_SHADER : JV := (JR.asI (JR.arg jargs 0))
    let mut l_GL_FRAGMENT_SHADER : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "GL_VERTEX_SHADER" (JR.asI l_GL_VERTEX_SHADER)
    JR.setField this "GL_FRAGMENT_SHADER" (JR.asI l_GL_FRAGMENT_SHADER)
    pure this

initialize JR.registerClass {
    name := "ShaderManager",
    javaName := "org.allbinary.graphics.opengles.shader.ShaderManager",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LOAD_SHADER", JV.null), ("commonStrings", JV.null), ("GL_VERTEX_SHADER", (JV.int 0)), ("GL_FRAGMENT_SHADER", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("load_4", #["GL10", "String", "StringArr", "int"], false, m_load_4), 
        ("loadShader_4", #["GL10", "String", "BasicArrayList", "int"], false, m_loadShader_4), 
        ("jinit_2", #["int", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ShaderManager


