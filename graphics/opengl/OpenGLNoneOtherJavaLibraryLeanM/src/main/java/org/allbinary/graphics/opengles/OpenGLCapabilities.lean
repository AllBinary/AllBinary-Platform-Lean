-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLCapabilities

def jfields (this : JV) : JM JV := do
    JR.setField this "CUSTOM_GL_SURFACE_VIEW" (JV.bool true)
    JR.setField this "VERSION_1_0" (JV.str "1.0")
    JR.setField this "VERSION_1_1" (JV.str "1.1")
    JR.setField this "VERSION_2_0" (JV.str "2.0")
    JR.setField this "VERSION_3_0" (JV.str "3.0")
    JR.setField this "VERSION_3_1" (JV.str "3.1")
    JR.setField this "VERSION_3_2" (JV.str "3.2")
    JR.setField this "VERSION_HIGHER_THAN_EXISTS" (JV.str "999.999")
    JR.setField this "glVersion" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "shaderVersion" (JR.asI (JV.int 0))
    JR.setField this "glInstanceVersion" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "maxTextureSize" (JR.asI (JV.int 64))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLCapabilities" "instance" (<- JR.new "OpenGLCapabilities" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLCapabilities" "instance")


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_initCapabilities_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_isGlExtensionDrawTexture_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getGlVersion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "glVersion")


def m_isVertexBufferObjectSupport_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_isTextureSizeValid_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_widthAndHeight : JV := (JR.asI (JR.arg jargs 0))
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLCapabilities",
    javaName := "org.allbinary.graphics.opengles.OpenGLCapabilities",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("CUSTOM_GL_SURFACE_VIEW", (JV.bool false)), ("VERSION_1_0", JV.null), ("VERSION_1_1", JV.null), ("VERSION_2_0", JV.null), ("VERSION_3_0", JV.null), ("VERSION_3_1", JV.null), ("VERSION_3_2", JV.null), ("VERSION_HIGHER_THAN_EXISTS", JV.null), ("glVersion", JV.null), ("shaderVersion", (JV.int 0)), ("glInstanceVersion", JV.null), ("maxTextureSize", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("initCapabilities_1", #["Any"], false, m_initCapabilities_1), 
        ("isGlExtensionDrawTexture_0", #[], false, m_isGlExtensionDrawTexture_0), 
        ("getGlVersion_0", #[], false, m_getGlVersion_0), 
        ("isVertexBufferObjectSupport_0", #[], false, m_isVertexBufferObjectSupport_0), 
        ("isTextureSizeValid_1", #["int"], false, m_isTextureSizeValid_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLCapabilities


