-- Generated Code Do Not Modify
-- package org.allbinary.game.commands
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameCommandsFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "TOGGLE_FULLSCREEN" (<- JR.new "Command" #[(JV.str "Toggle FullScreen"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "TOGGLE_KEYBOARD" (<- JR.new "Command" #[(JV.str "Keyboard"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "SET_MENU_DISPLAYABLE" (<- JR.new "Command" #[(JV.str "Set Menu Displayable"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "APPLICATION_UPDATE" (<- JR.new "Command" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "UPDATE"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "DISPLAY_ABOUT" (<- JR.new "Command" #[(<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "ABOUT"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 2)])
    JR.setField this "OPEN_WEB_URL" (<- JR.new "Command" #[(JV.str "Open Web URL"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 2)])
    JR.setField this "CLOSE_OPTIONS" (<- JR.new "Command" #[(JV.str "Back"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "DISPLAY_OPTIONS" (<- JR.new "Command" #[(<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "OPTIONS"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 2)])
    JR.setField this "START_TRACE" (<- JR.new "Command" #[(JV.str "Start Trace"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "STOP_TRACE" (<- JR.new "Command" #[(JV.str "Stop Trace"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "DEFAULT_OPTIONS" (<- JR.new "Command" #[(JV.str "Default"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "SHOW_GAME_CANVAS" (<- JR.new "Command" #[(JV.str "Back to Game"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "CLOSE_AND_SHOW_GAME_CANVAS" (<- JR.new "Command" #[(JV.str "Back"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "QUIT_COMMAND" (<- JR.new "Command" #[(JV.str "Quit"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "STOP"), (JV.int 1)])
    JR.setField this "RESTART_COMMAND" (<- JR.new "Command" #[(JV.str "Restart"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 0)])
    JR.setField this "DISPLAY_SAVE_FORM" (<- JR.new "Command" #[(JV.str "Save To"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 3)])
    JR.setField this "SAVE" (<- JR.new "Command" #[(JV.str "Save"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 3)])
    JR.setField this "DISPLAY_LOAD_FORM" (<- JR.new "Command" #[(JV.str "Load"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 3)])
    JR.setField this "LOAD_FILE" (<- JR.new "Command" #[(JV.str "Load File"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 3)])
    JR.setField this "DELETE_FILE" (<- JR.new "Command" #[(JV.str "Delete File"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "EXIT_COMMAND" (<- JR.new "Command" #[(JV.str "Exit"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "EXIT"), (JV.int 2)])
    JR.setField this "EXIT_WITHOUT_PROGRESS_COMMAND" (<- JR.new "Command" #[(JV.str "Exit Without Progress"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "EXIT"), (JV.int 2)])
    JR.setField this "START_COMMAND" (<- JR.new "Command" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "START"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "CONTINUE_COMMAND" (<- JR.new "Command" #[(JV.str "Continue"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "SELECT_COMMAND" (<- JR.new "Command" #[(JV.str "Select"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "FEATURE_UPDATE" (<- JR.new "Command" #[(JV.str "Feature Update"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "BUY_COMMAND" (<- JR.new "Command" #[(JV.str "BUY"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameCommandsFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GameCommandsFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GameCommandsFactory" "instance" (<- JR.new "GameCommandsFactory" #[])
        pure ()
    return (<- JR.getStatic "GameCommandsFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameCommandsFactory",
    javaName := "org.allbinary.game.commands.GameCommandsFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("TOGGLE_FULLSCREEN", JV.null), ("TOGGLE_KEYBOARD", JV.null), ("SET_MENU_DISPLAYABLE", JV.null), ("APPLICATION_UPDATE", JV.null), ("DISPLAY_ABOUT", JV.null), ("OPEN_WEB_URL", JV.null), ("CLOSE_OPTIONS", JV.null), ("DISPLAY_OPTIONS", JV.null), ("START_TRACE", JV.null), ("STOP_TRACE", JV.null), ("DEFAULT_OPTIONS", JV.null), ("SHOW_GAME_CANVAS", JV.null), ("CLOSE_AND_SHOW_GAME_CANVAS", JV.null), ("QUIT_COMMAND", JV.null), ("RESTART_COMMAND", JV.null), ("DISPLAY_SAVE_FORM", JV.null), ("SAVE", JV.null), ("DISPLAY_LOAD_FORM", JV.null), ("LOAD_FILE", JV.null), ("DELETE_FILE", JV.null), ("EXIT_COMMAND", JV.null), ("EXIT_WITHOUT_PROGRESS_COMMAND", JV.null), ("START_COMMAND", JV.null), ("CONTINUE_COMMAND", JV.null), ("SELECT_COMMAND", JV.null), ("FEATURE_UPDATE", JV.null), ("BUY_COMMAND", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameCommandsFactory


