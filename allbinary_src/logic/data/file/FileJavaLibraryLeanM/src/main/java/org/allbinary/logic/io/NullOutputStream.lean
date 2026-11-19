-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullOutputStream

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullOutputStream" "NULL_OUTPUT_STREAM" (<- JR.new "NullOutputStream" #[])
    pure JV.null


def m_write_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_b : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_write_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_b : JV := (JR.arg jargs 0)
    let mut l_off : JV := (JR.asI (JR.arg jargs 1))
    let mut l_len : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "OutputStream" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullOutputStream",
    javaName := "org.allbinary.logic.io.NullOutputStream",
    super := "OutputStream",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_OUTPUT_STREAM", JV.null)],
    methods := #[
        ("write_1", #["int"], false, m_write_1), 
        ("write_3", #["byteArr", "int", "int"], false, m_write_3), 
        ("close_0", #[], false, m_close_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullOutputStream


