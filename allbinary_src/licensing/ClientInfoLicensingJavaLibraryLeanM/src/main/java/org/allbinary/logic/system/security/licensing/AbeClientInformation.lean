-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbeClientInformation

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.callInherited this "AbeClientInformation" "setOperatingSystemInterface_1" #[(<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])])
        let mut l_licenseInitInfo : JV := (<- JR.call (<- JR.callStatic "LicenseInitInfoUtil" "getInstance_0" #[]) "read_0" #[])
        let _ := (<- JR.callInherited this "AbeClientInformation" "setLicenseId_1" #[(<- JR.call l_licenseInitInfo "getLicenseId_0" #[])])
        let _ := (<- JR.callInherited this "AbeClientInformation" "setLicenseServers_1" #[(<- JR.call l_licenseInitInfo "getServerList_0" #[])])
        let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
        if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[(<- JR.callInherited this "AbeClientInformation" "getLicenseId_0" #[])]) then
            let mut l_NONE : JV := (JV.str "No License Id")
            let _ := (<- JR.callInherited this "AbeClientInformation" "setLicenseId_1" #[l_NONE])
            pure ()
        let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Special Name: ")]) "append_1" #[(<- JR.callInherited this "AbeClientInformation" "getSpecialName_0" #[])]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "CONSTRUCTOR")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_version : JV := (JR.arg jargs 1)
    let mut l_specialName : JV := (JR.arg jargs 2)
    let mut l_shortName : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "ClientInformation" this #[l_name, l_version, l_specialName, l_shortName]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbeClientInformation",
    javaName := "org.allbinary.logic.system.security.licensing.AbeClientInformation",
    super := "ClientInformation",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("jinit_4", #["String", "String", "String", "String"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbeClientInformation


