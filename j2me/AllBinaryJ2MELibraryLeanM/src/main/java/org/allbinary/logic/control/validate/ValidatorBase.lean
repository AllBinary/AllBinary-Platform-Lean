-- Generated Code Do Not Modify
-- package org.allbinary.logic.control.validate
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ValidatorBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ValidatorBase" "instance" (<- JR.new "ValidatorBase" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ValidatorBase" "instance")


def m_isValid_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")


def m_validationInfo_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_toHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "NULL_TABLE")


def m_toList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ValidatorBase",
    javaName := "org.allbinary.logic.control.validate.ValidatorBase",
    super := "Object",
    interfaces := #["ValidatorBaseInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isValid_0", #[], false, m_isValid_0), 
        ("validationInfo_0", #[], false, m_validationInfo_0), 
        ("toHashtable_0", #[], false, m_toHashtable_0), 
        ("toList_0", #[], false, m_toList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ValidatorBase


