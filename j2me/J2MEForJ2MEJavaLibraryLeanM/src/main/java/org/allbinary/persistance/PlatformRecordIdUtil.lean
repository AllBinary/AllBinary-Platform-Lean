-- Generated Code Do Not Modify
-- package org.allbinary.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformRecordIdUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "PLATFORM_SHORT_NAME" (JV.str "JME")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformRecordIdUtil" "instance" (<- JR.new "PlatformRecordIdUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PlatformRecordIdUtil" "instance")


def m_getRecordId_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_baseRecordId : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call l_abeClientInformation "toShortString_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "UNDERSCORE")]) "append_1" #[(<- JR.getField this "PLATFORM_SHORT_NAME")]) "append_1" #[l_baseRecordId]) "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformRecordIdUtil",
    javaName := "org.allbinary.persistance.PlatformRecordIdUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("PLATFORM_SHORT_NAME", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getRecordId_2", #["AbeClientInformationInterface", "String"], false, m_getRecordId_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformRecordIdUtil


