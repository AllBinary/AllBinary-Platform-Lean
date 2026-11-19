-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_EndGameProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "gameStateFactory" (<- JR.callStatic "GameStateFactory" "getInstance_0" #[])
    JR.setField this "WAIT" (JR.asJ (JV.long 5000))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "gameCanvas") "isHighScoreSubmitted_0" #[]) then
        if JR.truth (<- JR.call (<- JR.call (<- JR.getField this "gameCanvas") "getGameStateTimeHelper_0" #[]) "isElapsedTNT_1" #[(<- JR.getField this "WAIT")]) then
            if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "gameCanvas") "getGameState_0" #[]) (<- JR.getField (<- JR.getField this "gameStateFactory") "SHOW_END_RESULT_GAME_STATE")) then
                let mut l_highScoresBase : JV := (<- JR.getField (<- JR.getField this "gameCanvas") "highScoresHelper")
                let mut l_highScores : JV := (<- JR.call l_highScoresBase "getSelectedHighScores_0" #[])
                if JR.truth (<- JR.ne l_highScores (<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])) then
                    let _ := (<- JR.call l_highScoresBase "selectHighScores_0" #[])
                    let _ := (<- JR.call (<- JR.call (<- JR.getField this "gameCanvas") "getRealHighScoresPaintable_0" #[]) "setHighScores_1" #[l_highScores])
                    let _ := (<- JR.call (<- JR.getField this "gameCanvas") "setGameState_1" #[(<- JR.getField (<- JR.getField this "gameStateFactory") "SHOW_HIGH_SCORE_GAME_STATE")])
                    let _ := (<- JR.call (<- JR.getField this "gameCanvas") "setHighScoresPaintable_1" #[(<- JR.call (<- JR.getField this "gameCanvas") "getRealHighScoresPaintable_0" #[])])
                    pure ()
                pure ()
            else
                if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "gameCanvas") "getGameState_0" #[]) (<- JR.getField (<- JR.getField this "gameStateFactory") "SHOW_HIGH_SCORE_GAME_STATE")) then
                    let _ := (<- JR.call (<- JR.getField this "gameCanvas") "setGameState_1" #[(<- JR.getField (<- JR.getField this "gameStateFactory") "SHOW_END_RESULT_GAME_STATE")])
                    let _ := (<- JR.call (<- JR.getField this "gameCanvas") "setHighScoresPaintable_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
                    pure ()
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    JR.setField this "gameCanvas" l_gameCanvas
    pure this

initialize JR.registerClass {
    name := "EndGameProcessor",
    javaName := "org.allbinary.game.displayable.canvas.EndGameProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameStateFactory", JV.null), ("gameCanvas", JV.null), ("WAIT", (JV.long 0))],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_EndGameProcessor


