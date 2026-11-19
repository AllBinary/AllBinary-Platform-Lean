-- Generated Code Do Not Modify
-- package org.allbinary.data.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResourceUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ResourceUtil" "instance" (<- JR.new "ResourceUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ResourceUtil" "instance")


def m_setLoadingPaths_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_ext : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "NOT_IMPLEMENTED"), this, (JV.str "setLoadingPaths")])
    pure JV.null


def m_getResourceAsStream_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_inputStream : JV := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resource])
    if JR.truth (<- JR.eq l_inputStream JV.null) then
        l_inputStream := (<- JR.call this "getResourceAsStreamAtStart_2" #[l_resource, (JV.int 2)])
        if JR.truth (<- JR.eq l_inputStream JV.null) then
            l_inputStream := (<- JR.call this "getResourceAsStreamAtStart_2" #[l_resource, (JV.int 1)])
            if JR.truth (<- JR.eq l_inputStream JV.null) then
                let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
                let mut l_index : JV := (JR.asI (<- JR.call l_resource "lastIndexOf_1" #[(JV.char 47)]))
                let mut l_resourcePath : JV := (<- JR.call l_resource "substring_1" #[(<- JR.add l_index (JV.int 1))])
                l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                if JR.truth (<- JR.eq l_inputStream JV.null) then
                    l_resourcePath := (<- JR.call l_resource "substring_1" #[l_index])
                    l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                    if JR.truth (<- JR.eq l_inputStream JV.null) then
                        let mut l_RES : JV := (JV.str "res")
                        l_resourcePath := (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_RES]) "append_1" #[(<- JR.call l_resource "substring_1" #[l_index])]) "toString_0" #[])
                        l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                        if JR.truth (<- JR.eq l_inputStream JV.null) then
                            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                            l_resourcePath := (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(JV.str "/")]) "append_1" #[l_RES]) "append_1" #[(<- JR.call l_resource "substring_1" #[l_index])]) "toString_0" #[])
                            l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                            let mut l_COLON : JV := (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON")
                            if JR.truth (<- JR.eq l_inputStream JV.null) then
                                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                                l_resourcePath := (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_RES]) "append_1" #[l_COLON]) "append_1" #[(<- JR.call l_resource "substring_1" #[l_index])]) "toString_0" #[])
                                l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                                if JR.truth (<- JR.eq l_inputStream JV.null) then
                                    let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                                    l_resourcePath := (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_RES]) "append_1" #[l_COLON]) "append_1" #[(<- JR.call l_resource "substring_1" #[(<- JR.add l_index (JV.int 1))])]) "toString_0" #[])
                                    l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                                    if JR.truth (<- JR.eq l_inputStream JV.null) then
                                        let mut l_RESOURCE_STRING : JV := (JV.str "resource")
                                        let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                                        l_resourcePath := (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_RESOURCE_STRING]) "append_1" #[l_COLON]) "append_1" #[(<- JR.call l_resource "substring_1" #[l_index])]) "toString_0" #[])
                                        l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                                        if JR.truth (<- JR.eq l_inputStream JV.null) then
                                            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                                            l_resourcePath := (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_RESOURCE_STRING]) "append_1" #[l_COLON]) "append_1" #[(<- JR.call l_resource "substring_1" #[(<- JR.add l_index (JV.int 1))])]) "toString_0" #[])
                                            l_inputStream := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
                                            if JR.truth (<- JR.eq l_inputStream JV.null) then
                                                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                                                throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(JV.str "Unable to obtain: ")]) "append_1" #[l_resource]) "toString_0" #[])])
                                            pure ()
                                        pure ()
                                    pure ()
                                pure ()
                            pure ()
                        pure ()
                    pure ()
                pure ()
            pure ()
        pure ()
    return l_inputStream


def m_getResourceAsStreamAtStart_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_startIndex : JV := (JR.asI (JR.arg jargs 1))
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_index : JV := (JR.asI (<- JR.call l_resource "indexOf_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON")]))
    let mut l_resourcePath : JV := (<- JR.call l_resource "substring_1" #[(<- JR.add l_index l_startIndex)])
    let mut l_inputStream : JV := (<- JR.call (<- JR.call l_resource "getClass_0" #[]) "getResourceAsStream_1" #[l_resourcePath])
    if JR.truth (<- JR.ne l_inputStream JV.null) then
        return l_inputStream
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
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setLoadingPaths_2", #["String", "String"], false, m_setLoadingPaths_2), 
        ("getResourceAsStream_1", #["String"], false, m_getResourceAsStream_1), 
        ("getResourceAsStreamAtStart_2", #["String", "int"], false, m_getResourceAsStreamAtStart_2), 
        ("addResource_2", #["String", "Integer"], false, m_addResource_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResourceUtil


