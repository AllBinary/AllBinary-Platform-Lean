-- Generated Code Do Not Modify
-- package org.allbinary.business.error
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ErrorData

def jfields (this : JV) : JM JV := do
    JR.setField this "NAME" (JV.str "ERROR_NAME")
    JR.setField this "TEXT" (JV.str "ERROR_TEXT")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ErrorData" "instance" (<- JR.new "ErrorData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ErrorData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ErrorData",
    javaName := "org.allbinary.business.error.ErrorData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NAME", JV.null), ("TEXT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ErrorData


