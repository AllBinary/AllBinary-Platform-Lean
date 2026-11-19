-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameConfigurationPersistanceSingleton

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameConfigurationPersistanceSingleton" "GAME_PERSISTANCE" (<- JR.new "GameConfigurationPersistanceSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameConfigurationPersistanceSingleton" "GAME_PERSISTANCE")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "KeyValuePersistance" this #[(<- JR.getField (<- JR.callStatic "GamePersistanceStrings" "getInstance_0" #[]) "SAVED_GAME_CONFIGURATION_RECORD_ID")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameConfigurationPersistanceSingleton",
    javaName := "org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton",
    super := "KeyValuePersistance",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("GAME_PERSISTANCE", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameConfigurationPersistanceSingleton


