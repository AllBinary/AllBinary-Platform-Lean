-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InGameOptionsForm

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InGameOptionsForm" "DISPLAY" (<- JR.new "Command" #[(JV.str "Options In Game"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setStatic "InGameOptionsForm" "SAVE" (<- JR.new "Command" #[(JV.str "Save"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setStatic "InGameOptionsForm" "DEFAULT" (<- JR.new "Command" #[(JV.str "Default"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "InGameOptionsForm" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "InGameOptionsForm" "addCommand_1" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "CLOSE_AND_SHOW_GAME_CANVAS")])
    let _ := (<- JR.callInherited this "InGameOptionsForm" "addCommand_1" #[(<- JR.getStatic "InGameOptionsForm" "DEFAULT")])
    let _ := (<- JR.callInherited this "InGameOptionsForm" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_title : JV := (JR.arg jargs 1)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CommandForm" this #[l_commandListener, l_title, l_backgrounBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "InGameOptionsForm" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "InGameOptionsForm" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "InGameOptionsForm" "commonStrings") "CONSTRUCTOR")])
    let mut l_gameFeatureFormUtil : JV := (<- JR.callStatic "GameFeatureFormUtil" "getInstance_0" #[])
    let _ := (<- JR.call l_gameFeatureFormUtil "addChoiceGroup_3" #[this, (<- JR.call (<- JR.callStatic "InGameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "get_0" #[]), (<- JR.getStatic "Choice" "EXCLUSIVE")])
    let _ := (<- JR.call l_gameFeatureFormUtil "addChoiceGroup_3" #[this, (<- JR.call (<- JR.callStatic "InGameFeatureChoiceGroups" "getMultipleInstance_0" #[]) "get_0" #[]), (<- JR.getStatic "Choice" "MULTIPLE")])
    let _ := (<- JR.call this "initCommands_1" #[l_commandListener])
    pure this

initialize JR.registerClass {
    name := "InGameOptionsForm",
    javaName := "org.allbinary.game.configuration.InGameOptionsForm",
    super := "CommandForm",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("DISPLAY", JV.null), ("SAVE", JV.null), ("DEFAULT", JV.null)],
    methods := #[
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("jinit_4", #["CommandListener", "String", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InGameOptionsForm


