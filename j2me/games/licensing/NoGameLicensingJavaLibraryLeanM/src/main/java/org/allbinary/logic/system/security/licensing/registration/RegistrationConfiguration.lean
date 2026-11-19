-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing.registration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RegistrationConfiguration

def jfields (this : JV) : JM JV := do
    JR.setField this "registrationCode" (JV.str "No Registration Code")
    JR.setField this "NAME" (JV.str "registrationid")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RegistrationConfiguration" "SINGLETON" (<- JR.new "RegistrationConfiguration" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "RegistrationConfiguration" "SINGLETON")


def m_read_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_write_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Registration Code: ")]) "append_1" #[(<- JR.call this "getRegistrationCode_0" #[])]) "toString_0" #[])


def m_setRegistrationCode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_registrationCode : JV := (JR.arg jargs 0)
    JR.setField this "registrationCode" l_registrationCode
    pure JV.null


def m_getRegistrationCode_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "registrationCode")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RegistrationConfiguration",
    javaName := "org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("registrationCode", JV.null), ("NAME", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("read_0", #[], false, m_read_0), 
        ("write_0", #[], false, m_write_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("setRegistrationCode_1", #["String"], false, m_setRegistrationCode_1), 
        ("getRegistrationCode_0", #[], false, m_getRegistrationCode_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RegistrationConfiguration


