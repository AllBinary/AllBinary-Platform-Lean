-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LogFormatUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "timeStampUtil" (<- JR.callStatic "TimeStampUtil" "getInstance_0" #[])
    JR.setField this "commonSeps" (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    JR.setField this "NONE" (JV.str "None")
    JR.setField this "LOG_ERROR" (JV.str "\nLog-Error: ")
    JR.setField this "EMPTY" (JV.str "Empty")
    JR.setField this "STACK_TRACE" (JV.str "\nStack Trace: ")
    JR.setField this "TIME" (JV.str "Time: ")
    JR.setField this "CLASS_NAME" (<- JR.getField (<- JR.getField this "commonSeps") "SPACE")
    JR.setField this "FUNCTION_CALL" (<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "COLON_SEP")
    JR.setField this "SPECIAL_MESSAGE" (JV.str "> ")
    JR.setField this "stringUtil" (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    JR.setField this "exceptionUtil" (<- JR.callStatic "ExceptionUtil" "getInstance_0" #[])
    JR.setField this "nullUtil" (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LogFormatUtil" "instance" (<- JR.new "LogFormatUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LogFormatUtil" "instance")


def m_get_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_className : JV := (JR.arg jargs 0)
    let mut l_functionName : JV := (JR.arg jargs 1)
    let mut l_specialMessage : JV := (JR.arg jargs 2)
    let mut l_exception : JV := (JR.arg jargs 3)
    let mut l_stringBuffer : JV := (<- JR.call this "getF_2" #[l_className, l_functionName])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getO_1" #[l_exception])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "SPECIAL_MESSAGE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_specialMessage])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "NEW_LINE")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getS_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_className : JV := (JR.arg jargs 0)
    let mut l_functionName : JV := (JR.arg jargs 1)
    let mut l_specialMessage : JV := (JR.arg jargs 2)
    let mut l_stringBuffer : JV := (<- JR.call this "getF_2" #[l_className, l_functionName])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "SPECIAL_MESSAGE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_specialMessage])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "NEW_LINE")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getF_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_className : JV := (JR.arg jargs 0)
    let mut l_functionName : JV := (JR.arg jargs 1)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "TIME")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "timeStampUtil") "getAsString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "CLASS_NAME")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_className])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "FUNCTION_CALL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_functionName])
    return l_stringBuffer


def m_getO_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_exception : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne l_exception (<- JR.getField (<- JR.getField this "nullUtil") "NULL_OBJECT")) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "LOG_ERROR")])
        let mut l_exceptionAsString : JV := (<- JR.call l_exception "toString_0" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[l_exceptionAsString])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "STACK_TRACE")])
        if JR.truth (<- JR.ne l_exception (<- JR.getField (<- JR.getField this "nullUtil") "NULL_OBJECT")) then
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "exceptionUtil") "getStackTrace_1" #[l_exception])])
            pure ()
        else
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "stringUtil") "NULL_STRING")])
            pure ()
        return (<- JR.call l_stringBuffer "toString_0" #[])
    else
        return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LogFormatUtil",
    javaName := "org.allbinary.logic.communication.log.LogFormatUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("timeStampUtil", JV.null), ("commonSeps", JV.null), ("NONE", JV.null), ("LOG_ERROR", JV.null), ("EMPTY", JV.null), ("STACK_TRACE", JV.null), ("TIME", JV.null), ("CLASS_NAME", JV.null), ("FUNCTION_CALL", JV.null), ("SPECIAL_MESSAGE", JV.null), ("stringUtil", JV.null), ("exceptionUtil", JV.null), ("nullUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("get_4", #["String", "String", "String", "Any"], false, m_get_4), 
        ("getS_3", #["String", "String", "String"], false, m_getS_3), 
        ("getF_2", #["String", "String"], false, m_getF_2), 
        ("getO_1", #["Any"], false, m_getO_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LogFormatUtil


