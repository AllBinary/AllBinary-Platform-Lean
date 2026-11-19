-- Generated Code Do Not Modify
-- package org.allbinary.business.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseInitInfo

def jfields (this : JV) : JM JV := do
    JR.setField this "id" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "serverList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getLicenseId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "id")


def m_getServer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.call (<- JR.getField this "serverList") "get_1" #[l_index])


def m_getNumberOfServers_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "serverList") "size_0" #[]))


def m_setLicenseId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    JR.setField this "id" l_value
    pure JV.null


def m_clearServers_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "serverList") "clear_0" #[])
    pure JV.null


def m_setServer_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "serverList") "addAt_2" #[l_index, l_value])
    pure JV.null


def m_addServer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "serverList") "add_1" #[l_value])
    pure JV.null


def m_getServerList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "serverList")


def m_setServerList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_servers : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.callStatic "DebugFactory" "getInstance_0" #[]) (<- JR.callStatic "NoDebug" "getInstance_0" #[])) then
        JR.setField this "serverList" l_servers
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseInitInfo",
    javaName := "org.allbinary.business.init.LicenseInitInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("id", JV.null), ("serverList", JV.null)],
    statics := #[],
    methods := #[
        ("getLicenseId_0", #[], false, m_getLicenseId_0), 
        ("getServer_1", #["int"], false, m_getServer_1), 
        ("getNumberOfServers_0", #[], false, m_getNumberOfServers_0), 
        ("setLicenseId_1", #["String"], false, m_setLicenseId_1), 
        ("clearServers_0", #[], false, m_clearServers_0), 
        ("setServer_2", #["String", "int"], false, m_setServer_2), 
        ("addServer_1", #["String"], false, m_addServer_1), 
        ("getServerList_0", #[], false, m_getServerList_0), 
        ("setServerList_1", #["BasicArrayList"], false, m_setServerList_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseInitInfo


