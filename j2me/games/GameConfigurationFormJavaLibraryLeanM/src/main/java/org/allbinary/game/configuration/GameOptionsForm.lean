-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameOptionsForm

def jfields (this : JV) : JM JV := do
    JR.setField this "meUtil" (<- JR.callStatic "MIDPUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_closeClientInformation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "CommandForm" this "close_0" #[])
    let _ := (<- JR.call this "save_1" #[l_abeClientInformation])
    pure JV.null


def m_addTextFieldsIfSimulated_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (<- JR.getField (<- JR.callStatic "OrientationData" "getInstance_0" #[]) "ORIENTATION_SENSOR_INPUT")
    let mut l_hashtable : JV := (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "get_0" #[])
    if JR.truth (<- JR.ne l_hashtable JV.null) then
        let mut l_listCanBeNull : JV := (<- JR.call l_hashtable "get_1" #[l_key])
        if JR.truth (<- JR.ne l_listCanBeNull JV.null) then
            let mut l_list : JV := l_listCanBeNull
            if JR.truth (<- JR.call l_list "contains_1" #[(<- JR.getField (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[]) "SIMULATED_ORIENTATION_SENSORS")]) then
                let _ := (<- JR.call this "addTextFields_0" #[])
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_addTextFields_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (<- JR.callStatic "GameConfigurationTextInput" "getHashtable_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_hashtable "size_0" #[]))
    let mut l_objectArray : JV := (<- JR.call (<- JR.callStatic "HashtableUtil" "getInstance_0" #[]) "getKeysAsArray_1" #[l_hashtable])
    let mut l_gameConfigurationTextInput : JV := JV.null
    let mut l_textField : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_gameConfigurationTextInput := (<- JR.call l_hashtable "get_1" #[(<- JR.aget l_objectArray l_index)])
            l_textField := (<- JR.new "TextField" #[(<- JR.call l_gameConfigurationTextInput "getLabel_0" #[]), (<- JR.call l_gameConfigurationTextInput "getText_0" #[]), (JV.int 30), (<- JR.getStatic "TextField" "ANY")])
            let _ := (<- JR.call (<- JR.getField this "meUtil") "appendItem_2" #[this, l_textField])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_addConfiguration_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_METHOD_NAME : JV := (JV.str "addConfiguration")
    let mut l_NAME : JV := (JV.str "Name: ")
    let mut l_list : JV := (<- JR.call (<- JR.callStatic "GameConfigurationSingleton" "getInstance_0" #[]) "getOptionsBasicArrayList_0" #[])
    let mut l_GAUGE_CHANGE : JV := (<- JR.getField (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[]) "GAUGE_CHANGE")
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_gameConfiguration : JV := JV.null
    let mut l_gauge : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_gameConfiguration := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            let _ := (<- JR.call (<- JR.getInherited this "GameOptionsForm" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_NAME]) "append_1" #[(<- JR.call l_gameConfiguration "toString_0" #[])]) "toString_0" #[]), this, l_METHOD_NAME])
            l_gauge := (<- JR.new "GameConfigurationGauge" #[l_gameConfiguration])
            let _ := (<- JR.call l_gauge "setDefaultCommand_1" #[l_GAUGE_CHANGE])
            let _ := (<- JR.call l_gauge "setItemCommandListener_1" #[(<- JR.new "GameFeatureItemCommandListener" #[this])])
            let _ := (<- JR.call (<- JR.getField this "meUtil") "appendItem_2" #[this, l_gauge])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    let _ := (<- JR.callInherited this "GameOptionsForm" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "GameOptionsForm" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "CLOSE_OPTIONS")])
    let _ := (<- JR.callInherited this "GameOptionsForm" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "DEFAULT_OPTIONS")])
    let _ := (<- JR.callInherited this "GameOptionsForm" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_save_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.callInherited this "GameOptionsForm" "size_0" #[]))
    let mut l_item : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_item := (<- JR.callInherited this "GameOptionsForm" "get_1" #[l_index])
            if JR.truth (<- JR.instanceOf l_item "GameConfigurationGauge") then
                let _ := (<- JR.call (<- JR.callStatic "GameConfigurationUtil" "getInstance_0" #[]) "update_1" #[l_item])
                pure ()
            else
                if JR.truth (<- JR.instanceOf l_item "TextField") then
                    let _ := (<- JR.callStatic "GameConfigurationTextInput" "update_1" #[l_item])
                    pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.callStatic "GameConfigurationUtil" "getInstance_0" #[]) "updateCompetitionValue_0" #[])
    let mut l_hashtable : JV := (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    let mut l_SCALE : JV := (<- JR.getField (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "SCALE")
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.call l_SCALE "getName_0" #[]), (<- JR.callStatic "Integer" "toString_1" #[(<- JR.call (<- JR.call l_SCALE "getValue_0" #[]) "intValue_0" #[])])])
    let mut l_keyValuePersistance : JV := (<- JR.callStatic "GameConfigurationPersistanceSingleton" "getInstance_0" #[])
    let _ := (<- JR.call l_keyValuePersistance "clear_0" #[])
    let _ := (<- JR.call l_keyValuePersistance "loadAll_1" #[l_abeClientInformation])
    let mut l_list : JV := (<- JR.call l_keyValuePersistance "getIds_0" #[])
    let _ := (<- JR.call l_keyValuePersistance "save_2" #[l_abeClientInformation, l_hashtable])
    let mut l_size2 : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_integer : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size2)) then break
            l_integer := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_keyValuePersistance "delete_2" #[l_abeClientInformation, (<- JR.call l_integer "intValue_0" #[])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_title : JV := (JR.arg jargs 1)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CommandForm" this #[l_commandListener, l_title, l_backgrounBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "GameOptionsForm" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameOptionsForm" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "GameOptionsForm" "commonStrings") "CONSTRUCTOR")])
    let _ := (<- JR.call this "addConfiguration_0" #[])
    let mut l_gameFeatureFormUtil : JV := (<- JR.callStatic "GameFeatureFormUtil" "getInstance_0" #[])
    let _ := (<- JR.call l_gameFeatureFormUtil "addChoiceGroup_3" #[this, (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "get_0" #[]), (<- JR.getStatic "Choice" "EXCLUSIVE")])
    let _ := (<- JR.call l_gameFeatureFormUtil "addChoiceGroup_3" #[this, (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getMultipleInstance_0" #[]) "get_0" #[]), (<- JR.getStatic "Choice" "MULTIPLE")])
    let _ := (<- JR.call this "initCommands_1" #[l_commandListener])
    let _ := (<- JR.callInherited this "GameOptionsForm" "setItemStateListener_1" #[(<- JR.new "GameFeatureItemStateListener" #[this])])
    let _ := (<- JR.call this "addTextFieldsIfSimulated_0" #[])
    pure this

initialize JR.registerClass {
    name := "GameOptionsForm",
    javaName := "org.allbinary.game.configuration.GameOptionsForm",
    super := "CommandForm",
    interfaces := #[],
    isInterface := false,
    fields := #[("meUtil", JV.null)],
    statics := #[],
    methods := #[
        ("closeClientInformation_1", #["AbeClientInformationInterface"], false, m_closeClientInformation_1), 
        ("addTextFieldsIfSimulated_0", #[], false, m_addTextFieldsIfSimulated_0), 
        ("addTextFields_0", #[], false, m_addTextFields_0), 
        ("addConfiguration_0", #[], false, m_addConfiguration_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("save_1", #["AbeClientInformationInterface"], false, m_save_1), 
        ("jinit_4", #["CommandListener", "String", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameOptionsForm


