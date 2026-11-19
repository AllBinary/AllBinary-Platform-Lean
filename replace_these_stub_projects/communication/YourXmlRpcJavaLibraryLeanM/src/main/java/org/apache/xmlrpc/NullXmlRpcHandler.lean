-- Generated Code Do Not Modify
-- package org.apache.xmlrpc
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullXmlRpcHandler

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullXmlRpcHandler" "NULL_XML_RPC_HANDLER" (<- JR.new "NullXmlRpcHandler" #[])
    pure JV.null


def m_execute_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_method : JV := (JR.arg jargs 0)
    let mut l_params : JV := (JR.arg jargs 1)
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullXmlRpcHandler",
    javaName := "org.apache.xmlrpc.NullXmlRpcHandler",
    super := "Object",
    interfaces := #["XmlRpcHandler"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_XML_RPC_HANDLER", JV.null)],
    methods := #[
        ("execute_2", #["String", "BasicArrayList"], false, m_execute_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullXmlRpcHandler


