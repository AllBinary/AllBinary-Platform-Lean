-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LockedUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LockedUtil" "instance" (<- JR.new "LockedUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LockedUtil" "instance")


def m_isLocked_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_isLockedFeature_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lockableFeatrue : JV := (JR.arg jargs 0)
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LockedUtil",
    javaName := "org.allbinary.logic.system.security.licensing.LockedUtil",
    super := "Object",
    interfaces := #["LockedUtilInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isLocked_0", #[], false, m_isLocked_0), 
        ("isLockedFeature_1", #["LockableFeature"], false, m_isLockedFeature_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LockedUtil


