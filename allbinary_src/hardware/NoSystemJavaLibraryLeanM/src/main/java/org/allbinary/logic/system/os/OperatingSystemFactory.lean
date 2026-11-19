-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OperatingSystemFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "genericOperatingSystem" (<- JR.getStatic "NoOperatingSystem" "NO_OPERATING_SYSTEM")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OperatingSystemFactory" "instance" (<- JR.new "OperatingSystemFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OperatingSystemFactory" "instance")


def m_getOperatingSystemInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    try
        let mut l_osString : JV := (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "OperatingSystem Info: ")]) "append_1" #[(<- JR.call (<- JR.getField this "genericOperatingSystem") "toString_0" #[])]) "toString_0" #[])
        let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[l_osString])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[l_osString, this, (<- JR.getField l_commonStrings "GET_INSTANCE")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "GET_INSTANCE"), l_e])
            pure ()
        else
            throw jex0
    return (<- JR.getField this "genericOperatingSystem")


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
    fields := #[("logUtil", JV.null), ("genericOperatingSystem", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getOperatingSystemInstance_0", #[], false, m_getOperatingSystemInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OperatingSystemFactory


