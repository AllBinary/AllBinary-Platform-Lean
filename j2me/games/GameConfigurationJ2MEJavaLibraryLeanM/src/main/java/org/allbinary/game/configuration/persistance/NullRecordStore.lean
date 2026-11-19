-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullRecordStore

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullRecordStore" "NULL_RECORD_STORE" (<- JR.new "NullRecordStore" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "RecordStore" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullRecordStore",
    javaName := "org.allbinary.game.configuration.persistance.NullRecordStore",
    super := "RecordStore",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_RECORD_STORE", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullRecordStore


