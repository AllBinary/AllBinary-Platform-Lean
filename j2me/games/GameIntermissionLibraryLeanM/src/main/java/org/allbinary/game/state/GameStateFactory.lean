-- Generated Code Do Not Modify
-- package org.allbinary.game.state
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameStateFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "index" (JR.asI (JV.int 0))
    JR.setField this "NO_GAME_STATE" (<- JR.call this "createGameState_1" #[(JV.str "NO_GAME_STATE")])
    JR.setField this "PLAYING_GAME_STATE" (<- JR.call this "createGameState_1" #[(JV.str "PLAYING_GAME_STATE")])
    JR.setField this "SHOW_END_RESULT_GAME_STATE" (<- JR.call this "createGameState_1" #[(JV.str "SHOW_END_RESULT_GAME_STATE")])
    JR.setField this "SHOW_HIGH_SCORE_GAME_STATE" (<- JR.call this "createGameState_1" #[(JV.str "SHOW_HIGH_SCORE_GAME_STATE")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameStateFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GameStateFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GameStateFactory" "instance" (<- JR.new "GameStateFactory" #[])
        pure ()
    return (<- JR.getStatic "GameStateFactory" "instance")


def m_createGameState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let jtemp3 : JV := (<- JR.getField this "index")
    JR.setField this "index" (JR.inc jtemp3)
    return (<- JR.new "GameState" #[l_name, jtemp3])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameStateFactory",
    javaName := "org.allbinary.game.state.GameStateFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("index", (JV.int 0)), ("NO_GAME_STATE", JV.null), ("PLAYING_GAME_STATE", JV.null), ("SHOW_END_RESULT_GAME_STATE", JV.null), ("SHOW_HIGH_SCORE_GAME_STATE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createGameState_1", #["String"], false, m_createGameState_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameStateFactory


