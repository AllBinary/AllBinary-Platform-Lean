-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ClientInformationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.getField l_commonStrings "NOT_IMPLEMENTED"), this, (<- JR.getField l_commonStrings "GET_INSTANCE")])
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    return (<- JR.new "ClientInformation" #[(<- JR.getField l_stringUtil "NULL_STRING"), (<- JR.getField l_stringUtil "NULL_STRING"), (<- JR.getField l_stringUtil "NULL_STRING"), (<- JR.getField l_stringUtil "NULL_STRING")])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ClientInformationFactory",
    javaName := "org.allbinary.logic.system.security.licensing.ClientInformationFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ClientInformationFactory


