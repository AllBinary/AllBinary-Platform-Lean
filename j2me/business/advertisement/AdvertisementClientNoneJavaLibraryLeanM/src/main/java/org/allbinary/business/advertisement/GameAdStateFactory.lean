-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameAdStateFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "gameAdStateArray" (<- JR.arrayOf "L" #[(<- JR.new "GameAdState" #[(<- JR.new "AppNameLicensingAdConfiguration" #[])])])
    JR.setField this "gameAdState" (<- JR.aget (<- JR.getField this "gameAdStateArray") (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameAdStateFactory" "instance" (<- JR.new "GameAdStateFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameAdStateFactory" "instance")


def m_getCurrentInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameAdState")


def m_getInstanceForApp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_softwareInformation : JV := (JR.arg jargs 0)
    JR.setField this "gameAdState" (<- JR.aget (<- JR.getField this "gameAdStateArray") (JV.int 0))
    return (<- JR.aget (<- JR.getField this "gameAdStateArray") (JV.int 0))


def m_isEnabled_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameAdStateFactory",
    javaName := "org.allbinary.business.advertisement.GameAdStateFactory",
    super := "Object",
    interfaces := #["GameAdStateFactoryInterface"],
    isInterface := false,
    fields := #[("gameAdStateArray", JV.null), ("gameAdState", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getCurrentInstance_0", #[], false, m_getCurrentInstance_0), 
        ("getInstanceForApp_1", #["SoftwareInformation"], false, m_getInstanceForApp_1), 
        ("isEnabled_0", #[], false, m_isEnabled_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameAdStateFactory


