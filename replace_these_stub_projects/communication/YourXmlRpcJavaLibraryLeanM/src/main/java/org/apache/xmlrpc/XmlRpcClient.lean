-- Generated Code Do Not Modify
-- package org.apache.xmlrpc
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_XmlRpcClient

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getURL_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "url")


def m_setBasicAuthentication_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_user : JV := (JR.arg jargs 0)
    let mut l_password : JV := (JR.arg jargs 1)
    pure JV.null


def m_execute_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_method : JV := (JR.arg jargs 0)
    let mut l_params : JV := (JR.arg jargs 1)
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")


def m_executeWithCrypt_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_method : JV := (JR.arg jargs 0)
    let mut l_params : JV := (JR.arg jargs 1)
    let mut l_cryptInterface : JV := (JR.arg jargs 2)
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_url : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "url" (<- JR.new "URL" #[l_url])
    pure this

initialize JR.registerClass {
    name := "XmlRpcClient",
    javaName := "org.apache.xmlrpc.XmlRpcClient",
    super := "Object",
    interfaces := #["XmlRpcHandler"],
    isInterface := false,
    fields := #[("url", JV.null)],
    statics := #[],
    methods := #[
        ("getURL_0", #[], false, m_getURL_0), 
        ("setBasicAuthentication_2", #["String", "String"], false, m_setBasicAuthentication_2), 
        ("execute_2", #["String", "BasicArrayList"], false, m_execute_2), 
        ("executeWithCrypt_3", #["String", "BasicArrayList", "CryptInterface"], false, m_executeWithCrypt_3), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_XmlRpcClient


