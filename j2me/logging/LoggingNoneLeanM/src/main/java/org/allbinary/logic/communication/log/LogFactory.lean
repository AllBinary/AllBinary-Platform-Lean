-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LogFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LogFactory" "LOG" (<- JR.new "Log" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])
    pure JV.null


def m_getInstanceD_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    let mut l_nullUtil : JV := (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    return (<- JR.new "Log" #[(<- JR.getField l_stringUtil "EMPTY_STRING"), (<- JR.getField l_nullUtil "NULL_OBJECT"), (<- JR.getField l_stringUtil "EMPTY_STRING"), (<- JR.getField l_nullUtil "NULL_OBJECT")])


def m_getInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_exception : JV := (JR.arg jargs 3)
    return (<- JR.getStatic "LogFactory" "LOG")


def m_getInstanceF_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    return (<- JR.getStatic "LogFactory" "LOG")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LogFactory",
    javaName := "org.allbinary.logic.communication.log.LogFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("LOG", JV.null)],
    methods := #[
        ("getInstanceD_0", #[], true, m_getInstanceD_0), 
        ("getInstance_4", #["String", "Any", "String", "Any"], true, m_getInstance_4), 
        ("getInstanceF_3", #["String", "Any", "String"], true, m_getInstanceF_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LogFactory


