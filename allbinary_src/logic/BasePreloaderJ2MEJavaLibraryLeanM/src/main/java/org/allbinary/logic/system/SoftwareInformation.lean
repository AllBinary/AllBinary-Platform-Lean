-- Generated Code Do Not Modify
-- package org.allbinary.logic.system
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SoftwareInformation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_getVersion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "version")


def m_toShortString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "shortName")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_NAME : JV := (JV.str "Name: ")
    let mut l_VERSION : JV := (JV.str "Version: ")
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_NAME])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_VERSION])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getVersion_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_version : JV := (JR.arg jargs 1)
    let mut l_shortName : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    JR.setField this "version" l_version
    JR.setField this "shortName" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_shortName]) "append_1" #[(<- JR.callStatic "KotlinUtil" "getShortName_0" #[])]) "toString_0" #[])
    pure this

initialize JR.registerClass {
    name := "SoftwareInformation",
    javaName := "org.allbinary.logic.system.SoftwareInformation",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("shortName", JV.null), ("version", JV.null)],
    statics := #[],
    methods := #[
        ("getName_0", #[], false, m_getName_0), 
        ("getVersion_0", #[], false, m_getVersion_0), 
        ("toShortString_0", #[], false, m_toShortString_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_3", #["String", "String", "String"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SoftwareInformation


