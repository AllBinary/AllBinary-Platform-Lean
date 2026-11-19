-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.hardware.windows
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WindowsHardware

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getMultimedia_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getBridge_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getCpu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getEthernet_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getFireWire_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getHardDriveController_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getHardDrive_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getMachineAccessControlAddress_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getMonitor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getUsb_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getVideo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_getComponent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "RuntimeException" #[])


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


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
    name := "WindowsHardware",
    javaName := "org.allbinary.logic.system.hardware.windows.WindowsHardware",
    super := "Object",
    interfaces := #["HardwareInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getMultimedia_1", #["int"], false, m_getMultimedia_1), 
        ("getBridge_1", #["int"], false, m_getBridge_1), 
        ("getCpu_1", #["int"], false, m_getCpu_1), 
        ("getEthernet_1", #["int"], false, m_getEthernet_1), 
        ("getFireWire_1", #["int"], false, m_getFireWire_1), 
        ("getHardDriveController_1", #["int"], false, m_getHardDriveController_1), 
        ("getHardDrive_1", #["int"], false, m_getHardDrive_1), 
        ("getMachineAccessControlAddress_1", #["int"], false, m_getMachineAccessControlAddress_1), 
        ("getMonitor_1", #["int"], false, m_getMonitor_1), 
        ("getUsb_1", #["int"], false, m_getUsb_1), 
        ("getVideo_1", #["int"], false, m_getVideo_1), 
        ("getComponent_1", #["int"], false, m_getComponent_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("compareTo_1", #["HardwareInterface"], false, m_compareTo_1), 
        ("difference_1", #["HardwareInterface"], false, m_difference_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WindowsHardware


