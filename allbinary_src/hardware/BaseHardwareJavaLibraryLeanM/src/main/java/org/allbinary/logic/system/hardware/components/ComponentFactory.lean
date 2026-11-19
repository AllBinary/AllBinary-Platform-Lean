-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.hardware.components
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ComponentFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "VGA" (<- JR.new "Component" #[(JV.str "VGA")])
    JR.setField this "IDE" (<- JR.new "Component" #[(JV.str "IDE")])
    JR.setField this "SCSI" (<- JR.new "Component" #[(JV.str "SCSI")])
    JR.setField this "BRIDGE" (<- JR.new "Component" #[(JV.str "bridge")])
    JR.setField this "ETHERNET" (<- JR.new "Component" #[(JV.str "Ethernet")])
    JR.setField this "USB" (<- JR.new "Component" #[(JV.str "USB")])
    JR.setField this "MULTIMEDIA" (<- JR.new "Component" #[(JV.str "Multimedia")])
    JR.setField this "PCI" (<- JR.new "Component" #[(JV.str "PCI")])
    JR.setField this "RAID" (<- JR.new "Component" #[(JV.str "RAID")])
    JR.setField this "SMBUS" (<- JR.new "Component" #[(JV.str "SMBus")])
    JR.setField this "PIC" (<- JR.new "Component" #[(JV.str "PIC")])
    JR.setField this "Class" (<- JR.new "Component" #[(JV.str "Class")])
    JR.setField this "UNKNOWN" (<- JR.new "Component" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "UNKNOWN")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ComponentFactory" "instance" (<- JR.new "ComponentFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ComponentFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ComponentFactory",
    javaName := "org.allbinary.logic.system.hardware.components.ComponentFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("VGA", JV.null), ("IDE", JV.null), ("SCSI", JV.null), ("BRIDGE", JV.null), ("ETHERNET", JV.null), ("USB", JV.null), ("MULTIMEDIA", JV.null), ("PCI", JV.null), ("RAID", JV.null), ("SMBUS", JV.null), ("PIC", JV.null), ("Class", JV.null), ("UNKNOWN", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ComponentFactory


