-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompositeShaderUpdater

def jfields (this : JV) : JM JV := do
    JR.setField this "commonSeps" (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CompositeShaderUpdater" "instanceC" (<- JR.new "CompositeShaderUpdater" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[]), (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[]), (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[]), (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CompositeShaderUpdater" "instanceC")


def m_onSurfaceCreated_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_eglConfig : JV := (JR.arg jargs 1)
    let mut l_programHandle : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_onSurfaceDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_uniformBlockArray : JV := (JR.arg jargs 0)
    let mut l_uniformArray : JV := (JR.arg jargs 1)
    let mut l_attributeArray : JV := (JR.arg jargs 2)
    let mut l_attributeHandleArray : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "ShaderUpdater" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CompositeShaderUpdater",
    javaName := "org.allbinary.graphics.opengles.shader.CompositeShaderUpdater",
    super := "ShaderUpdater",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonSeps", JV.null)],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("onSurfaceCreated_3", #["GL10", "EGLConfig", "int"], false, m_onSurfaceCreated_3), 
        ("onSurfaceDestroyed_1", #["GL10"], false, m_onSurfaceDestroyed_1), 
        ("jinit_4", #["StringArr", "StringArr", "StringArr", "intArr"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompositeShaderUpdater


