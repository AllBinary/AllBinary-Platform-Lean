-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.hardware
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HardwareFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HardwareFactory" "instance" (<- JR.new "HardwareFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HardwareFactory" "instance")


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_os : JV := (JR.arg jargs 0)
    try
        let mut l_operatingSystems : JV := (<- JR.callStatic "OperatingSystems" "getInstance_0" #[])
        if JR.truth (<- JR.eq (<- JR.call (<- JR.call l_os "getName_0" #[]) "compareTo_1" #[(<- JR.getField l_operatingSystems "LINUX")]) (JV.int 0)) then
            return (<- JR.new "LinuxHardware" #[])
        else
            if JR.truth (<- JR.ge (<- JR.call (<- JR.call l_os "getName_0" #[]) "indexOf_1" #[(<- JR.getField l_operatingSystems "WINDOWS")]) (JV.int 0)) then
                return (<- JR.new "WindowsHardware" #[])
        throw (<- JR.new "Exception" #[(<- JR.concat (JV.str "No Hardware Imp for: ") (<- JR.call l_os "getName_0" #[]))])
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
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_1", #["GenericOperatingSystem"], true, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HardwareFactory


