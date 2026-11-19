-- Generated Code Do Not Modify
-- package org.allbinary.thirdparty.store
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThirdPartyStore

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_authorize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_clientInformationInterface : JV := (JR.arg jargs 0)
    pure JV.null


def m_isAuthorized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "authorized")


def m_setAuthorized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_authorized : JV := (JR.arg jargs 0)
    JR.setField this "authorized" l_authorized
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    pure this

initialize JR.registerClass {
    name := "ThirdPartyStore",
    javaName := "org.allbinary.thirdparty.store.ThirdPartyStore",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("authorized", (JV.bool false)), ("name", JV.null)],
    statics := #[],
    methods := #[
        ("authorize_1", #["AbeClientInformationInterface"], false, m_authorize_1), 
        ("isAuthorized_0", #[], false, m_isAuthorized_0), 
        ("setAuthorized_1", #["boolean"], false, m_setAuthorized_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThirdPartyStore


