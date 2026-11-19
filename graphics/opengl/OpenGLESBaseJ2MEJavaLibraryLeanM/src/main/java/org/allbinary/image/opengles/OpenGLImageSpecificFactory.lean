-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLImageSpecificFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "imageFactory" (<- JR.getStatic "OpenGLImageFactory" "NULL_OPENGL_IMAGE_FACTORY")
    JR.setField this "updating" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLImageSpecificFactory" "instance" (<- JR.new "OpenGLImageSpecificFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLImageSpecificFactory" "instance")


def m_setImageFactory_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageFactory : JV := (JR.arg jargs 0)
    JR.setField this "imageFactory" l_imageFactory
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Selected Image Factory: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.getField this "imageFactory")])]) "toString_0" #[]), this, (JV.str "setImageFactory")])
    pure JV.null


def m_getImageFactory_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "imageFactory")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLImageSpecificFactory",
    javaName := "org.allbinary.image.opengles.OpenGLImageSpecificFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageFactory", JV.null), ("updating", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setImageFactory_1", #["OpenGLImageFactory"], false, m_setImageFactory_1), 
        ("getImageFactory_0", #[], false, m_getImageFactory_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLImageSpecificFactory


