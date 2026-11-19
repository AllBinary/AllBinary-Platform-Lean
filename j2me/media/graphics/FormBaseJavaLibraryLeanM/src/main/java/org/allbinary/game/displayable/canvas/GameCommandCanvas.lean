-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameCommandCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "repaintProcessor" (<- JR.call (<- JR.callStatic "ScreenRepaintProcessorFactory" "getInstance_0" #[]) "create_1" #[this])
    JR.setField this "gameInputStrings" (<- JR.callStatic "GameInputStrings" "getInstance_0" #[])
    JR.setField this "inputToGameKeyMapping" (<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "getInputMapping_0" #[])
    JR.setField this "gameKeyFactory" (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    JR.setField this "gameKeyEventFactory" (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[])
    JR.setField this "downGameKeyEventHandler" (<- JR.callStatic "DownGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "upGameKeyEventHandler" (<- JR.callStatic "UpGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "menuInputProcessor" (<- JR.callStatic "NoMenuInputProcessor" "getInstance_0" #[])
    JR.setField this "menuPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "menuForm" (<- JR.callStatic "PaintableForm" "getNullPaintableForm_0" #[])
    JR.setField this "isSingleKeyRepeatableProcessing" (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "SINGLE_KEY_REPEAT_PRESS")])
    JR.setField this "fontHeight" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    try
        let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
        let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "commonStrings") "START")]) "append_1" #[(<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "canvasStrings") "FD_WIDTH")]) "appendint_1" #[(<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font])]) "append_1" #[(<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "canvasStrings") "FD_HEIGHT")]) "appendint_1" #[(<- JR.call l_font "getHeight_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "canvasStrings") "UPDATE_MEASUREMENT")])
        JR.setField this "fontHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
        let mut l_rectangle : JV := (<- JR.call this "createRectangle_1" #[(<- JR.call (<- JR.getField this "menuForm") "size_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "menuForm") "init_2" #[l_rectangle, (<- JR.getField (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[]) "VERTICAL_CENTER_FORM")])
        let _ := (<- JR.call this "update_0" #[])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "canvasStrings") "ON_DISPLAY_CHANGE_EVENT"), l_e])
            pure ()
        else
            throw jex1
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onDisplayChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "commonStrings") "START")]) "append_1" #[(<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "canvasStrings") "ON_DISPLAY_CHANGE_EVENT")])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "GameCommandCanvas" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "GameCommandCanvas" "addCommand_1" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "CLOSE_AND_SHOW_GAME_CANVAS")])
    let _ := (<- JR.callInherited this "GameCommandCanvas" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_initMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_form : JV := (<- JR.call this "createForm_0" #[])
    JR.setField this "menuForm" l_form
    if JR.truth (<- JR.ne l_form (<- JR.callStatic "ScrollSelectionFormNoneFactory" "getInstance_0" #[])) then
        let _ := (<- JR.call this "setMenuInputProcessor_1" #[(<- JR.new "ImmediateCommandFormInputProcessor" #[(<- JR.new "BasicArrayListD" #[]), (JV.int (-1)), this, l_form])])
        JR.setField this "menuPaintable" (<- JR.new "FormPaintable" #[l_form])
        pure ()
    let _ := (<- JR.call (<- JR.getField this "repaintBehavior") "onChangeRepaint_1" #[this])
    pure JV.null


def m_createForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_items : JV := (<- JR.call (<- JR.new "CommandTextItemArrayFactory" #[(<- JR.new "AllCommandsVisitor" #[])]) "getInstance_3" #[(<- JR.callInherited this "GameCommandCanvas" "getCommandStack_0" #[]), (<- JR.getField this "backgroundBasicColor"), (<- JR.getField this "foregroundBasicColor")])
    let mut l_rectangle : JV := (<- JR.call this "createRectangle_1" #[(<- JR.alen l_items)])
    return (<- JR.callStatic "CommandCurrentSelectionFormFactory" "getInstance_8" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), l_items, l_rectangle, (<- JR.getField (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[]) "VERTICAL_CENTER_FORM"), (JV.int 15), (JV.bool false), (<- JR.getField this "backgroundBasicColor"), (<- JR.getField this "foregroundBasicColor")])


def m_createRectangle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (<- JR.mul l_size (<- JR.getField this "fontHeight")))
    let mut l_startY : JV := (JR.asI (<- JR.sub ((<- JR.div (<- JR.mul (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "displayInfo") "getLastHeight_0" #[]) (JV.int 2)) (JV.int 3))) l_height))
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_rectangle : JV := (<- JR.new "Rectangle" #[(<- JR.call l_pointFactory "createXY_2" #[(JV.int 30), l_startY]), (<- JR.sub (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "displayInfo") "getLastWidth_0" #[]) (JV.int 30)), l_startY])
    return l_rectangle


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "commonStrings") "START"), this, (JV.str "open")])
    let _ := (<- JR.call (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[]) "addListenerInterface_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[]) "addListener_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "GameCommandCanvas" "commonStrings") "CLOSE")])
    let _ := (<- JR.call (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[]) "removeListener_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[]) "removeListener_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "repaintProcessor") "process_0" #[])
    pure JV.null


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "GameCommandCanvas" "id"))


def m_keyPressed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "keyPressedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyReleased_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "keyReleasedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyRepeated_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "keyRepeatedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyPressedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "KEY_PRESSED")])
    let _ := (<- JR.call this "addGameKeyEvent_3" #[l_keyCode, (JV.int 0), (JV.bool false)])
    pure JV.null


def m_keyReleasedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call this "removeGameKeyEvent_3" #[l_keyCode, l_deviceId, (JV.bool false)])
    pure JV.null


def m_keyRepeatedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.getField this "isSingleKeyRepeatableProcessing") then
        let _ := (<- JR.call this "addGameKeyEvent_3" #[l_keyCode, l_deviceId, (JV.bool true)])
        pure ()
    pure JV.null


def m_addGameKeyEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_repeated : JV := (JR.arg jargs 2)
    try
        let mut l_gameKey : JV := (<- JR.call (<- JR.getField this "inputToGameKeyMapping") "getInstanceForCanvas_2" #[this, l_keyCode])
        if JR.truth (<- JR.ne l_gameKey (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")) then
            let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[this, l_gameKey])
            let _ := (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
            let _ := (<- JR.call (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameInputStrings") "NO_KEY")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "ADD_KEY_EVENT")])
            pure ()
        pure ()
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "put_4" #[(JV.str "Key Event Error"), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "ADD_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex2
    pure JV.null


def m_removeGameKeyEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_repeated : JV := (JR.arg jargs 2)
    try
        let mut l_gameKey : JV := (<- JR.call (<- JR.getField this "inputToGameKeyMapping") "getInstanceForCanvas_2" #[this, l_keyCode])
        if JR.truth (<- JR.ne l_gameKey (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")) then
            let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[this, l_gameKey])
            let _ := (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
            let _ := (<- JR.call (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameInputStrings") "NO_KEY")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "REMOVE_KEY_EVENT")])
            pure ()
        pure ()
    catch jex3 =>
        if (<- JR.isInstanceOfAny jex3 #["Exception"]) then
            let mut l_e : JV := jex3
            let _ := (<- JR.call (<- JR.getInherited this "GameCommandCanvas" "logUtil") "put_4" #[(JV.str "Key Event Error"), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "REMOVE_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex3
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "menuPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "repaintBehavior") "repaint_1" #[this])
    pure JV.null


def m_setMenuInputProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_menuInputProcessor : JV := (JR.arg jargs 0)
    JR.setField this "menuInputProcessor" l_menuInputProcessor
    pure JV.null


def m_getMenuInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "menuInputProcessor")


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "MyCanvas" this #[l_name, (<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "EMPTY_CHILD_NAME_LIST")]
    let _ <- jfields this
    JR.setField this "repaintBehavior" (<- JR.callStatic "RepaintBehavior" "getInstance_0" #[])
    JR.setField this "foregroundBasicColor" l_foregroundBasicColor
    JR.setField this "backgroundBasicColor" l_backgroundBasicColor
    JR.setField this "foregroundColor" (JR.asI (<- JR.call (<- JR.getField this "foregroundBasicColor") "intValue_0" #[]))
    JR.setField this "backgroundColor" (JR.asI (<- JR.call (<- JR.getField this "backgroundBasicColor") "intValue_0" #[]))
    let _ := (<- JR.call this "initCommands_1" #[l_cmdListener])
    if JR.truth (<- JR.ne l_cmdListener (<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER")) then
        try
            let _ := (<- JR.call this "initMenu_0" #[])
            let _ := (<- JR.call (<- JR.getField this "repaintProcessor") "process_0" #[])
            pure ()
        catch jex0 =>
            if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
                let mut l_e : JV := jex0
                throw (<- JR.new "RuntimeException" #[])
            else
                throw jex0
        pure ()
    pure this

initialize JR.registerClass {
    name := "GameCommandCanvas",
    javaName := "org.allbinary.game.displayable.canvas.GameCommandCanvas",
    super := "MyCanvas",
    interfaces := #["MenuListener", "DisplayChangeEventListener", "UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("repaintProcessor", JV.null), ("gameInputStrings", JV.null), ("foregroundBasicColor", JV.null), ("backgroundBasicColor", JV.null), ("inputToGameKeyMapping", JV.null), ("gameKeyFactory", JV.null), ("gameKeyEventFactory", JV.null), ("downGameKeyEventHandler", JV.null), ("upGameKeyEventHandler", JV.null), ("repaintBehavior", JV.null), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("foregroundColor", (JV.int 0)), ("backgroundColor", (JV.int 0)), ("menuInputProcessor", JV.null), ("menuPaintable", JV.null), ("menuForm", JV.null), ("isSingleKeyRepeatableProcessing", (JV.bool false)), ("fontHeight", (JV.int 0))],
    statics := #[("id", (JR.asI (JV.int 0)))],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onDisplayChangeEvent_1", #["DisplayChangeEvent"], false, m_onDisplayChangeEvent_1), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("initMenu_0", #[], false, m_initMenu_0), 
        ("createForm_0", #[], false, m_createForm_0), 
        ("createRectangle_1", #["int"], false, m_createRectangle_1), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("update_0", #[], false, m_update_0), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("keyPressed_1", #["int"], false, m_keyPressed_1), 
        ("keyReleased_1", #["int"], false, m_keyReleased_1), 
        ("keyRepeated_1", #["int"], false, m_keyRepeated_1), 
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyReleasedByDevice_2", #["int", "int"], false, m_keyReleasedByDevice_2), 
        ("keyRepeatedByDevice_2", #["int", "int"], false, m_keyRepeatedByDevice_2), 
        ("addGameKeyEvent_3", #["int", "int", "boolean"], false, m_addGameKeyEvent_3), 
        ("removeGameKeyEvent_3", #["int", "int", "boolean"], false, m_removeGameKeyEvent_3), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("setMenuInputProcessor_1", #["BasicMenuInputProcessor"], false, m_setMenuInputProcessor_1), 
        ("getMenuInputProcessor_0", #[], false, m_getMenuInputProcessor_0), 
        ("jinit_4", #["CommandListener", "String", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameCommandCanvas


