-- Generated Code Do Not Modify
-- package org.apache.xmlrpc
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_XmlRpcException

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_code : JV := (JR.asI (JR.arg jargs 0))
    let mut l_message : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Exception" this #[l_message]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "XmlRpcException",
    javaName := "org.apache.xmlrpc.XmlRpcException",
    super := "Exception",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_2", #["int", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_XmlRpcException


