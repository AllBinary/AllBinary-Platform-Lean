-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IntermissionFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "START_LEVEL_INTERMISSION_GAME_STATE" (<- JR.call (<- JR.callStatic "GameStateFactory" "getInstance_0" #[]) "createGameState_1" #[(JV.str "START_LEVEL_INTERMISSION_GAME_STATE")])
    JR.setField this "WAIT_LEVEL_INTERMISSION_GAME_STATE" (<- JR.call (<- JR.callStatic "GameStateFactory" "getInstance_0" #[]) "createGameState_1" #[(JV.str "WAIT_LEVEL_INTERMISSION_GAME_STATE")])
    JR.setField this "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE" (<- JR.call (<- JR.callStatic "GameStateFactory" "getInstance_0" #[]) "createGameState_1" #[(JV.str "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")])
    JR.setField this "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE" (<- JR.call (<- JR.callStatic "GameStateFactory" "getInstance_0" #[]) "createGameState_1" #[(JV.str "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "IntermissionFactory" "instance" (<- JR.new "IntermissionFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "IntermissionFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "IntermissionFactory",
    javaName := "org.allbinary.game.IntermissionFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("START_LEVEL_INTERMISSION_GAME_STATE", JV.null), ("WAIT_LEVEL_INTERMISSION_GAME_STATE", JV.null), ("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE", JV.null), ("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IntermissionFactory


