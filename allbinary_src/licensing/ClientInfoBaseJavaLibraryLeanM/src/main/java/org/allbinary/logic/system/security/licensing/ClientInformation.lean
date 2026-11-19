-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ClientInformation

def jfields (this : JV) : JM JV := do
    JR.setField this "operatingSystemInterface" (<- JR.getStatic "NoOperatingSystem" "NO_OPERATING_SYSTEM")
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "hardSale" (JV.bool true)
    JR.setField this "licenseId" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "licenseServers" (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getOperatingSystemInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "operatingSystemInterface")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_getSpecialName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "specialName")


def m_getVersion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "version")


def m_getLicenseId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "licenseId")


def m_getLicenseServers_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "licenseServers")


def m_getLicenseServer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField (<- JR.getField this "licenseServers") "objectArray") l_index)


def m_getNumberOfLicenseServers_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "licenseServers") "size_0" #[]))


def m_toHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformationData : JV := (<- JR.callStatic "AbeClientInformationData" "getInstance_0" #[])
    let mut l_genericOperatingSystem : JV := (<- JR.call this "getOperatingSystemInterface_0" #[])
    let mut l_clientInfoHashtable : JV := (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "NAME"), (<- JR.getField this "name")])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "VERSION"), (<- JR.getField this "version")])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "SPECIALNAME"), (<- JR.getField this "specialName")])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "LICENSEID"), (<- JR.call this "getLicenseId_0" #[])])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "OSNAME"), (<- JR.call l_genericOperatingSystem "getName_0" #[])])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "OSARCH"), (<- JR.call l_genericOperatingSystem "getArch_0" #[])])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "OSVERSION"), (<- JR.call l_genericOperatingSystem "getVersion_0" #[])])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "OS"), (<- JR.call l_genericOperatingSystem "toString_0" #[])])
    let mut l_hardwareInterface : JV := (<- JR.call (<- JR.callStatic "SystemHardwareFactory" "getInstance_0" #[]) "getInstance_1" #[l_genericOperatingSystem])
    let mut l_hardwareString : JV := (<- JR.call l_hardwareInterface "toString_0" #[])
    let _ := (<- JR.call l_clientInfoHashtable "put_2" #[(<- JR.getField l_abeClientInformationData "HARDWARE"), l_hardwareString])
    return l_clientInfoHashtable


def m_isSameId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alicenseId : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[(<- JR.call this "getLicenseId_0" #[]), l_alicenseId]) (JV.int 0)) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_isLargerOrDifferentServerList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.sub (<- JR.call l_list "size_0" #[]) (JV.int 1)))
    let mut l_currentSize : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField this "licenseServers") "size_0" #[]) (JV.int 1)))
    if JR.truth (<- JR.gt l_size l_currentSize) then
        return (JV.bool true)
    if true then
        let mut l_index : JV := (JR.asI l_size)
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_newServerName : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            if true then
                let mut l_index2 : JV := (JR.asI l_currentSize)
                repeat
                    if !(JR.truth (<- JR.ge l_index2 (JV.int 0))) then break
                    let mut l_nextOldServerName : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "licenseServers") "objectArray") l_index)
                    if JR.truth (<- JR.ne (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[l_newServerName, l_nextOldServerName]) (JV.int 0)) then
                        return (JV.bool true)
                    l_index2 := (JR.dec l_index2)
                    pure ()
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JV.bool false)


def m_setHardSale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hardSale : JV := (JR.arg jargs 0)
    JR.setField this "hardSale" l_hardSale
    pure JV.null


def m_isHardSale_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hardSale")


def m_setOperatingSystemInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_operatingSystemInterface : JV := (JR.arg jargs 0)
    JR.setField this "operatingSystemInterface" l_operatingSystemInterface
    pure JV.null


def m_setLicenseId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_licenseId : JV := (JR.arg jargs 0)
    JR.setField this "licenseId" l_licenseId
    pure JV.null


def m_setLicenseServers_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_licenseServers : JV := (JR.arg jargs 0)
    JR.setField this "licenseServers" l_licenseServers
    pure JV.null


def m_toShortString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "shortName")


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_version : JV := (JR.arg jargs 1)
    let mut l_specialName : JV := (JR.arg jargs 2)
    let mut l_shortName : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    JR.setField this "version" l_version
    JR.setField this "specialName" l_specialName
    JR.setField this "shortName" (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_shortName]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "UNDERSCORE")]) "append_1" #[l_version]) "toString_0" #[])
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "ClientInformation",
    javaName := "org.allbinary.logic.system.security.licensing.ClientInformation",
    super := "Object",
    interfaces := #["AbeClientInformationInterface"],
    isInterface := false,
    fields := #[("operatingSystemInterface", JV.null), ("tsUtil", JV.null), ("name", JV.null), ("shortName", JV.null), ("version", JV.null), ("specialName", JV.null), ("hardSale", (JV.bool false)), ("licenseId", JV.null), ("licenseServers", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("getOperatingSystemInterface_0", #[], false, m_getOperatingSystemInterface_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("getSpecialName_0", #[], false, m_getSpecialName_0), 
        ("getVersion_0", #[], false, m_getVersion_0), 
        ("getLicenseId_0", #[], false, m_getLicenseId_0), 
        ("getLicenseServers_0", #[], false, m_getLicenseServers_0), 
        ("getLicenseServer_1", #["int"], false, m_getLicenseServer_1), 
        ("getNumberOfLicenseServers_0", #[], false, m_getNumberOfLicenseServers_0), 
        ("toHashtable_0", #[], false, m_toHashtable_0), 
        ("isSameId_1", #["String"], false, m_isSameId_1), 
        ("isLargerOrDifferentServerList_1", #["BasicArrayList"], false, m_isLargerOrDifferentServerList_1), 
        ("setHardSale_1", #["boolean"], false, m_setHardSale_1), 
        ("isHardSale_0", #[], false, m_isHardSale_0), 
        ("setOperatingSystemInterface_1", #["GenericOperatingSystem"], false, m_setOperatingSystemInterface_1), 
        ("setLicenseId_1", #["String"], false, m_setLicenseId_1), 
        ("setLicenseServers_1", #["BasicArrayList"], false, m_setLicenseServers_1), 
        ("toShortString_0", #[], false, m_toShortString_0), 
        ("jinit_4", #["String", "String", "String", "String"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ClientInformation


