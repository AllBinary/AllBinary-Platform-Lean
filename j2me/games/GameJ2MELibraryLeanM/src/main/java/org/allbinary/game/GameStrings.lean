-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "PROCESS_TICK" (JV.str "processTick")
    JR.setField this "ON_GAME_INITIALIZED" (JV.str "onGameInitialized")
    JR.setField this "UPDATESURFACE" (JV.str "updateSurface")
    JR.setField this "ON_SET_DISPLAYABLE" (JV.str "onSetDisplayable")
    JR.setField this "UNPAUSE" (JV.str "unPause")
    JR.setField this "TOGGLE_MENU" (JV.str "toggleMenu")
    JR.setField this "SET_GAME_OVER" (JV.str "setGameOver")
    JR.setField this "GAME_STATE" (JV.str "Game State: ")
    JR.setField this "SET_GAME_STATE" (JV.str "setGameState")
    JR.setField this "STOP_GAME_CANVAS_RUNNABLE_INTERFACE" (JV.str "stopGameCanvasRunnableInterface")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameStrings" "instance" (<- JR.new "GameStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameStrings",
    javaName := "org.allbinary.game.GameStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("PROCESS_TICK", JV.null), ("ON_GAME_INITIALIZED", JV.null), ("UPDATESURFACE", JV.null), ("ON_SET_DISPLAYABLE", JV.null), ("UNPAUSE", JV.null), ("TOGGLE_MENU", JV.null), ("SET_GAME_OVER", JV.null), ("GAME_STATE", JV.null), ("SET_GAME_STATE", JV.null), ("STOP_GAME_CANVAS_RUNNABLE_INTERFACE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameStrings


