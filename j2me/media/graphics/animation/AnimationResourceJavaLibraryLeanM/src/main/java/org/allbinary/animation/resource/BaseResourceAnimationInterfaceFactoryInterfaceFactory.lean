-- Generated Code Do Not Modify
-- package org.allbinary.animation.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseResourceAnimationInterfaceFactoryInterfaceFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Available List of Animations: ")]) "append_1" #[(<- JR.call (<- JR.getField this "hashtable") "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "INIT")])
    let _ := (<- JR.call this "setInitialized_1" #[(JV.bool true)])
    pure JV.null


def m_initImageCache_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_add_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_animationInterfaceFactoryInterface : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.call (<- JR.getField this "hashtable") "containsKey_1" #[l_resource]) then
        throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Resource Already Created: ")]) "append_1" #[l_resource]) "toString_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "hashtable") "put_2" #[l_resource, l_animationInterfaceFactoryInterface])
    pure JV.null


def m_getBasicAnimationInterfaceFactoryInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_basicAnimationInterfaceFactoryInterfaceCanBeNull : JV := (<- JR.call (<- JR.getField this "hashtable") "get_1" #[l_resource])
    if JR.truth (<- JR.eq l_basicAnimationInterfaceFactoryInterfaceCanBeNull JV.null) then
        return (<- JR.getStatic "NullAnimationFactory" "NULL_NOT_FOR_USE_ANIMATION_FACTORY")
    return l_basicAnimationInterfaceFactoryInterfaceCanBeNull


def m_getRectangle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_rectangleCanBeNull : JV := (<- JR.call (<- JR.getField this "rectangleHashtable") "get_1" #[l_resource])
    if JR.truth (<- JR.eq l_rectangleCanBeNull JV.null) then
        return (<- JR.getStatic "RectangleFactory" "SINGLETON")
    return l_rectangleCanBeNull


def m_addRectangle_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_rectangle : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "rectangleHashtable") "put_2" #[l_resource, l_rectangle])
    pure JV.null


def m_getRectangleArrayOfArrays_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_valueCanBeNull : JV := (<- JR.call (<- JR.getField this "rectangleArrayOfArraysHashtable") "get_1" #[l_resource])
    if JR.truth (<- JR.ne l_valueCanBeNull JV.null) then
        let mut l_rectangleArrayOfArrays : JV := l_valueCanBeNull
        return l_rectangleArrayOfArrays
    else
        return (<- JR.getStatic "RectangleFactory" "ARRAY_OF_ARRAYS")
    pure JV.null


def m_addRectangleArrayOfArrays_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_rectangleArrayOfArrays : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "rectangleArrayOfArraysHashtable") "put_2" #[l_resource, l_rectangleArrayOfArrays])
    pure JV.null


def m_isFeature_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_isLoadingLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_ALL") "getLevel_0" #[])) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call (<- JR.callInherited this "BaseResourceAnimationInterfaceFactoryInterfaceFactory" "getClass_0" #[]) "getName_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SEMICOLON")]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")]) "append_1" #[(<- JR.getField this "name")]) "toString_0" #[])


def m_getHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hashtable")


def m_getRectangleHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "rectangleHashtable")


def m_getRectangleArrayOfArraysHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "rectangleArrayOfArraysHashtable")


def m_setInitialized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initialized : JV := (JR.arg jargs 0)
    JR.setField this "initialized" l_initialized
    pure JV.null


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initialized")


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_hashtable : JV := (JR.arg jargs 1)
    let mut l_rectangleHashtable : JV := (JR.arg jargs 2)
    let mut l_rectangleArrayHashtable : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "hashtable" l_hashtable
    JR.setField this "rectangleHashtable" l_rectangleHashtable
    JR.setField this "rectangleArrayOfArraysHashtable" l_rectangleArrayHashtable
    JR.setField this "name" l_name
    pure this

initialize JR.registerClass {
    name := "BaseResourceAnimationInterfaceFactoryInterfaceFactory",
    javaName := "org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory",
    super := "Object",
    interfaces := #["FeatureResourceAnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("hashtable", JV.null), ("rectangleHashtable", JV.null), ("rectangleArrayOfArraysHashtable", JV.null), ("name", JV.null), ("initialized", (JV.bool false))],
    statics := #[],
    methods := #[
        ("getName_0", #[], false, m_getName_0), 
        ("init_1", #["int"], false, m_init_1), 
        ("initImageCache_2", #["ImageCache", "int"], false, m_initImageCache_2), 
        ("add_2", #["String", "BasicAnimationInterfaceFactoryInterface"], false, m_add_2), 
        ("getBasicAnimationInterfaceFactoryInstance_1", #["String"], false, m_getBasicAnimationInterfaceFactoryInstance_1), 
        ("getRectangle_1", #["String"], false, m_getRectangle_1), 
        ("addRectangle_2", #["String", "Rectangle"], false, m_addRectangle_2), 
        ("getRectangleArrayOfArrays_1", #["String"], false, m_getRectangleArrayOfArrays_1), 
        ("addRectangleArrayOfArrays_2", #["String", "RectangleArrArr"], false, m_addRectangleArrayOfArrays_2), 
        ("isFeature_0", #[], false, m_isFeature_0), 
        ("isLoadingLevel_1", #["int"], false, m_isLoadingLevel_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("getHashtable_0", #[], false, m_getHashtable_0), 
        ("getRectangleHashtable_0", #[], false, m_getRectangleHashtable_0), 
        ("getRectangleArrayOfArraysHashtable_0", #[], false, m_getRectangleArrayOfArraysHashtable_0), 
        ("setInitialized_1", #["boolean"], false, m_setInitialized_1), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("jinit_4", #["String", "ABHashtable", "ABHashtable", "ABHashtable"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseResourceAnimationInterfaceFactoryInterfaceFactory


