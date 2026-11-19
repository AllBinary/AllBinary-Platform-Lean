-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LicenseUtil" "instance" (<- JR.new "LicenseUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LicenseUtil" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isRunning_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_setRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_running : JV := (JR.arg jargs 0)
    pure JV.null


def m_shouldWait_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    return (<- JR.call this "isRunning_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseUtil",
    javaName := "org.allbinary.logic.system.security.licensing.LicenseUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("isRunning_0", #[], false, m_isRunning_0), 
        ("setRunning_1", #["boolean"], false, m_setRunning_1), 
        ("shouldWait_1", #["CommandListener"], false, m_shouldWait_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseUtil


