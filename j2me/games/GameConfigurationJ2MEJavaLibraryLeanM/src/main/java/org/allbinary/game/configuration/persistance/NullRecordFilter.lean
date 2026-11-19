-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullRecordFilter

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullRecordFilter" "NULL_RECORD_FILTER" (<- JR.new "NullRecordFilter" #[])
    pure JV.null


def m_matches_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_candidate : JV := (JR.arg jargs 0)
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullRecordFilter",
    javaName := "org.allbinary.game.configuration.persistance.NullRecordFilter",
    super := "Object",
    interfaces := #["RecordFilter"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_RECORD_FILTER", JV.null)],
    methods := #[
        ("matches_1", #["byteArr"], false, m_matches_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullRecordFilter


