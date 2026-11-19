-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SaveGameForm

def jfields (this : JV) : JM JV := do
    JR.setField this "meUtil" (<- JR.callStatic "MIDPUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SaveGameForm" "FORM" (<- JR.callStatic "CommandForm" "getNullCommandForm_0" #[])
    pure JV.null


def m_createForm_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_title : JV := (JR.arg jargs 1)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    JR.setStatic "SaveGameForm" "FORM" (<- JR.new "SaveGameForm" #[l_commandListener, l_title, l_backgrounBasicColor, l_foregroundBasicColor])
    return (<- JR.getStatic "SaveGameForm" "FORM")


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SaveGameForm" "FORM")


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    let _ := (<- JR.callInherited this "SaveGameForm" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "SaveGameForm" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "SAVE")])
    let _ := (<- JR.callInherited this "SaveGameForm" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "CLOSE_AND_SHOW_GAME_CANVAS")])
    let _ := (<- JR.callInherited this "SaveGameForm" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_title : JV := (JR.arg jargs 1)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CommandForm" this #[l_commandListener, l_title, l_backgrounBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "SaveGameForm" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "SaveGameForm" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "SaveGameForm" "commonStrings") "CONSTRUCTOR")])
    let mut l_timeString : JV := (<- JR.callStatic "Long" "toString_1" #[(<- JR.call (<- JR.callStatic "ABSystemWrapper" "getInstance_0" #[]) "currentTimeMillis_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "meUtil") "appendItem_2" #[this, (<- JR.new "TextField" #[(JV.str "Name: "), l_timeString, (JV.int 30), (<- JR.getStatic "TextField" "ANY")])])
    let _ := (<- JR.call this "initCommands_1" #[l_commandListener])
    pure this

initialize JR.registerClass {
    name := "SaveGameForm",
    javaName := "org.allbinary.game.configuration.SaveGameForm",
    super := "CommandForm",
    interfaces := #[],
    isInterface := false,
    fields := #[("meUtil", JV.null)],
    statics := #[("FORM", JV.null)],
    methods := #[
        ("createForm_4", #["CommandListener", "String", "BasicColor", "BasicColor"], true, m_createForm_4), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("jinit_4", #["CommandListener", "String", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SaveGameForm


