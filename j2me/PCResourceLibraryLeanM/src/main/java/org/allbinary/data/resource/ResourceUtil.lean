-- Generated Code Do Not Modify
-- package org.allbinary.data.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResourceUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "path" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "ext" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ResourceUtil" "instance" (<- JR.new "ResourceUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ResourceUtil" "instance")


def m_setLoadingPaths_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_ext : JV := (JR.arg jargs 1)
    JR.setField this "path" l_path
    JR.setField this "ext" l_ext
    pure JV.null


def m_setClassLoader_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_classLoader : JV := (JR.arg jargs 0)
    pure JV.null


def m_getResourceAsStream_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_inputStream : JV := (<- JR.call this "getResourceAsStreamAtStart_2" #[l_resource, (JV.int 2)])
    if JR.truth (<- JR.eq l_inputStream JV.null) then
        l_inputStream := (<- JR.call this "getResourceAsStreamAtStart_2" #[l_resource, (JV.int 1)])
        if JR.truth (<- JR.eq l_inputStream JV.null) then
            throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Unable to obtain: ")]) "append_1" #[l_resource]) "toString_0" #[])])
        pure ()
    return l_inputStream


def m_getResourceAsStreamAtStart_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_startIndex : JV := (JR.asI (JR.arg jargs 1))
    let mut l_inputStream : JV := (<- JR.new "FileInputStream" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "path")]) "append_1" #[l_resource]) "append_1" #[(<- JR.getField this "ext")]) "toString_0" #[])])
    if JR.truth (<- JR.ne l_inputStream JV.null) then
        let mut l_byteArray : JV := (<- JR.newArray "B" 1 #[(<- JR.call l_inputStream "available_0" #[])])
        let _ := (<- JR.call (<- JR.callStatic "StreamUtil" "getInstance_0" #[]) "getByteArray_3" #[l_inputStream, (<- JR.new "ByteArrayOutputStream" #[]), l_byteArray])
        return (<- JR.new "ByteArrayInputStream" #[l_byteArray])
    return l_inputStream


def m_addResource_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_value : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ResourceUtil",
    javaName := "org.allbinary.data.resource.ResourceUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("path", JV.null), ("ext", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setLoadingPaths_2", #["String", "String"], false, m_setLoadingPaths_2), 
        ("setClassLoader_1", #["ClassLoader"], false, m_setClassLoader_1), 
        ("getResourceAsStream_1", #["String"], false, m_getResourceAsStream_1), 
        ("getResourceAsStreamAtStart_2", #["String", "int"], false, m_getResourceAsStreamAtStart_2), 
        ("addResource_2", #["String", "Integer"], false, m_addResource_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResourceUtil


