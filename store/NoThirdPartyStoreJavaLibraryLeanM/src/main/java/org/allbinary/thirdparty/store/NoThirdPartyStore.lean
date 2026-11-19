-- Generated Code Do Not Modify
-- package org.allbinary.thirdparty.store
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoThirdPartyStore

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_authorize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_clientInformationInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "NoThirdPartyStore" "setAuthorized_1" #[(JV.bool true)])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "ThirdPartyStore" this #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoThirdPartyStore",
    javaName := "org.allbinary.thirdparty.store.NoThirdPartyStore",
    super := "ThirdPartyStore",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("authorize_1", #["AbeClientInformationInterface"], false, m_authorize_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoThirdPartyStore


