-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbeClientInformationData

def jfields (this : JV) : JM JV := do
    JR.setField this "KEY" (JV.str "KEY")
    JR.setField this "NAME" (JV.str "NAME")
    JR.setField this "VERSION" (JV.str "VERSION")
    JR.setField this "SPECIALNAME" (JV.str "SPECIALNAME")
    JR.setField this "LICENSEID" (JV.str "LICENSEID")
    JR.setField this "LICENSE_TYPE" (JV.str "LICENSETYPE")
    JR.setField this "PREVIOUSLICENSEID" (JV.str "PREVIOUSLICENSEID")
    JR.setField this "OSNAME" (JV.str "OSNAME")
    JR.setField this "OSARCH" (JV.str "OSARCH")
    JR.setField this "OSVERSION" (JV.str "OSVERSION")
    JR.setField this "OS" (JV.str "OS")
    JR.setField this "HARDWARE" (JV.str "HARDWARE")
    JR.setField this "LICENSESERVERS" (JV.str "LICENSESERVERS")
    JR.setField this "NEWLICENSE" (JV.str "NEWLICENSE")
    JR.setField this "ISNEW" (JV.str "ISNEW")
    JR.setField this "SPECIAL" (JV.str "SPECIAL")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AbeClientInformationData" "instance" (<- JR.new "AbeClientInformationData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AbeClientInformationData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbeClientInformationData",
    javaName := "org.allbinary.logic.system.security.licensing.AbeClientInformationData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("KEY", JV.null), ("NAME", JV.null), ("VERSION", JV.null), ("SPECIALNAME", JV.null), ("LICENSEID", JV.null), ("LICENSE_TYPE", JV.null), ("PREVIOUSLICENSEID", JV.null), ("OSNAME", JV.null), ("OSARCH", JV.null), ("OSVERSION", JV.null), ("OS", JV.null), ("HARDWARE", JV.null), ("LICENSESERVERS", JV.null), ("NEWLICENSE", JV.null), ("ISNEW", JV.null), ("SPECIAL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbeClientInformationData


