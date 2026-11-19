-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PreLogUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_put_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[l_specialMessage, l_anyType, l_functionName, (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])
    pure JV.null


def m_putOE_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_exception : JV := (JR.arg jargs 3)
    let mut l_className : JV := (<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "EMPTY")
    if JR.truth (<- JR.ne (<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getName_0" #[]) JV.null) then
        l_className := (<- JR.new "String" #[(<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getName_0" #[])])
        pure ()
    let mut l_message : JV := (<- JR.call (<- JR.callStatic "LogFormatUtil" "getInstance_0" #[]) "get_4" #[l_className, l_functionName, l_specialMessage, l_exception])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "print_1" #[(<- JR.getStatic "PreLogUtil" "LOG_SUCCESS")])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[l_message])
    pure JV.null


def m_putS_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_className : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let _ := (<- JR.callStatic "PreLogUtil" "putSE_4" #[l_specialMessage, l_className, l_functionName, (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])
    pure JV.null


def m_putSE_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_className : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_exception : JV := (JR.arg jargs 3)
    let mut l_message : JV := (<- JR.call (<- JR.callStatic "LogFormatUtil" "getInstance_0" #[]) "get_4" #[l_className, l_functionName, l_specialMessage, l_exception])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "print_1" #[(<- JR.getStatic "PreLogUtil" "LOG_SUCCESS")])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[l_message])
    pure JV.null


def m_getClassName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getName_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PreLogUtil",
    javaName := "org.allbinary.logic.communication.log.PreLogUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("LOG_SUCCESS", (JV.str "org.allbinary: "))],
    methods := #[
        ("put_3", #["String", "Any", "String"], true, m_put_3), 
        ("putOE_4", #["String", "Any", "String", "Any"], true, m_putOE_4), 
        ("putS_3", #["String", "String", "String"], true, m_putS_3), 
        ("putSE_4", #["String", "String", "String", "Any"], true, m_putSE_4), 
        ("getClassName_1", #["Any"], true, m_getClassName_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PreLogUtil


