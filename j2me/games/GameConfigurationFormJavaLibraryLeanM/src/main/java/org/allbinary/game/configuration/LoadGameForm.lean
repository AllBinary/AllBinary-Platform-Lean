-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LoadGameForm

def jfields (this : JV) : JM JV := do
    JR.setField this "meUtil" (<- JR.callStatic "MIDPUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    let _ := (<- JR.callInherited this "LoadGameForm" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "LoadGameForm" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "LOAD_FILE")])
    let _ := (<- JR.callInherited this "LoadGameForm" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "DELETE_FILE")])
    let _ := (<- JR.callInherited this "LoadGameForm" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "CLOSE_AND_SHOW_GAME_CANVAS")])
    let _ := (<- JR.callInherited this "LoadGameForm" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (<- JR.call (<- JR.callStatic "GamePersistanceSingleton" "getInstance_0" #[]) "getIds_0" #[])
    let _ := (<- JR.callInherited this "LoadGameForm" "deleteAll_0" #[])
    if JR.truth (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 0)) then
        let _ := (<- JR.call this "add_3" #[l_list, (JV.str "Select A Saved Game"), (<- JR.getStatic "Choice" "EXCLUSIVE")])
        JR.setField this "areChoices" (JV.bool true)
        pure ()
    else
        let _ := (<- JR.call (<- JR.getField this "meUtil") "appendItem_2" #[this, (<- JR.new "StringItem" #[(JV.str "No Saved Games"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "LcduiItem" "PLAIN")])])
        JR.setField this "areChoices" (JV.bool false)
        pure ()
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
    let mut l_METHOD_NAME : JV := (JV.str "getChoiceGroup")
    let mut l_ADDING_CHOICE : JV := (JV.str "Adding Choice: ")
    let mut l_choiceGroup : JV := (<- JR.new "ChoiceGroup" #[l_name, l_option, (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[]), (<- JR.getStatic "NullImage" "NULL_IMAGE_ARRAY")])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_anyType : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call (<- JR.getInherited this "LoadGameForm" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_ADDING_CHOICE]) "append_1" #[(<- JR.call l_anyType "toString_0" #[])]) "toString_0" #[]), this, l_METHOD_NAME])
            let _ := (<- JR.call l_choiceGroup "append_2" #[(<- JR.call l_anyType "toString_0" #[]), (<- JR.getStatic "NullImage" "NULL_IMAGE")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_choiceGroup


def m_getSelectedId_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.getField this "areChoices") then
        let mut l_choiceGroup : JV := (<- JR.callInherited this "LoadGameForm" "get_1" #[(JV.int 0)])
        return (JR.asI (<- JR.call l_choiceGroup "getSelectedIndex_0" #[]))
    else
        return (JR.asI (JV.int (-1)))
    pure JV.null


def m_getSelectedText_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.getField this "areChoices") then
        let mut l_choiceGroup : JV := (<- JR.callInherited this "LoadGameForm" "get_1" #[(JV.int 0)])
        let mut l_value : JV := (JR.asI (<- JR.call (<- JR.callStatic "Integer" "valueOf_1" #[(<- JR.call l_choiceGroup "getString_1" #[(<- JR.call l_choiceGroup "getSelectedIndex_0" #[])])]) "intValue_0" #[]))
        return (JR.asI l_value)
    else
        return (JR.asI (JV.int (-1)))
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_title : JV := (JR.arg jargs 1)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CommandForm" this #[l_commandListener, l_title, l_backgrounBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "LoadGameForm" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "LoadGameForm" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "LoadGameForm" "commonStrings") "CONSTRUCTOR")])
    let _ := (<- JR.call this "update_0" #[])
    let _ := (<- JR.call this "initCommands_1" #[l_commandListener])
    pure this

initialize JR.registerClass {
    name := "LoadGameForm",
    javaName := "org.allbinary.game.configuration.LoadGameForm",
    super := "CommandForm",
    interfaces := #[],
    isInterface := false,
    fields := #[("meUtil", JV.null), ("areChoices", (JV.bool false))],
    statics := #[],
    methods := #[
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("update_0", #[], false, m_update_0), 
        ("add_3", #["BasicArrayList", "String", "int"], false, m_add_3), 
        ("getChoiceGroup_3", #["BasicArrayList", "String", "int"], false, m_getChoiceGroup_3), 
        ("getSelectedId_0", #[], false, m_getSelectedId_0), 
        ("getSelectedText_0", #[], false, m_getSelectedText_0), 
        ("jinit_4", #["CommandListener", "String", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LoadGameForm


