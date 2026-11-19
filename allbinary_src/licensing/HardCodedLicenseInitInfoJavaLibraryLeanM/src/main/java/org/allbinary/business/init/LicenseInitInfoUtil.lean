-- Generated Code Do Not Modify
-- package org.allbinary.business.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseInitInfoUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "INITFILENAME" (JV.str "licenseinitdata.dat")
    JR.setField this "ABOUT" (JV.str "about")
    JR.setField this "PRIVACY_POLICY" (JV.str "privacy_policy")
    JR.setField this "OFFICIAL_ALLBINARY_SERVICES_SERVER" (JV.str "https://services.allbinary.com/LicServ/serverssl.php")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LicenseInitInfoUtil" "instance" (<- JR.new "LicenseInitInfoUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LicenseInitInfoUtil" "instance")


def m_setFilePath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    pure JV.null


def m_write_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initData : JV := (JR.arg jargs 0)
    pure JV.null


def m_read_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "readAgain_1" #[(JV.int 0)])


def m_readAgain_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initializeCounter : JV := (JR.asI (JR.arg jargs 0))
    let mut l_licenseInitInfo : JV := (<- JR.new "LicenseInitInfo" #[])
    let _ := (<- JR.call l_licenseInitInfo "clearServers_0" #[])
    let _ := (<- JR.call l_licenseInitInfo "addServer_1" #[(<- JR.getField this "OFFICIAL_ALLBINARY_SERVICES_SERVER")])
    return l_licenseInitInfo


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseInitInfoUtil",
    javaName := "org.allbinary.business.init.LicenseInitInfoUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("INITFILENAME", JV.null), ("ABOUT", JV.null), ("PRIVACY_POLICY", JV.null), ("OFFICIAL_ALLBINARY_SERVICES_SERVER", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setFilePath_1", #["String"], false, m_setFilePath_1), 
        ("write_1", #["LicenseInitInfo"], false, m_write_1), 
        ("read_0", #[], false, m_read_0), 
        ("readAgain_1", #["int"], false, m_readAgain_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseInitInfoUtil


