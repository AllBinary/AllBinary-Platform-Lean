-- Generated Code Do Not Modify
-- package org.allbinary.logic.java.exception
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ExceptionUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (JV.str "No Stack Trace")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ExceptionUtil" "instance" (<- JR.new "ExceptionUtil" #[])
    JR.setStatic "ExceptionUtil" "PRETEND_EXCEPTION" (<- JR.new "Exception" #[(JV.str "Not Really An Exception")])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ExceptionUtil" "instance")


def m_getStackTrace_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_e : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_e "printStackTrace_0" #[])
    return (<- JR.getField this "NONE")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ExceptionUtil",
    javaName := "org.allbinary.logic.java.exception.ExceptionUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NONE", JV.null)],
    statics := #[("instance", JV.null), ("PRETEND_EXCEPTION", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getStackTrace_1", #["Throwable"], false, m_getStackTrace_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ExceptionUtil


