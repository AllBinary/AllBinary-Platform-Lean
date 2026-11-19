-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.hardware.components.interfaces
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoHardwareComponent

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoHardwareComponent" "instance" (<- JR.new "NoHardwareComponent" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoHardwareComponent" "instance")


def m_compareTo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_componentInterface : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq this l_componentInterface) then
        return (JV.bool true)
    return (JV.bool false)


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoHardwareComponent",
    javaName := "org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent",
    super := "Object",
    interfaces := #["HardwareComponentInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("compareTo_1", #["HardwareComponentInterface"], false, m_compareTo_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoHardwareComponent


