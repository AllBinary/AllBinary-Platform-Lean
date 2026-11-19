-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.hardware
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HardwareFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "SINGLETON" (<- JR.callStatic "NoHardware" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HardwareFactory" "instance" (<- JR.new "HardwareFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HardwareFactory" "instance")


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_os : JV := (JR.arg jargs 0)
    try
        return (<- JR.getField this "SINGLETON")
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            throw l_e
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HardwareFactory",
    javaName := "org.allbinary.logic.system.hardware.HardwareFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SINGLETON", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_1", #["OperatingSystemInterface"], false, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HardwareFactory


