-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.http
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HttpData

def jfields (this : JV) : JM JV := do
    JR.setField this "URL_LABEL" (JV.str "Url: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HttpData" "instance" (<- JR.new "HttpData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HttpData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    JR.setField this "EQUALS" (<- JR.getField l_commonSeps "EQUALS")
    JR.setField this "PARAM_SEP" (<- JR.getField l_commonSeps "AMPERSAND")
    JR.setField this "URL_PARAM_SEP" (<- JR.getField l_commonSeps "QUESTION")
    pure this

initialize JR.registerClass {
    name := "HttpData",
    javaName := "org.allbinary.logic.communication.http.HttpData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EQUALS", JV.null), ("PARAM_SEP", JV.null), ("URL_PARAM_SEP", JV.null), ("URL_LABEL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HttpData


