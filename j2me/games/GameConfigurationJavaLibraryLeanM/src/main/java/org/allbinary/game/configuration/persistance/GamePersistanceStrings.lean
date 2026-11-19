-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GamePersistanceStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "SAVED_GAME_RECORD_ID" (JV.str "_SG")
    JR.setField this "SAVED_GAME_CONFIGURATION_RECORD_ID" (JV.str "_SGC")
    JR.setField this "DEFAULT_INPUT_MAPPING_RECORD_ID" (JV.str "_DIM")
    JR.setField this "SAVED_INPUT_CONFIGURATION_RECORD_ID" (JV.str "_SIC")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GamePersistanceStrings" "instance" (<- JR.new "GamePersistanceStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GamePersistanceStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GamePersistanceStrings",
    javaName := "org.allbinary.game.configuration.persistance.GamePersistanceStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SAVED_GAME_RECORD_ID", JV.null), ("SAVED_GAME_CONFIGURATION_RECORD_ID", JV.null), ("DEFAULT_INPUT_MAPPING_RECORD_ID", JV.null), ("SAVED_INPUT_CONFIGURATION_RECORD_ID", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GamePersistanceStrings


