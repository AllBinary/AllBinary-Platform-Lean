-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LogUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logFormatUtil" (<- JR.callStatic "LogFormatUtil" "getInstance_0" #[])
    JR.setField this "LOG_SUCCESS" (JV.str "org.allbinary: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LogUtil" "instance" (<- JR.new "LogUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LogUtil" "instance")


def m_putL_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_log : JV := (JR.arg jargs 0)
    let mut l_specialMessage : JV := (<- JR.call l_log "getSpecialMessage_0" #[])
    let mut l_anyType : JV := (<- JR.call l_log "getObject_0" #[])
    let mut l_functionName : JV := (<- JR.call l_log "getFunctionName_0" #[])
    let mut l_exception : JV := (<- JR.call l_log "getThrowable_0" #[])
    let _ := (<- JR.call this "put_4" #[l_specialMessage, l_anyType, l_functionName, l_exception])
    pure JV.null


def m_putF_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_className : JV := (<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "EMPTY")
    if JR.truth (<- JR.ne (<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getName_0" #[]) JV.null) then
        l_className := (<- JR.new "String" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getName_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON")]) "append_1" #[(<- JR.callStatic "Integer" "toHexString_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[l_anyType])])]) "toString_0" #[])])
        pure ()
    let mut l_message : JV := (<- JR.call (<- JR.getField this "logFormatUtil") "getS_3" #[l_className, l_functionName, l_specialMessage])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "print_1" #[(<- JR.getField this "LOG_SUCCESS")])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[l_message])
    pure JV.null


def m_putFS_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_className : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_message : JV := (<- JR.call (<- JR.getField this "logFormatUtil") "getS_3" #[l_className, l_functionName, l_specialMessage])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "print_1" #[(<- JR.getField this "LOG_SUCCESS")])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[l_message])
    pure JV.null


def m_put_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_exception : JV := (JR.arg jargs 3)
    let mut l_className : JV := (<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "EMPTY")
    if JR.truth (<- JR.ne (<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getName_0" #[]) JV.null) then
        let mut l_hashCodeValue : JV := (JR.asI (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[l_anyType]))
        let mut l_hexString : JV := (<- JR.callStatic "Integer" "toHexString_1" #[l_hashCodeValue])
        l_className := (<- JR.new "String" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getName_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON")]) "append_1" #[l_hexString]) "toString_0" #[])])
        pure ()
    let mut l_message : JV := (<- JR.call (<- JR.getField this "logFormatUtil") "get_4" #[l_className, l_functionName, l_specialMessage, l_exception])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "print_1" #[(<- JR.getField this "LOG_SUCCESS")])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[l_message])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LogUtil",
    javaName := "org.allbinary.logic.communication.log.LogUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logFormatUtil", JV.null), ("LOG_SUCCESS", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("putL_1", #["Log"], false, m_putL_1), 
        ("putF_3", #["String", "Any", "String"], false, m_putF_3), 
        ("putFS_3", #["String", "String", "String"], false, m_putFS_3), 
        ("put_4", #["String", "Any", "String", "Any"], false, m_put_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LogUtil


