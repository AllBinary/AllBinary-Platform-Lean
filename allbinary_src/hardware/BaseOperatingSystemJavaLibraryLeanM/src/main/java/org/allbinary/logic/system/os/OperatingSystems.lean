-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OperatingSystems

def jfields (this : JV) : JM JV := do
    JR.setField this "LINUX" (JV.str "Linux")
    JR.setField this "WINDOWS" (JV.str "Windows")
    JR.setField this "SOLARIS" (JV.str "Solaris")
    JR.setField this "WINDOWS2000" (JV.str "Windows 2000")
    JR.setField this "WINDOWS_NT" (JV.str "Windows NT")
    JR.setField this "WINDOWS_10" (JV.str "Windows 10")
    JR.setField this "WINDOWS_11" (JV.str "Windows 11")
    JR.setField this "WINDOWS_VISTA" (JV.str "Windows Vista")
    JR.setField this "WINDOWS_XP" (JV.str "Windows XP")
    JR.setField this "ANDROID" (<- JR.getField this "LINUX")
    JR.setField this "HARMONY" (JV.str "HarmonyOS")
    JR.setField this "unknownSpecificOSAllowed" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OperatingSystems" "instance" (<- JR.new "OperatingSystems" #[])
    pure JV.null


def m_isUnknownSpecificOSAllowed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "unknownSpecificOSAllowed")


def m_setUnknownSpecificOSAllowed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aUnknownSpecificOSAllowed : JV := (JR.arg jargs 0)
    JR.setField this "unknownSpecificOSAllowed" l_aUnknownSpecificOSAllowed
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OperatingSystems" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OperatingSystems",
    javaName := "org.allbinary.logic.system.os.OperatingSystems",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LINUX", JV.null), ("WINDOWS", JV.null), ("SOLARIS", JV.null), ("WINDOWS2000", JV.null), ("WINDOWS_NT", JV.null), ("WINDOWS_10", JV.null), ("WINDOWS_11", JV.null), ("WINDOWS_VISTA", JV.null), ("WINDOWS_XP", JV.null), ("ANDROID", JV.null), ("HARMONY", JV.null), ("unknownSpecificOSAllowed", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("isUnknownSpecificOSAllowed_0", #[], false, m_isUnknownSpecificOSAllowed_0), 
        ("setUnknownSpecificOSAllowed_1", #["boolean"], false, m_setUnknownSpecificOSAllowed_1), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OperatingSystems


