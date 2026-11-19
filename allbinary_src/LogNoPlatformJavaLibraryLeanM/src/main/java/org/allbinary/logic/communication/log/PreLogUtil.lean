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
    throw (<- JR.new "RuntimeException" #[])


def m_putSE_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialMessage : JV := (JR.arg jargs 0)
    let mut l_className : JV := (JR.arg jargs 1)
    let mut l_functionName : JV := (JR.arg jargs 2)
    let mut l_exception : JV := (JR.arg jargs 3)
    throw (<- JR.new "RuntimeException" #[])


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
    statics := #[],
    methods := #[
        ("put_3", #["String", "Any", "String"], true, m_put_3), 
        ("putOE_4", #["String", "Any", "String", "Any"], true, m_putOE_4), 
        ("putSE_4", #["String", "String", "String", "Any"], true, m_putSE_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PreLogUtil


