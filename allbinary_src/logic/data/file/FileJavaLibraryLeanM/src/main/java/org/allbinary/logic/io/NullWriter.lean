-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullWriter

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullWriter" "NULL_WRITER" (<- JR.new "NullWriter" #[])
    pure JV.null


def m_write_1_int (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_c : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_write_3_charArr_int_int (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cbuf : JV := (JR.arg jargs 0)
    let mut l_off : JV := (JR.asI (JR.arg jargs 1))
    let mut l_len : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_write_1_String (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_str : JV := (JR.arg jargs 0)
    pure JV.null


def m_write_3_String_int_int (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_str : JV := (JR.arg jargs 0)
    let mut l_off : JV := (JR.asI (JR.arg jargs 1))
    let mut l_len : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_flush_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Writer" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullWriter",
    javaName := "org.allbinary.logic.io.NullWriter",
    super := "Writer",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_WRITER", JV.null)],
    methods := #[
        ("write_1", #["int"], false, m_write_1_int), 
        ("write_3", #["charArr", "int", "int"], false, m_write_3_charArr_int_int), 
        ("write_1", #["String"], false, m_write_1_String), 
        ("write_3", #["String", "int", "int"], false, m_write_3_String_int_int), 
        ("flush_0", #[], false, m_flush_0), 
        ("close_0", #[], false, m_close_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullWriter


