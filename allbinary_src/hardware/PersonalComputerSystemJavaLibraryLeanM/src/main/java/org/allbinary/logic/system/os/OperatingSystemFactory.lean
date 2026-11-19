-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OperatingSystemFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "genericOperatingSystem" (<- JR.getStatic "NoOperatingSystem" "NO_OPERATING_SYSTEM")
    JR.setField this "hasDetected" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OperatingSystemFactory" "instance" (<- JR.new "OperatingSystemFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OperatingSystemFactory" "instance")


def m_getOperatingSystemInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_operatingSystems : JV := (<- JR.callStatic "OperatingSystems" "getInstance_0" #[])
        let mut l_systemProperties : JV := (<- JR.callStatic "SystemProperties" "getInstance_0" #[])
        let mut l_osName : JV := (<- JR.call l_systemProperties "getName_0" #[])
        let mut l_osArch : JV := (<- JR.call l_systemProperties "getArch_0" #[])
        let mut l_osVersion : JV := (<- JR.call l_systemProperties "getVersion_0" #[])
        if JR.truth (JR.not (<- JR.getField this "hasDetected")) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat (JV.str "osName: ") l_osName), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET_INSTANCE")])
            JR.setField this "hasDetected" (JV.bool true)
            if JR.truth (<- JR.ge (<- JR.call l_osName "indexOf_1" #[(<- JR.getField l_operatingSystems "LINUX")]) (JV.int 0)) then
                if JR.truth (<- JR.call (<- JR.getStatic "LogConfigTypes" "LOGGING") "contains_1" #[(<- JR.getField (<- JR.callStatic "LogConfigTypeFactory" "getInstance_0" #[]) "FACTORYERROR")]) then
                    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Found a Linux OS"), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET_INSTANCE")])
                    pure ()
                JR.setField this "genericOperatingSystem" (<- JR.call (<- JR.callStatic "LinuxOperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
                pure ()
            else
                if JR.truth (<- JR.ge (<- JR.call l_osName "indexOf_1" #[(<- JR.getField l_operatingSystems "WINDOWS")]) (JV.int 0)) then
                    if JR.truth (<- JR.call (<- JR.getStatic "LogConfigTypes" "LOGGING") "contains_1" #[(<- JR.getField (<- JR.callStatic "LogConfigTypeFactory" "getInstance_0" #[]) "FACTORYERROR")]) then
                        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Found a Windows OS"), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET_INSTANCE")])
                        pure ()
                    JR.setField this "genericOperatingSystem" (<- JR.call (<- JR.callStatic "WindowsOperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
                    pure ()
                else
                    if JR.truth (<- JR.ge (<- JR.call l_osName "indexOf_1" #[(<- JR.getField l_operatingSystems "SOLARIS")]) (JV.int 0)) then
                        if JR.truth (<- JR.call (<- JR.getStatic "LogConfigTypes" "LOGGING") "contains_1" #[(<- JR.getField (<- JR.callStatic "LogConfigTypeFactory" "getInstance_0" #[]) "FACTORYERROR")]) then
                            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Found a Solaris OS"), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET_INSTANCE")])
                            pure ()
                        JR.setField this "genericOperatingSystem" (<- JR.call (<- JR.callStatic "SolarisOperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
                        pure ()
                    else
                        throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "OS Not Supported: ")]) "append_1" #[l_osName]) "toString_0" #[])])
            let mut l_log : JV := (<- JR.callStatic "LogFactory" "getInstanceF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "OperatingSystem Info: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.getField this "genericOperatingSystem")])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET_INSTANCE")])
            let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.call l_log "toString_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putL_1" #[l_log])
            pure ()
        return (<- JR.getField this "genericOperatingSystem")
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            if JR.truth (<- JR.call (<- JR.getStatic "LogConfigTypes" "LOGGING") "contains_1" #[(<- JR.getField (<- JR.callStatic "LogConfigTypeFactory" "getInstance_0" #[]) "FACTORYERROR")]) then
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET_INSTANCE"), l_e])
                pure ()
            return (<- JR.getStatic "NoOperatingSystem" "NO_OPERATING_SYSTEM")
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OperatingSystemFactory",
    javaName := "org.allbinary.logic.system.os.OperatingSystemFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("genericOperatingSystem", JV.null), ("hasDetected", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getOperatingSystemInstance_0", #[], false, m_getOperatingSystemInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OperatingSystemFactory


