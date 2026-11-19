-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullReader

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullReader" "NULL_READER" (<- JR.new "NullReader" #[])
    pure JV.null


def m_read_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def m_read_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cbuf : JV := (JR.arg jargs 0)
    let mut l_off : JV := (JR.asI (JR.arg jargs 1))
    let mut l_len : JV := (JR.asI (JR.arg jargs 2))
    return (JR.asI (JV.int (-1)))


def m_ready_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_skip_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_n : JV := (JR.asJ (JR.arg jargs 0))
    return (JR.asJ (JV.long 0))


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Reader" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullReader",
    javaName := "org.allbinary.logic.io.NullReader",
    super := "Reader",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_READER", JV.null)],
    methods := #[
        ("read_0", #[], false, m_read_0), 
        ("read_3", #["charArr", "int", "int"], false, m_read_3), 
        ("ready_0", #[], false, m_ready_0), 
        ("skip_1", #["long"], false, m_skip_1), 
        ("close_0", #[], false, m_close_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullReader


