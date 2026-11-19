-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LogFormatUtil

def jfields (this : JV) : JM JV := do
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
    throw (<- JR.new "RuntimeException" #[])


def m_getS_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_className : JV := (JR.arg jargs 0)
    let mut l_functionName : JV := (JR.arg jargs 1)
    let mut l_specialMessage : JV := (JR.arg jargs 2)
    throw (<- JR.new "RuntimeException" #[])


def m_getO_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_exception : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


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
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("get_4", #["String", "String", "String", "Any"], false, m_get_4), 
        ("getS_3", #["String", "String", "String"], false, m_getS_3), 
        ("getO_1", #["Any"], false, m_getO_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LogFormatUtil


