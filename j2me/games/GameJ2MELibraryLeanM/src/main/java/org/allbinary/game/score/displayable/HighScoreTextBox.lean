-- Generated Code Do Not Modify
-- package org.allbinary.game.score.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoreTextBox

def jfields (this : JV) : JM JV := do
    JR.setField this "virtualKeyboardEventHandler" (<- JR.callStatic "VirtualKeyboardEventHandler" "getInstance_0" #[])
    JR.setField this "pleaseWait" (<- JR.new "SimpleTextPaintable" #[(<- JR.getField (<- JR.getInherited this "HighScoreTextBox" "commonStrings") "PLEASE_WAIT"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
    JR.setField this "paintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "submitted" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "HighScoreTextBox" "removeAllCommands_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "PostGameCommandFactory" "getInstance_0" #[]) "addCommands_1" #[this])
    let _ := (<- JR.callInherited this "HighScoreTextBox" "addCommand_1" #[(<- JR.getStatic "HighScoreUtil" "SUBMIT_TEXTBOX_COMMAND")])
    let _ := (<- JR.callInherited this "HighScoreTextBox" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "virtualKeyboardEventHandler") "open_0" #[])
    JR.setField this "paintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    let _ := (<- JR.callSuper "CustomTextBox" this "open_0" #[])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "virtualKeyboardEventHandler") "close_0" #[])
    JR.setField this "paintable" (<- JR.getField this "pleaseWait")
    let _ := (<- JR.call (<- JR.getInherited this "HighScoreTextBox" "repaintBehavior") "onChangeRepaint_1" #[this])
    let _ := (<- JR.callSuper "CustomTextBox" this "close_0" #[])
    let _ := (<- JR.callInherited this "HighScoreTextBox" "removeCommand_1" #[(<- JR.getStatic "HighScoreUtil" "SUBMIT_TEXTBOX_COMMAND")])
    let _ := (<- JR.call this "update_0" #[])
    if JR.truth (<- JR.getField this "submitted") then
        let _ := (<- JR.call (<- JR.getField this "highScoreUtil") "saveHighScore_0" #[])
        pure ()
    else
        pure ()
    JR.setField this "paintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getInherited this "HighScoreTextBox" "repaintBehavior") "onChangeRepaint_1" #[this])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (<- JR.call (<- JR.callInherited this "HighScoreTextBox" "getTextFieldItem_0" #[]) "getString_0" #[])
    let _ := (<- JR.call (<- JR.getField this "highScoreUtil") "update_1" #[l_name])
    let _ := (<- JR.callSuper "CustomTextBox" this "update_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "CustomTextBox" this "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "paintable") "paint_1" #[l_graphics])
    pure JV.null


def m_saveHighScore_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "highScoreUtil") "saveHighScore_0" #[])
    pure JV.null


def m_submit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "highScoreUtil") "submit_1" #[this])
    pure JV.null


def jinit_9 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_highScoresHelper : JV := (JR.arg jargs 1)
    let mut l_abeClientInformation : JV := (JR.arg jargs 2)
    let mut l_gameInfo : JV := (JR.arg jargs 3)
    let mut l_cmdListener : JV := (JR.arg jargs 4)
    let mut l_name : JV := (JR.arg jargs 5)
    let mut l_highScore : JV := (JR.arg jargs 6)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 7)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 8)
    let _ <- JR.superInit "CustomTextBox" this #[l_cmdListener, (JV.str "New High Score Enter Name:"), l_name, (JV.int 12), (<- JR.getStatic "TextField" "ANY"), (<- JR.callStatic "Font" "getDefaultFont_0" #[]), l_backgrounBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    JR.setField this "highScoreUtil" (<- JR.new "HighScoreUtil" #[l_highScoresFactoryInterface, l_highScoresHelper, l_abeClientInformation, l_gameInfo, l_cmdListener, l_name, l_highScore])
    let mut l_operatingSystemInterface : JV := (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
    if JR.truth (<- JR.call l_operatingSystemInterface "isOverScan_0" #[]) then
        let mut l_username : JV := (<- JR.call (<- JR.callStatic "InApplicationPurchaseFactory" "getInstance_0" #[]) "getUserName_0" #[])
        let _ := (<- JR.call (<- JR.callInherited this "HighScoreTextBox" "getTextFieldItem_0" #[]) "setString_1" #[l_username])
        pure ()
    pure this

initialize JR.registerClass {
    name := "HighScoreTextBox",
    javaName := "org.allbinary.game.score.displayable.HighScoreTextBox",
    super := "CustomTextBox",
    interfaces := #[],
    isInterface := false,
    fields := #[("virtualKeyboardEventHandler", JV.null), ("highScoreUtil", JV.null), ("pleaseWait", JV.null), ("paintable", JV.null), ("submitted", (JV.bool false))],
    statics := #[],
    methods := #[
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("update_0", #[], false, m_update_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("saveHighScore_0", #[], false, m_saveHighScore_0), 
        ("submit_0", #[], false, m_submit_0), 
        ("jinit_9", #["HighScoresFactoryInterface", "HighScoresHelperBaseInterface", "AbeClientInformationInterface", "GameInfo", "CommandListener", "String", "HighScore", "BasicColor", "BasicColor"], false, jinit_9)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoreTextBox


