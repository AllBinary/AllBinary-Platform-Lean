-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameDifficultyOptions

def jfields (this : JV) : JM JV := do
    JR.setField this "meUtil" (<- JR.callStatic "MIDPUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "CommandForm" this "open_0" #[])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "CommandForm" this "close_0" #[])
    let _ := (<- JR.call this "save_0" #[])
    pure JV.null


def m_save_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameDifficultyFactory : JV := (<- JR.callStatic "GameDifficultyFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_gameDifficultyFactory "setLevel_1" #[(<- JR.call this "getSelectedId_0" #[])])
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    let _ := (<- JR.callInherited this "GameDifficultyOptions" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "GameDifficultyOptions" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "CLOSE_AND_SHOW_GAME_CANVAS")])
    let _ := (<- JR.callInherited this "GameDifficultyOptions" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callInherited this "GameDifficultyOptions" "deleteAll_0" #[])
    let _ := (<- JR.call this "add_3" #[(<- JR.getField this "list"), (JV.str "Difficulty"), (<- JR.getStatic "Choice" "EXCLUSIVE")])
    let _ := (<- JR.callSuper "CommandForm" this "update_0" #[])
    pure JV.null


def m_add_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_option : JV := (JR.asI (JR.arg jargs 2))
    let mut l_choiceGroup : JV := (<- JR.call this "getChoiceGroup_3" #[l_list, l_name, l_option])
    if JR.truth (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 0)) then
        let _ := (<- JR.call l_choiceGroup "setSelectedIndex_2" #[(JV.int 0), (JV.bool true)])
        pure ()
    let _ := (<- JR.call (<- JR.getField this "meUtil") "appendItem_2" #[this, l_choiceGroup])
    pure JV.null


def m_getChoiceGroup_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_option : JV := (JR.asI (JR.arg jargs 2))
    let mut l_METHOD_NAME : JV := (JV.str "addChoiceGroup")
    let mut l_NAME : JV := (JV.str "Adding Choice: ")
    let mut l_choiceGroup : JV := (<- JR.new "ChoiceGroup" #[l_name, l_option, (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[]), (<- JR.getStatic "NullImage" "NULL_IMAGE_ARRAY")])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_anyType : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_anyType := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call (<- JR.getInherited this "GameDifficultyOptions" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_NAME]) "append_1" #[(<- JR.call l_anyType "toString_0" #[])]) "toString_0" #[]), this, l_METHOD_NAME])
            let _ := (<- JR.call l_choiceGroup "append_2" #[(<- JR.call l_anyType "toString_0" #[]), (<- JR.getStatic "NullImage" "NULL_IMAGE")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_choiceGroup


def m_setSelectedId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_choiceGroup : JV := (<- JR.callInherited this "GameDifficultyOptions" "get_1" #[(JV.int 0)])
    let _ := (<- JR.call l_choiceGroup "setSelectedIndex_2" #[l_id, (JV.bool true)])
    pure JV.null


def m_getSelectedId_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_choiceGroup : JV := (<- JR.callInherited this "GameDifficultyOptions" "get_1" #[(JV.int 0)])
    return (JR.asI (<- JR.call l_choiceGroup "getSelectedIndex_0" #[]))


def m_getSelectedText_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_choiceGroup : JV := (<- JR.callInherited this "GameDifficultyOptions" "get_1" #[(JV.int 0)])
    let mut l_value : JV := (JR.asI (<- JR.call (<- JR.callStatic "Integer" "valueOf_1" #[(<- JR.call l_choiceGroup "getString_1" #[(<- JR.call l_choiceGroup "getSelectedIndex_0" #[])])]) "intValue_0" #[]))
    return (JR.asI l_value)


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_title : JV := (JR.arg jargs 1)
    let mut l_list : JV := (JR.arg jargs 2)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 3)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "CommandForm" this #[l_commandListener, l_title, l_backgrounBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "GameDifficultyOptions" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameDifficultyOptions" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "GameDifficultyOptions" "commonStrings") "CONSTRUCTOR")])
    JR.setField this "list" l_list
    let _ := (<- JR.call this "update_0" #[])
    let _ := (<- JR.call this "initCommands_1" #[l_commandListener])
    let mut l_gameDifficultyFactory : JV := (<- JR.callStatic "GameDifficultyFactory" "getInstance_0" #[])
    let _ := (<- JR.call this "setSelectedId_1" #[(<- JR.call l_gameDifficultyFactory "getLevel_0" #[])])
    pure this

initialize JR.registerClass {
    name := "GameDifficultyOptions",
    javaName := "org.allbinary.game.configuration.GameDifficultyOptions",
    super := "CommandForm",
    interfaces := #[],
    isInterface := false,
    fields := #[("meUtil", JV.null), ("list", JV.null)],
    statics := #[],
    methods := #[
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("save_0", #[], false, m_save_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("update_0", #[], false, m_update_0), 
        ("add_3", #["BasicArrayList", "String", "int"], false, m_add_3), 
        ("getChoiceGroup_3", #["BasicArrayList", "String", "int"], false, m_getChoiceGroup_3), 
        ("setSelectedId_1", #["int"], false, m_setSelectedId_1), 
        ("getSelectedId_0", #[], false, m_getSelectedId_0), 
        ("getSelectedText_0", #[], false, m_getSelectedText_0), 
        ("jinit_5", #["CommandListener", "String", "BasicArrayList", "BasicColor", "BasicColor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameDifficultyOptions


