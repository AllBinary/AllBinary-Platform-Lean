-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullGameCanvasRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "gameStateFactory" (<- JR.callStatic "GameStateFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE" (<- JR.new "NullGameCanvasRunnable" #[])
    pure JV.null


def m_getTitle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_isPaused_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_unPause_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_pause_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isHighScoreSubmitted_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_setHighScoreSubmitted_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoreSubmitted : JV := (JR.arg jargs 0)
    pure JV.null


def m_processGameOver_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isGameOver_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    pure JV.null


def m_getCurrentStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "NULL_TABLE")


def m_getLoadStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "NULL_TABLE")


def m_setLoadStateHashtable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def m_setGameState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameState : JV := (JR.arg jargs 0)
    pure JV.null


def m_getGameState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.getField this "gameStateFactory") "NO_GAME_STATE")


def m_itemStateChanged_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_isRunning_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_setRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isRunning : JV := (JR.arg jargs 0)
    pure JV.null


def m_setThread_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_thread : JV := (JR.arg jargs 0)
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullGameCanvasRunnable",
    javaName := "org.allbinary.game.displayable.canvas.NullGameCanvasRunnable",
    super := "Object",
    interfaces := #["GameCanvasRunnableInterface"],
    isInterface := false,
    fields := #[("gameStateFactory", JV.null)],
    statics := #[("NULL_GAME_CANVAS_RUNNABLE", JV.null)],
    methods := #[
        ("getTitle_0", #[], false, m_getTitle_0), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("isPaused_0", #[], false, m_isPaused_0), 
        ("unPause_0", #[], false, m_unPause_0), 
        ("pause_0", #[], false, m_pause_0), 
        ("isHighScoreSubmitted_0", #[], false, m_isHighScoreSubmitted_0), 
        ("setHighScoreSubmitted_1", #["boolean"], false, m_setHighScoreSubmitted_1), 
        ("processGameOver_0", #[], false, m_processGameOver_0), 
        ("isGameOver_0", #[], false, m_isGameOver_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("getCurrentStateHashtable_0", #[], false, m_getCurrentStateHashtable_0), 
        ("getLoadStateHashtable_0", #[], false, m_getLoadStateHashtable_0), 
        ("setLoadStateHashtable_1", #["ABHashtable"], false, m_setLoadStateHashtable_1), 
        ("getType_0", #[], false, m_getType_0), 
        ("setGameState_1", #["GameState"], false, m_setGameState_1), 
        ("getGameState_0", #[], false, m_getGameState_0), 
        ("itemStateChanged_1", #["LcduiItem"], false, m_itemStateChanged_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("isRunning_0", #[], false, m_isRunning_0), 
        ("setRunning_1", #["boolean"], false, m_setRunning_1), 
        ("setThread_1", #["Thread"], false, m_setThread_1), 
        ("run_0", #[], false, m_run_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullGameCanvasRunnable


