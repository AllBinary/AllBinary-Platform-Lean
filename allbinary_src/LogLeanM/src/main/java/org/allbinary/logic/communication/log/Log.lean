-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Log

def jfields (this : JV) : JM JV := do
    JR.setField this "logFormatUtil" (<- JR.callStatic "LogFormatUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getSpecialMessage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "specialMessage")


def m_getObject_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "anyType")


def m_getFunctionName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "functionName")


def m_getThrowable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "exception")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_className : JV := (<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "EMPTY")
    let mut l_clazz : JV := (<- JR.call (<- JR.getField this "anyType") "getClass_0" #[])
    if JR.truth (<- JR.ne (<- JR.call l_clazz "getName_0" #[]) JV.null) then
        l_className := (<- JR.call l_clazz "getName_0" #[])
        pure ()
    return (<- JR.call (<- JR.getField this "logFormatUtil") "get_4" #[l_className, (<- JR.getField this "functionName"), (<- JR.getField this "specialMessage"), (<- JR.getField this "exception")])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_exception : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "specialMessage" l_specialMessage
    JR.setField this "anyType" l_anyType
    JR.setField this "functionName" l_functionName
    JR.setField this "exception" l_exception
    pure this

initialize JR.registerClass {
    name := "Log",
    javaName := "org.allbinary.logic.communication.log.Log",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logFormatUtil", JV.null), ("specialMessage", JV.null), ("anyType", JV.null), ("functionName", JV.null), ("exception", JV.null)],
    statics := #[],
    methods := #[
        ("getSpecialMessage_0", #[], false, m_getSpecialMessage_0), 
        ("getObject_0", #[], false, m_getObject_0), 
        ("getFunctionName_0", #[], false, m_getFunctionName_0), 
        ("getThrowable_0", #[], false, m_getThrowable_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["String", "Any", "String", "Any"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Log


