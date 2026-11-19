-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" this "initImageCache_2" #[(<- JR.callStatic "OpenGLImageCacheFactory" "getInstance_0" #[]), l_level])
    pure JV.null


def m_isFeature_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")]) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" this #[(JV.str "OpenGL TouchButton Animations")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory",
    javaName := "org.allbinary.input.motion.button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory",
    super := "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_1", #["int"], false, m_init_1), 
        ("isFeature_0", #[], false, m_isFeature_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory


