-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StoreAppClientInformation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getLongArrayIdentifier_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "longArrayIdentifier")


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_version : JV := (JR.arg jargs 1)
    let mut l_specialName : JV := (JR.arg jargs 2)
    let mut l_shortName : JV := (JR.arg jargs 3)
    let mut l_longArrayIdentifier : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "AbeClientInformation" this #[l_name, l_version, l_specialName, l_shortName]
    let _ <- jfields this
    JR.setField this "longArrayIdentifier" l_longArrayIdentifier
    pure this

initialize JR.registerClass {
    name := "StoreAppClientInformation",
    javaName := "org.allbinary.logic.system.security.licensing.StoreAppClientInformation",
    super := "AbeClientInformation",
    interfaces := #["LongArrayIdentifierInterface"],
    isInterface := false,
    fields := #[("longArrayIdentifier", JV.null)],
    statics := #[],
    methods := #[
        ("getLongArrayIdentifier_0", #[], false, m_getLongArrayIdentifier_0), 
        ("jinit_5", #["String", "String", "String", "String", "longArr"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StoreAppClientInformation


