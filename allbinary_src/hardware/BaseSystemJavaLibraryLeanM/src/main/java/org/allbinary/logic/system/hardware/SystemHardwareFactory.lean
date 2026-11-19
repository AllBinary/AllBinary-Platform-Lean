-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.hardware
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SystemHardwareFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "hardwareInterface" (<- JR.callStatic "NoHardware" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SystemHardwareFactory" "instance" (<- JR.new "SystemHardwareFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SystemHardwareFactory" "instance")


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_operatingSystemInterface : JV := (JR.arg jargs 0)
    try
        if JR.truth (<- JR.eq (<- JR.getField this "hardwareInterface") (<- JR.callStatic "NoHardware" "getInstance_0" #[])) then
            JR.setField this "hardwareInterface" (<- JR.call (<- JR.callStatic "HardwareFactory" "getInstance_0" #[]) "getInstance_1" #[l_operatingSystemInterface])
            pure ()
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Found Hardware"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    return (<- JR.getField this "hardwareInterface")


def m_static_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_systemHardwareFactory : JV := (<- JR.callStatic "SystemHardwareFactory" "getInstance_0" #[])
    let mut l_osBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_osBuffer "append_1" #[(JV.str "Hardware Info: \n")])
    if JR.truth (<- JR.ne (<- JR.getField l_systemHardwareFactory "hardwareInterface") JV.null) then
        let _ := (<- JR.call l_osBuffer "append_1" #[(<- JR.call (<- JR.getField l_systemHardwareFactory "hardwareInterface") "toString_0" #[])])
        pure ()
    else
        let _ := (<- JR.call l_osBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")])
        pure ()
    return (<- JR.call l_osBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SystemHardwareFactory",
    javaName := "org.allbinary.logic.system.hardware.SystemHardwareFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("hardwareInterface", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_1", #["GenericOperatingSystem"], false, m_getInstance_1), 
        ("static_toString_0", #[], true, m_static_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SystemHardwareFactory


