-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os.solaris
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SolarisOperatingSystemFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SolarisOperatingSystemFactory" "instance" (<- JR.new "SolarisOperatingSystemFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SolarisOperatingSystemFactory" "instance")


def m_getOperatingSystemInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_operatingSystems : JV := (<- JR.callStatic "OperatingSystems" "getInstance_0" #[])
        let mut l_osName : JV := (<- JR.call (<- JR.callStatic "SystemProperties" "getInstance_0" #[]) "getName_0" #[])
        let mut l_operatingSystemInterface : JV := JV.null
        if JR.truth (<- JR.eq (<- JR.call l_osName "compareTo_1" #[(<- JR.getField l_operatingSystems "SOLARIS")]) (JV.int 0)) then
            l_operatingSystemInterface := (<- JR.new "SolarisOS" #[])
            pure ()
        else
            if JR.truth (<- JR.call l_operatingSystems "isUnknownSpecificOSAllowed_0" #[]) then
                l_operatingSystemInterface := (<- JR.new "SolarisOS" #[])
                pure ()
            else
                throw (<- JR.new "Exception" #[(<- JR.concat (JV.str "Specific Solaris OS Not Supported: ") l_osName)])
            pure ()
        return l_operatingSystemInterface
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            if JR.truth (<- JR.call (<- JR.getStatic "LogConfigTypes" "LOGGING") "contains_1" #[(<- JR.getField (<- JR.callStatic "LogConfigTypeFactory" "getInstance_0" #[]) "FACTORYERROR")]) then
                let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "GET_INSTANCE"), l_e])
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
    name := "SolarisOperatingSystemFactory",
    javaName := "org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getOperatingSystemInstance_0", #[], false, m_getOperatingSystemInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SolarisOperatingSystemFactory


