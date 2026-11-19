-- Generated Code Do Not Modify
-- package org.allbinary.game.input.motion.action
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyCompleteMotionGestureInputEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "gameKey" (<- JR.getStatic "GameKey" "NULL_GAME_KEY")
    JR.setField this "gameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    JR.setField this "gameKeyEvent" l_gameKeyEvent
    pure JV.null


def m_getGameKeyEvent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameKeyEvent")


def m_setGameKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKey : JV := (JR.arg jargs 0)
    JR.setField this "gameKey" l_gameKey
    pure JV.null


def m_getGameKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameKey")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_motionGestureInput : JV := (JR.arg jargs 1)
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "CompleteMotionGestureInputEvent" this #[l_name, l_motionGestureInput]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameKeyCompleteMotionGestureInputEvent",
    javaName := "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent",
    super := "CompleteMotionGestureInputEvent",
    interfaces := #["GameKeyEventSourceInterface"],
    isInterface := false,
    fields := #[("gameKey", JV.null), ("gameKeyEvent", JV.null)],
    statics := #[],
    methods := #[
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("update_0", #[], false, m_update_0), 
        ("setGameKeyEvent_1", #["GameKeyEvent"], false, m_setGameKeyEvent_1), 
        ("getGameKeyEvent_0", #[], false, m_getGameKeyEvent_0), 
        ("setGameKey_1", #["GameKey"], false, m_setGameKey_1), 
        ("getGameKey_0", #[], false, m_getGameKey_0), 
        ("jinit_3", #["String", "MotionGestureInput", "InputToGameKeyMapping"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyCompleteMotionGestureInputEvent


