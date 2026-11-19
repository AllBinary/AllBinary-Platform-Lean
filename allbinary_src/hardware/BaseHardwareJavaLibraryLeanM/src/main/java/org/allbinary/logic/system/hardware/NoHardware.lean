-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.hardware
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoHardware

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoHardware" "instance" (<- JR.new "NoHardware" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoHardware" "instance")


def m_getComponent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.callStatic "NoHardwareComponent" "getInstance_0" #[])


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.str "No Hardware")


def m_compareTo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hardwareInterface : JV := (JR.arg jargs 0)
    return (JV.bool true)


def m_difference_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hardwareInterface : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "NULL_TABLE")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoHardware",
    javaName := "org.allbinary.logic.system.hardware.NoHardware",
    super := "Object",
    interfaces := #["HardwareInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getComponent_1", #["int"], false, m_getComponent_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("compareTo_1", #["HardwareInterface"], false, m_compareTo_1), 
        ("difference_1", #["HardwareInterface"], false, m_difference_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoHardware


