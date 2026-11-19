-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullRecordComparator

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullRecordComparator" "NULL_RECORD_COMPARATOR" (<- JR.new "NullRecordComparator" #[])
    pure JV.null


def m_compare_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rec1 : JV := (JR.arg jargs 0)
    let mut l_rec2 : JV := (JR.arg jargs 1)
    return (JR.asI (JV.int 0))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullRecordComparator",
    javaName := "org.allbinary.game.configuration.persistance.NullRecordComparator",
    super := "Object",
    interfaces := #["RecordComparator"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_RECORD_COMPARATOR", JV.null)],
    methods := #[
        ("compare_2", #["byteArr", "byteArr"], false, m_compare_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullRecordComparator


