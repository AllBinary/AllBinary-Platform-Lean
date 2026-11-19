-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInputMappingCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "NONE")
    JR.setField this "selectedGameKey" (<- JR.getField this "NONE")
    JR.setField this "selectedInput" (<- JR.getField this "NONE")
    JR.setField this "inputFactory" (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameInputMappingCanvas" "DISPLAY" (<- JR.new "Command" #[(JV.str "Controls"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 2)])
    JR.setStatic "GameInputMappingCanvas" "DEFAULT" (<- JR.new "Command" #[(JV.str "Default"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 2)])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "GameCommandCanvas" this "close_0" #[])
    let _ := (<- JR.call (<- JR.getField this "paintable") "process_0" #[])
    JR.setField this "selectedGameKey" (<- JR.getField this "NONE")
    JR.setField this "selectedInput" (<- JR.getField this "NONE")
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "GameInputMappingCanvas" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "GameInputMappingCanvas" "addCommand_1" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "CLOSE_AND_SHOW_GAME_CANVAS")])
    let _ := (<- JR.callInherited this "GameInputMappingCanvas" "addCommand_1" #[(<- JR.getStatic "GameInputMappingCanvas" "DEFAULT")])
    let _ := (<- JR.callInherited this "GameInputMappingCanvas" "addCommand_1" #[(<- JR.getStatic "GameInputMappingInstructionsCanvas" "DISPLAY")])
    let _ := (<- JR.callInherited this "GameInputMappingCanvas" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_keyPressed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "keyPressedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyReleased_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callInherited this "GameInputMappingCanvas" "keyReleasedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyRepeated_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callInherited this "GameInputMappingCanvas" "keyRepeatedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyPressedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call this "addGameKey_2" #[l_keyCode, (JV.bool false)])
    let _ := (<- JR.callSuper "GameCommandCanvas" this "keyPressedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_addGameKey_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_repeated : JV := (JR.arg jargs 1)
    try
        let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Raw Device Key Code: ")]) "append_1" #[(<- JR.callStatic "Integer" "toHexString_1" #[l_keyCode])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "GameInputMappingCanvas" "gameInputStrings") "ADD_KEY_EVENT")])
        let mut l_gameKey : JV := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "inputToGameKeyMapping") "getInstanceForCanvas_2" #[this, l_keyCode])
        let mut l_input : JV := (<- JR.call (<- JR.getField this "inputFactory") "getInstanceById_1" #[l_keyCode])
        let _ := (<- JR.call this "processInputMapping_2" #[l_gameKey, l_input])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "put_4" #[(JV.str "Key Event Error"), this, (<- JR.getField (<- JR.getInherited this "GameInputMappingCanvas" "gameInputStrings") "ADD_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_processInputMapping_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKey : JV := (JR.arg jargs 0)
    let mut l_input : JV := (JR.arg jargs 1)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Start Passed GameKey: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[l_gameKey])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Input: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[l_input])])
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "GameInputMappingCanvas" "commonStrings") "PROCESS")])
    if JR.truth (<- JR.ne (<- JR.getField this "selectedGameKey") (<- JR.getField this "NONE")) then
        let _ := (<- JR.call this "gameActionCrud_2" #[l_gameKey, l_input])
        pure ()
    else
        let _ := (<- JR.call this "setSelectedAction_1" #[l_gameKey])
        pure ()
    pure JV.null


def m_setSelectedAction_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKey : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Selected GameKey: ")]) "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[l_gameKey])]) "toString_0" #[]), this, (JV.str "setSelectedAction")])
    JR.setField this "selectedGameKey" l_gameKey
    JR.setField this "selectedInput" (<- JR.getField this "NONE")
    let _ := (<- JR.call (<- JR.getField this "helpPaintable") "update_2" #[(<- JR.getField this "selectedGameKey"), (<- JR.getField this "selectedInput")])
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "repaintBehavior") "onChangeRepaint_1" #[this])
    pure JV.null


def m_gameActionCrud_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKey : JV := (JR.arg jargs 0)
    let mut l_input : JV := (JR.arg jargs 1)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Start GameKey: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[(<- JR.getField this "selectedGameKey")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Input: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[(<- JR.getField this "selectedInput")])])
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (JV.str "gameActionCrud")])
    if JR.truth (<- JR.eq (<- JR.getField this "selectedInput") (<- JR.getField this "NONE")) then
        let mut l_list : JV := (<- JR.call (<- JR.call (<- JR.getField this "inputMapping") "getInputMapping_0" #[]) "getMappedInput_1" #[(<- JR.getField this "selectedGameKey")])
        let mut l_isInputAlreadyMappedToSelectedAction : JV := (<- JR.call l_list "contains_1" #[l_input])
        if JR.truth l_isInputAlreadyMappedToSelectedAction then
            let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Already Mapped Input: ")]) "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[l_input])]) "toString_0" #[]), this, (JV.str "gameActionCrud")])
            JR.setField this "selectedInput" l_input
            let _ := (<- JR.call (<- JR.getField this "helpPaintable") "update_2" #[(<- JR.getField this "selectedGameKey"), (<- JR.getField this "selectedInput")])
            let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "repaintBehavior") "onChangeRepaint_1" #[this])
            pure ()
        else
            let _ := (<- JR.call this "addNewMapping_2" #[l_gameKey, l_input])
            pure ()
        pure ()
    else
        if JR.truth (<- JR.call (<- JR.getField this "inputMapping") "isDelete_1" #[l_input]) then
            let _ := (<- JR.call this "deleteCurrentMapping_0" #[])
            pure ()
        else
            let _ := (<- JR.call this "setSelectedAction_1" #[l_gameKey])
            pure ()
    pure JV.null


def m_addNewMapping_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKey : JV := (JR.arg jargs 0)
    let mut l_input : JV := (JR.arg jargs 1)
    let mut l_METHOD_NAME : JV := (JV.str "addNewMapping")
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameInputMappingCanvas" "commonStrings") "START"), this, l_METHOD_NAME])
    let mut l_isInputAlreadyMapped : JV := (<- JR.call (<- JR.call (<- JR.getField this "inputMapping") "getInputMapping_0" #[]) "isMapped_1" #[l_input])
    if JR.truth (<- JR.cand (JR.not l_isInputAlreadyMapped) (do pure (JR.not (<- JR.call (<- JR.getField this "inputMapping") "isSystemInput_1" #[l_input])))) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Add Key Mapping : GameKey: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[(<- JR.getField this "selectedGameKey")])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Input: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[(<- JR.getField this "selectedInput")])])
        let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "inputMapping") "getInputMapping_0" #[]) "add_2" #[(<- JR.getField this "selectedGameKey"), l_input])
        JR.setField this "selectedInput" l_input
        let _ := (<- JR.call this "update_0" #[])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(JV.str "Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to"), this, l_METHOD_NAME])
        let _ := (<- JR.call this "setSelectedAction_1" #[l_gameKey])
        pure ()
    pure JV.null


def m_deleteCurrentMapping_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_METHOD_NAME : JV := (JV.str "deleteCurrentMapping")
    let mut l_list : JV := (<- JR.call (<- JR.call (<- JR.getField this "inputMapping") "getInputMapping_0" #[]) "getMappedInput_1" #[(<- JR.getField this "selectedGameKey")])
    if JR.truth (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 1)) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Start GameKey: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Remove Key Mapping: GameKey: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[(<- JR.getField this "selectedGameKey")])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Input: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "stringUtil") "toString_1" #[(<- JR.getField this "selectedInput")])])
        let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "inputMapping") "getInputMapping_0" #[]) "remove_2" #[(<- JR.getField this "selectedGameKey"), (<- JR.getField this "selectedInput")])
        JR.setField this "selectedInput" (<- JR.getField this "NONE")
        let _ := (<- JR.call this "update_0" #[])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(JV.str "Can't Remove Last Key Mapping"), this, l_METHOD_NAME])
        pure ()
    pure JV.null


def m_setDefault_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "inputMapping") "setDefault_1" #[(<- JR.getField this "abeClientInformation")])
    let _ := (<- JR.call (<- JR.getField this "helpPaintable") "update_2" #[(<- JR.getField this "NONE"), (<- JR.getField this "NONE")])
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "repaintBehavior") "onChangeRepaint_1" #[this])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "inputMapping") "update_1" #[(<- JR.getField this "abeClientInformation")])
    let _ := (<- JR.call (<- JR.getField this "helpPaintable") "update_2" #[(<- JR.getField this "selectedGameKey"), (<- JR.getField this "selectedInput")])
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "repaintBehavior") "onChangeRepaint_1" #[this])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "colorFillPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "helpPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "paintable") "paint_1" #[l_graphics])
    let _ := (<- JR.callSuper "GameCommandCanvas" this "paint_1" #[l_graphics])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_commandListener : JV := (JR.arg jargs 1)
    let mut l_allBinaryGameLayerManager : JV := (JR.arg jargs 2)
    let mut l_helpPaintable : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "GameCommandCanvas" this #[l_commandListener, (<- JR.getStatic "GameInputMappingCanvas" "NAME"), (<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (<- JR.call l_allBinaryGameLayerManager "getForegroundBasicColor_0" #[])]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameInputMappingCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "GameInputMappingCanvas" "commonStrings") "CONSTRUCTOR")])
    if JR.truth (<- JR.eq l_helpPaintable JV.null) then
        throw (<- JR.new "Exception" #[(JV.str "Help Paintable Exception")])
    JR.setField this "abeClientInformation" l_abeClientInformation
    JR.setField this "helpPaintable" l_helpPaintable
    JR.setField this "inputMapping" (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[])
    JR.setField this "paintable" (<- JR.new "ProcessPaintable" #[])
    JR.setField this "colorFillPaintable" (<- JR.call (<- JR.callStatic "ColorFillPaintableFactory" "getInstance_0" #[]) "getInstance_2" #[(<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (JV.bool false)])
    pure this

initialize JR.registerClass {
    name := "GameInputMappingCanvas",
    javaName := "org.allbinary.game.displayable.canvas.GameInputMappingCanvas",
    super := "GameCommandCanvas",
    interfaces := #["InputMappingInterface"],
    isInterface := false,
    fields := #[("paintable", JV.null), ("helpPaintable", JV.null), ("colorFillPaintable", JV.null), ("inputMapping", JV.null), ("NONE", JV.null), ("abeClientInformation", JV.null), ("selectedGameKey", JV.null), ("selectedInput", JV.null), ("inputFactory", JV.null)],
    statics := #[("NAME", (JV.str "GameInputMappingCanvas")), ("DISPLAY", JV.null), ("DEFAULT", JV.null)],
    methods := #[
        ("close_0", #[], false, m_close_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("keyPressed_1", #["int"], false, m_keyPressed_1), 
        ("keyReleased_1", #["int"], false, m_keyReleased_1), 
        ("keyRepeated_1", #["int"], false, m_keyRepeated_1), 
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("addGameKey_2", #["int", "boolean"], false, m_addGameKey_2), 
        ("processInputMapping_2", #["GameKey", "Input"], false, m_processInputMapping_2), 
        ("setSelectedAction_1", #["GameKey"], false, m_setSelectedAction_1), 
        ("gameActionCrud_2", #["GameKey", "Input"], false, m_gameActionCrud_2), 
        ("addNewMapping_2", #["GameKey", "Input"], false, m_addNewMapping_2), 
        ("deleteCurrentMapping_0", #[], false, m_deleteCurrentMapping_0), 
        ("setDefault_0", #[], false, m_setDefault_0), 
        ("update_0", #[], false, m_update_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_4", #["AbeClientInformationInterface", "CommandListener", "AllBinaryGameLayerManager", "HelpPaintable"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInputMappingCanvas


