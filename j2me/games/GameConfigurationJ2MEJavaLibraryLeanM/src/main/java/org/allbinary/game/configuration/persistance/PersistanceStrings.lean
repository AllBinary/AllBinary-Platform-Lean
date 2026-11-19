-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PersistanceStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "SAVING" (JV.str "Saving: ")
    JR.setField this "NUMBER_OF_RECORDS" (JV.str "Number of records: ")
    JR.setField this "LOADING_ID" (JV.str "Loading data with id: ")
    JR.setField this "LOAD_ALL" (JV.str "loadAll")
    JR.setField this "DELETING_WITH_ID" (JV.str "Deleting data with id: ")
    JR.setField this "CLOSING_RECORDSTORE" (JV.str "Closing RecordStore")
    JR.setField this "NOT_SAVING" (JV.str "Not Saving: ")
    JR.setField this "ERROR_LOADING" (JV.str "Error Loading gameActionInput: ")
    JR.setField this "ERROR_LOADING_ID" (JV.str "Error Loading id: ")
    JR.setField this "ID" (JV.str " id: ")
    JR.setField this "GAME_ACTION_INPUT" (JV.str " GameActionInput: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PersistanceStrings" "instance" (<- JR.new "PersistanceStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PersistanceStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PersistanceStrings",
    javaName := "org.allbinary.game.configuration.persistance.PersistanceStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SAVING", JV.null), ("NUMBER_OF_RECORDS", JV.null), ("LOADING_ID", JV.null), ("LOAD_ALL", JV.null), ("DELETING_WITH_ID", JV.null), ("CLOSING_RECORDSTORE", JV.null), ("NOT_SAVING", JV.null), ("ERROR_LOADING", JV.null), ("ERROR_LOADING_ID", JV.null), ("ID", JV.null), ("GAME_ACTION_INPUT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PersistanceStrings


