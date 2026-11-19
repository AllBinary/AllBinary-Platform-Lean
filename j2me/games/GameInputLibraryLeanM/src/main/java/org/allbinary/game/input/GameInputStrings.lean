-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInputStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "PROCESS_INPUT" (JV.str "processInput")
    JR.setField this "KEY_PRESSED" (JV.str "keyPressed")
    JR.setField this "KEY_RELEASED" (JV.str "keyReleased")
    JR.setField this "KEY_REPEATED" (JV.str "keyRepeated")
    JR.setField this "ON_PRESS_GAME_KEY" (JV.str "onPressGameKeyEvent")
    JR.setField this "ON_DOWN_GAME_KEY" (JV.str "onDownGameKeyEvent")
    JR.setField this "ON_UP_GAME_KEY" (JV.str "onUpGameKeyEvent")
    JR.setField this "NO_KEY" (JV.str "Key Code Not Mapped For Game: ")
    JR.setField this "ADD_KEY_EVENT" (JV.str "addGameKeyEvent")
    JR.setField this "REMOVE_KEY_EVENT" (JV.str "removeGameKeyEvent")
    JR.setField this "STRAFE_LEFT" (JV.str "strafeLeft")
    JR.setField this "STRAFE_RIGHT" (JV.str "strafeRight")
    JR.setField this "PROCESS_MOTION_INPUT" (JV.str "processMotionInput")
    JR.setField this "UDPATE_CURRENT_TOUCH_INPUT_FACTORY" (JV.str "updateCurrentTouchInputFactory")
    JR.setField this "ENABLE_PLAYER_GAME_INPUTS" (JV.str "Enabling PlayerGameInputs: ")
    JR.setField this "ENABLE_PLAYER_GAME_INPUT" (JV.str "Enabling PlayerGameInput: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameInputStrings" "instance" (<- JR.new "GameInputStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameInputStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameInputStrings",
    javaName := "org.allbinary.game.input.GameInputStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("PROCESS_INPUT", JV.null), ("KEY_PRESSED", JV.null), ("KEY_RELEASED", JV.null), ("KEY_REPEATED", JV.null), ("ON_PRESS_GAME_KEY", JV.null), ("ON_DOWN_GAME_KEY", JV.null), ("ON_UP_GAME_KEY", JV.null), ("NO_KEY", JV.null), ("ADD_KEY_EVENT", JV.null), ("REMOVE_KEY_EVENT", JV.null), ("STRAFE_LEFT", JV.null), ("STRAFE_RIGHT", JV.null), ("PROCESS_MOTION_INPUT", JV.null), ("UDPATE_CURRENT_TOUCH_INPUT_FACTORY", JV.null), ("ENABLE_PLAYER_GAME_INPUTS", JV.null), ("ENABLE_PLAYER_GAME_INPUT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInputStrings


