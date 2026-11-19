-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactory_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" #[(JV.str "TouchButton Animations")])


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "initImageCache_2" #[(<- JR.callStatic "ImageCacheFactory" "getInstance_0" #[]), l_level])
    pure JV.null


def m_initImageCache_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "isInitialized_0" #[]) then
        return JV.null
    let _ := (<- JR.callSuper "BaseResourceAnimationInterfaceFactoryInterfaceFactory" this "init_1" #[l_level])
    pure JV.null


def m_isLoadingLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_TOUCH") "getLevel_0" #[])) then
        return (JV.bool true)
    else
        return (<- JR.callSuper "BaseResourceAnimationInterfaceFactoryInterfaceFactory" this "isLoadingLevel_1" #[l_level])
    pure JV.null


def m_isFeature_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (JR.not (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")])) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "BaseResourceAnimationInterfaceFactoryInterfaceFactory" this #[l_name, (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[]), (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[]), (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
    javaName := "org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
    super := "BaseResourceAnimationInterfaceFactoryInterfaceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createFactory_0", #[], true, m_createFactory_0), 
        ("init_1", #["int"], false, m_init_1), 
        ("initImageCache_2", #["ImageCache", "int"], false, m_initImageCache_2), 
        ("isLoadingLevel_1", #["int"], false, m_isLoadingLevel_1), 
        ("isFeature_0", #[], false, m_isFeature_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory


