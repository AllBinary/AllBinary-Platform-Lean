-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StartCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "basicColorFactory" (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    JR.setField this "features" (<- JR.callStatic "Features" "getInstance_0" #[])
    JR.setField this "openGLFeatureFactory" (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
    JR.setField this "myCommandsFactory" (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[])
    JR.setField this "gameAdStateFactory" (<- JR.callStatic "GameAdStateFactory" "getInstance_0" #[])
    JR.setField this "gameStateFactory" (<- JR.callStatic "GameStateFactory" "getInstance_0" #[])
    JR.setField this "gameInputStrings" (<- JR.callStatic "GameInputStrings" "getInstance_0" #[])
    JR.setField this "formUtil" (<- JR.callStatic "FormUtil" "getInstance_0" #[])
    JR.setField this "basicGameDemoPaintable" (<- JR.callStatic "StatePaintableFactory" "getInstance_0" #[])
    JR.setField this "specialAnimationInterface" (<- JR.callStatic "SpecialAnimation" "getInstance_0" #[])
    JR.setField this "paintedSpecialAnimationInterface" (<- JR.callStatic "SpecialAnimation" "getInstance_0" #[])
    JR.setField this "fullScreenUtil" (<- JR.callStatic "FullScreenUtil" "getInstance_0" #[])
    JR.setField this "highScoresHelper" (<- JR.new "HighScoresHelper" #[])
    JR.setField this "realHighScoresPaintable" (<- JR.new "HighScoresPaintable" #[])
    JR.setField this "highScoresPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "state" (JR.asI (JV.int 0))
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 6000)])
    JR.setField this "menuInputProcessor" (<- JR.callStatic "NoMenuInputProcessor" "getInstance_0" #[])
    JR.setField this "menuForm" (<- JR.callStatic "ScrollSelectionForm" "getNullScrollSelectionForm_0" #[])
    JR.setField this "defaultPaintableInterface" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "paintableInterface" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "tempWait" (JR.asI (<- JR.getField (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[]) "WAIT"))
    JR.setField this "inputToGameKeyMapping" (<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "getInputMapping_0" #[])
    JR.setField this "gameRunnable" (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])
    JR.setField this "progressPaintable" (<- JR.callStatic "ProgressCanvasFactory" "getLazyInstance_0" #[])
    JR.setField this "isSingleKeyRepeatableProcessing" (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "SINGLE_KEY_REPEAT_PRESS")])
    JR.setField this "NONE" (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "NONE")
    JR.setField this "gameKeyEventFactory" (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[])
    JR.setField this "SET_STATE" (JV.str "setState")
    JR.setField this "baseGameStatistics" (<- JR.callStatic "GameStatisticsFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onDisplayChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEvent : JV := (JR.arg jargs 0)
    try
        let mut l_scrollSelectionForm : JV := (<- JR.call this "getMenuForm_0" #[])
        if JR.truth (<- JR.ne l_scrollSelectionForm JV.null) then
            let mut l_formType : JV := (<- JR.call (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[]) "getFormType_0" #[])
            let mut l_rectangle : JV := (<- JR.call (<- JR.getField this "formUtil") "createFormRectangle_0" #[])
            let _ := (<- JR.call l_scrollSelectionForm "init_2" #[l_rectangle, l_formType])
            pure ()
        let _ := (<- JR.call (<- JR.getField this "overlayPaintable") "init_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "StartCanvas" "canvasStrings") "ON_DISPLAY_CHANGE_EVENT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getCustomCommands_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
        let mut l_commandArray : JV := (<- JR.arrayOf "L" #[(<- JR.getField l_gameCommandsFactory "START_COMMAND"), (<- JR.getField (<- JR.callStatic "HighScoreCommands" "getInstance_0" #[]) "DISPLAY"), (<- JR.getStatic "GameInputMappingCanvas" "DISPLAY"), (<- JR.getField l_gameCommandsFactory "DISPLAY_ABOUT")])
        return l_commandArray
    else
        let mut l_commandList : JV := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getField l_gameCommandsFactory "START_COMMAND")])
        let mut l_inApplicationPurchaseFactory : JV := (<- JR.callStatic "InApplicationPurchaseFactory" "getInstance_0" #[])
        if JR.truth (<- JR.call l_inApplicationPurchaseFactory "isEnabled_0" #[]) then
            let mut l_list : JV := (<- JR.call (<- JR.callStatic "LockableFeatureFactory" "getInstance_0" #[]) "getList_0" #[])
            if JR.truth (<- JR.cand (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 0)) (do pure (JR.not (<- JR.call l_inApplicationPurchaseFactory "isPurchased_1" #[(<- JR.call l_list "get_1" #[(JV.int 0)])])))) then
                let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getField l_gameCommandsFactory "BUY_COMMAND")])
                pure ()
            pure ()
        let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getField (<- JR.callStatic "HighScoreCommands" "getInstance_0" #[]) "DISPLAY")])
        try
            let mut l_isOverScan : JV := (<- JR.call (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[]) "isOverScan_0" #[])
            if JR.truth (<- JR.getStatic "SWTUtil" "isSWT") then
                let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getStatic "GameInputMappingCanvas" "DISPLAY")])
                pure ()
            else
                if JR.truth (JR.not l_isOverScan) then
                    let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getField l_gameCommandsFactory "DISPLAY_OPTIONS")])
                    let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getField l_gameCommandsFactory "DISPLAY_LOAD_FORM")])
                    let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getStatic "GameInputMappingCanvas" "DISPLAY")])
                    pure ()
            pure ()
        catch jex1 =>
            if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
                let mut l_e : JV := jex1
                pure ()
            else
                throw jex1
        let _ := (<- JR.call l_commandList "add_1" #[(<- JR.getField l_gameCommandsFactory "DISPLAY_ABOUT")])
        let mut l_commandArray : JV := (<- JR.call l_commandList "toArray_0" #[])
        return l_commandArray
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "StartCanvas" "removeAllCommands_0" #[])
    let mut l_commandArray : JV := (<- JR.call this "getCustomCommands_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_commandArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.callInherited this "StartCanvas" "addCommand_1" #[(<- JR.aget l_commandArray l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.callStatic "CustomGameMenuUtil" "add_1" #[this])
    let _ := (<- JR.callInherited this "StartCanvas" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_initPostPaint_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_mediaInit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "AllBinaryMediaManager" "init_1" #[(<- JR.callStatic "EarlySoundsFactory" "getInstance_0" #[])])
    pure JV.null


def m_itemStateChanged_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "NOT_IMPLEMENTED"), this])
    pure JV.null


def m_initMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "close_0" #[])
    let _ := (<- JR.call this "open_0" #[])
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[]) "addListenerInterface_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[]) "addListener_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[]) "removeListener_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[]) "removeListener_1" #[(<- JR.call this "getMenuInputProcessor_0" #[])])
    pure JV.null


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "StartCanvas" "id"))


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
    let _ := (<- JR.call this "addGameKeyEvent_2" #[l_keyCode, (JV.bool false)])
    pure JV.null


def m_keyReleasedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call this "removeGameKeyEvent_2" #[l_keyCode, (JV.bool false)])
    pure JV.null


def m_keyRepeatedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.getField this "isSingleKeyRepeatableProcessing") then
        let _ := (<- JR.call this "addGameKeyEvent_2" #[l_keyCode, (JV.bool true)])
        pure ()
    pure JV.null


def m_addGameKeyEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_repeated : JV := (JR.arg jargs 1)
    try
        let mut l_gameKey : JV := (<- JR.call (<- JR.getField this "inputToGameKeyMapping") "getInstanceForCanvas_2" #[this, l_keyCode])
        if JR.truth (<- JR.ne l_gameKey (<- JR.getField this "NONE")) then
            let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[this, l_gameKey])
            let _ := (<- JR.call (<- JR.callStatic "DownGameKeyEventHandler" "getInstance_0" #[]) "fireEvent_1" #[l_gameKeyEvent])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameInputStrings") "NO_KEY")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "ADD_KEY_EVENT")])
            pure ()
        pure ()
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "put_4" #[(JV.str "Key Event Error"), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "ADD_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex2
    pure JV.null


def m_removeGameKeyEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_repeated : JV := (JR.arg jargs 1)
    try
        let mut l_gameKey : JV := (<- JR.call (<- JR.getField this "inputToGameKeyMapping") "getInstanceForCanvas_2" #[this, l_keyCode])
        if JR.truth (<- JR.ne l_gameKey (<- JR.getField this "NONE")) then
            let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[this, l_gameKey])
            let _ := (<- JR.call (<- JR.callStatic "UpGameKeyEventHandler" "getInstance_0" #[]) "fireEvent_1" #[l_gameKeyEvent])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameInputStrings") "NO_KEY")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "REMOVE_KEY_EVENT")])
            pure ()
        pure ()
    catch jex3 =>
        if (<- JR.isInstanceOfAny jex3 #["Exception"]) then
            let mut l_e : JV := jex3
            let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "put_4" #[(JV.str "Key Event Error"), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "REMOVE_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex3
    pure JV.null


def m_pause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "close_0" #[])
    let _ := (<- JR.callInherited this "StartCanvas" "setPaused_1" #[(JV.bool true)])
    pure JV.null


def m_unPause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "open_0" #[])
    let _ := (<- JR.callInherited this "StartCanvas" "setPaused_1" #[(JV.bool false)])
    pure JV.null


def m_isPausable_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.call (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[]) "getUsedRunnable_0" #[]) (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_isGameOver_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "NOT_IMPLEMENTED")]) "append_1" #[(JV.str " since not a game")]) "toString_0" #[]), this, (JV.str "isGameOver")])
    return (JV.bool false)


def m_setLoadStateHashtable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(JV.str "Trying to continue a demo lol - only continue a game canvas not the demo"), this, (JV.str "setLoadStateHashtable")])
    pure JV.null


def m_getLoadStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(JV.str "Trying to continue a demo lol - only continue a game canvas not the demo"), this, (JV.str "getLoadStateHashtable")])
    return (<- JR.getField (<- JR.getInherited this "StartCanvas" "stdUtil") "NULL_TABLE")


def m_getCurrentStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(JV.str "Trying to save the AI lol"), this, (JV.str "getCurrentStateHashtable")])
    return (<- JR.getField (<- JR.getInherited this "StartCanvas" "stdUtil") "NULL_TABLE")


def m_setHighScoreSubmitted_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isNotUsed : JV := (JR.arg jargs 0)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "paintableInterface") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "paintedSpecialAnimationInterface") "paintXY_3" #[l_graphics, (JV.int 0), (JV.int 0)])
    let _ := (<- JR.call (<- JR.getField this "highScoresPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.call this "getBasicGameDemoPaintable_0" #[]) "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "overlayPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "progressPaintable") "paint_1" #[l_graphics])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "paintableInterface") "paintThreed_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "paintedSpecialAnimationInterface") "paintThreedXYZ_4" #[l_graphics, (JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null


def m_processGameOver_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(JV.str "Not Implemented since not a game"), this, (JV.str "setGameOver")])
    pure JV.null


def m_demoStateChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newState : JV := (JR.asI (<- JR.add (<- JR.getField this "state") (JV.int 1)))
    if JR.truth (<- JR.gt l_newState (JV.int 2)) then
        l_newState := (JR.asI (JV.int 0))
        pure ()
    else
        if JR.truth (<- JR.eq l_newState (JV.int 2)) then
            if JR.truth (JR.not (<- JR.call (<- JR.getField this "highScoresHelper") "isAnyHighScores_0" #[])) then
                l_newState := (JR.asI (JV.int 0))
                pure ()
            else
                let mut l_highScores : JV := (<- JR.call (<- JR.getField this "highScoresHelper") "getNextHighScores_0" #[])
                if JR.truth (<- JR.eq l_highScores (<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])) then
                    l_newState := (JR.asI (JV.int 0))
                    pure ()
                else
                    let _ := (<- JR.call (<- JR.call this "getRealHighScoresPaintable_0" #[]) "setHighScores_1" #[l_highScores])
                    pure ()
                pure ()
            pure ()
    let _ := (<- JR.call this "setState_1" #[l_newState])
    let _ := (<- JR.call this "updateDemoState_0" #[])
    pure JV.null


def m_updateDemoState_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "createInstance_1" #[(<- JR.getField this "state")]) "toString_0" #[]), this, (<- JR.getField this "SET_STATE")])
    let _ := (<- JR.call (<- JR.call this "getBasicGameDemoPaintable_0" #[]) "setState_1" #[(<- JR.getField this "state")])
    if JR.truth (<- JR.eq (<- JR.getField this "state") (JV.int 0)) then
        JR.setField this "highScoresPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
        JR.setField this "paintedSpecialAnimationInterface" (<- JR.call this "getSpecialAnimationInterface_0" #[])
        let _ := (<- JR.call (<- JR.call this "getSpecialAnimationInterface_0" #[]) "reset_0" #[])
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getField this "state") (JV.int 1)) then
            JR.setField this "paintedSpecialAnimationInterface" (<- JR.callStatic "SpecialAnimation" "getInstance_0" #[])
            pure ()
        else
            if JR.truth (<- JR.eq (<- JR.getField this "state") (JV.int 2)) then
                JR.setField this "highScoresPaintable" (<- JR.call this "getRealHighScoresPaintable_0" #[])
                pure ()
    let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
    let _ := (<- JR.call l_gameAdState "processPageAdState_0" #[])
    pure JV.null


def m_getNextRandom_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "NOT_IMPLEMENTED")])


def m_createGameLayerManager_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_randomValue : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "NOT_IMPLEMENTED")])


def m_createRunnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_randomLevel : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "NOT_IMPLEMENTED")])


def m_createCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "highScoresPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    let mut l_randomLevel : JV := (JR.asI (<- JR.call this "getNextRandom_0" #[]))
    pure JV.null


def m_start_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_preDemoProcess_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "overlayPaintable") "update_0" #[])
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.call this "getMenuInputProcessor_0" #[]) "processInputList_0" #[])
    let _ := (<- JR.call this "preDemoProcess_0" #[])
    if JR.truth (<- JR.eq (<- JR.getField this "state") (JV.int 0)) then
        let mut l_indexedAnimationBehavior : JV := (<- JR.call (<- JR.call this "getSpecialAnimationInterface_0" #[]) "getAnimationBehavior_0" #[])
        if JR.truth (<- JR.lt (<- JR.getField l_indexedAnimationBehavior "loopIndex") (JV.int 1)) then
            let _ := (<- JR.call (<- JR.getField this "timeDelayHelper") "setStartTimeTNT_0" #[])
            pure ()
        let mut l_demoGameMidlet : JV := (<- JR.callInherited this "StartCanvas" "getCustomCommandListener_0" #[])
        pure ()
    pure JV.null


def m_startDemoGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_processGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameRunnable") "run_0" #[])
    let _ := (<- JR.call (<- JR.getField this "specialAnimationInterface") "nextFrame_0" #[])
    let _ := (<- JR.call this "process_0" #[])
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "START_RUNNABLE"), this, (<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "RUN")])
    try
        let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Demo Thread")])
        let _ := (<- JR.callInherited this "StartCanvas" "setCurrentThread_0" #[])
        let _ := (<- JR.call this "setRunning_1" #[(JV.bool true)])
        if JR.truth (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "LOAD_ONDEMAND")]) then
            let _ := (<- JR.call l_progressCanvas "end_0" #[])
            pure ()
        else
            let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Demo Thread Running")])
            pure ()
        let _ := (<- JR.call (<- JR.getField this "fullScreenUtil") "initOnRun_2" #[this, (<- JR.callInherited this "StartCanvas" "getCustomCommandListener_0" #[])])
        let _ := (<- JR.call this "initMenu_0" #[])
        let _ := (<- JR.call this "initPostPaint_0" #[])
        let _ := (<- JR.call this "updateDemoState_0" #[])
        if JR.truth (<- JR.call (<- JR.getField this "features") "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_AS_GAME_THREAD")]) then
            let _ := (<- JR.call (<- JR.callStatic "OpenGLThreadUtil" "getInstance_0" #[]) "onResume_0" #[])
            pure ()
        if JR.truth (<- JR.cor (<- JR.call (<- JR.getField this "features") "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_AS_GAME_THREAD")]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
            pure ()
        else
            repeat
                if !(JR.truth (<- JR.callInherited this "StartCanvas" "isRunning_0" #[])) then break
                let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "loopTimeHelper") "setStartTimeTNT_0" #[])
                let _ := (<- JR.call this "processGame_0" #[])
                let _ := (<- JR.callInherited this "StartCanvas" "processLoopSleep_0" #[])
                pure ()
            let _ := (<- JR.call this "end_0" #[])
            pure ()
        pure ()
    catch jex4 =>
        if (<- JR.isInstanceOfAny jex4 #["Exception"]) then
            let mut l_e : JV := jex4
            let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "RUN"), l_e])
            pure ()
        else
            throw jex4
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "END_RUNNABLE"), this, (<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "RUN")])
    pure JV.null


def m_setRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_running : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "RunnableCanvas" this "setRunning_1" #[l_running])
    try
        if JR.truth (<- JR.cand ((<- JR.cor (<- JR.call (<- JR.getField this "features") "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL")]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[])))) (do pure (JR.not l_running))) then
            let mut l_currentDisplayableFactory : JV := (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[])
            let _ := (<- JR.call l_currentDisplayableFactory "clearRunnable_0" #[])
            let _ := (<- JR.call this "end_0" #[])
            pure ()
        pure ()
    catch jex5 =>
        if (<- JR.isInstanceOfAny jex5 #["Exception"]) then
            let mut l_e : JV := jex5
            let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getInherited this "StartCanvas" "SET_RUNNING"), l_e])
            pure ()
        else
            throw jex5
    pure JV.null


def m_end_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "baseGameStatistics") "add_1" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getStatic "StartCanvas" "BOT_GAME_STATS")]) "append_1" #[(<- JR.call (<- JR.getField this "baseGameStatistics") "toString_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "NEW_LINE")]) "toString_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "baseGameStatistics") "init_0" #[])
    if JR.truth (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "LOAD_ONDEMAND")]) then
        let _ := (<- JR.call l_progressCanvas "start_0" #[])
        pure ()
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(JV.str "Demo End"), this, (<- JR.getField (<- JR.getInherited this "StartCanvas" "commonStrings") "RUN")])
    let _ := (<- JR.call this "close_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
    pure JV.null


def m_setGameState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameState : JV := (JR.arg jargs 0)
    pure JV.null


def m_getGameState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.getField this "gameStateFactory") "PLAYING_GAME_STATE")


def m_getState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "state"))


def m_setState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "state" (JR.asI l_state)
    pure JV.null


def m_isHighScoreSubmitted_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "StartCanvas" "logUtil") "putF_3" #[(JV.str "Wow the AI got a high score!"), this, (JV.str "isHighScoreSubmitted")])
    return (JV.bool false)


def m_getRealHighScoresPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "realHighScoresPaintable")


def m_setSpecialAnimationInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialAnimationInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_specialAnimationInterface "setFrame_1" #[(JV.int 0)])
    JR.setField this "specialAnimationInterface" l_specialAnimationInterface
    pure JV.null


def m_getSpecialAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "specialAnimationInterface")


def m_setPaintableInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintableInterface : JV := (JR.arg jargs 0)
    JR.setField this "paintableInterface" l_paintableInterface
    pure JV.null


def m_getPaintableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "paintableInterface")


def m_setDefaultPaintableInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_defaultPaintableInterface : JV := (JR.arg jargs 0)
    JR.setField this "defaultPaintableInterface" l_defaultPaintableInterface
    pure JV.null


def m_getDefaultPaintableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "defaultPaintableInterface")


def m_getHighScoresFactoryInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "highScoresFactoryInterface")


def m_setMenuInputProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_menuInputProcessor : JV := (JR.arg jargs 0)
    JR.setField this "menuInputProcessor" l_menuInputProcessor
    pure JV.null


def m_getMenuInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "menuInputProcessor")


def m_getMenuForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "menuForm")


def m_setMenuForm_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_menuForm : JV := (JR.arg jargs 0)
    JR.setField this "menuForm" l_menuForm
    pure JV.null


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initialized")


def m_getOverlayPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "overlayPaintable")


def m_setBasicGameDemoPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicGameDemoPaintable : JV := (JR.arg jargs 0)
    JR.setField this "basicGameDemoPaintable" l_basicGameDemoPaintable
    pure JV.null


def m_getBasicGameDemoPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicGameDemoPaintable")


def m_setTempWait_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_tempWait : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "tempWait" (JR.asI l_tempWait)
    pure JV.null


def m_getTempWait_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "tempWait"))


def m_isSingleThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.cor (<- JR.call (<- JR.callStatic "OpenGLFeatureUtil" "getInstance_0" #[]) "isAnyThreed_0" #[]) (do pure (<- JR.getStatic "SWTUtil" "isSWT")))


def m_isRunningInAnotherThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_openGLFeatureFactory : JV := (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isDefault_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL_AS_GAME_THREAD")]) then
        return (JV.bool true)
    else
        return (<- JR.callInherited this "StartCanvas" "isRunning_0" #[])
    pure JV.null


def m_getGameInitializationInterfaceFactoryInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameInitializationInterfaceFactoryInterface")


def m_getTitle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "RunnableCanvas" this "getTitle_0" #[])


def m_isPaused_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "RunnableCanvas" this "isPaused_0" #[])


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "RunnableCanvas" this "getType_0" #[]))


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_commandListener : JV := (JR.arg jargs 1)
    let mut l_highScoresFactoryInterface : JV := (JR.arg jargs 2)
    let mut l_paintable : JV := (JR.arg jargs 3)
    let mut l_overlayPaintable : JV := (JR.arg jargs 4)
    let mut l_gameInitializationInterfaceFactoryInterface : JV := (JR.arg jargs 5)
    let mut l_isContinue : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "RunnableCanvas" this #[l_commandListener, (<- JR.getField (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[]) "DEFAULT_CHILD_NAME_LIST"), (JV.bool true)]
    let _ <- jfields this
    let _ := (<- JR.callInherited this "StartCanvas" "setWait_1" #[(<- JR.getField (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[]) "WAIT")])
    JR.setField this "gameInitializationInterfaceFactoryInterface" l_gameInitializationInterfaceFactoryInterface
    let _ := (<- JR.call (<- JR.callStatic "GameInitializationUtil" "getInstance_0" #[]) "initDemo_3" #[l_abeClientInformation, this, l_gameInitializationInterfaceFactoryInterface])
    let _ := (<- JR.call (<- JR.callStatic "ResizableListenerHandler" "getInstance_0" #[]) "fireEvent_1" #[(JV.bool false)])
    JR.setField this "overlayPaintable" l_overlayPaintable
    JR.setField this "highScoresFactoryInterface" l_highScoresFactoryInterface
    let _ := (<- JR.call this "setDefaultPaintableInterface_1" #[l_paintable])
    let _ := (<- JR.call this "setPaintableInterface_1" #[(<- JR.call this "getDefaultPaintableInterface_0" #[])])
    if JR.truth l_isContinue then
        let _ := (<- JR.callInherited this "StartCanvas" "addCommand_1" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "CONTINUE_COMMAND")])
        pure ()
    if JR.truth (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "isChangedFeature_1" #[(<- JR.getField (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[]) "SOUND")]) then
        let _ := (<- JR.call this "mediaInit_0" #[])
        pure ()
    let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    pure this

initialize JR.registerClass {
    name := "StartCanvas",
    javaName := "org.allbinary.game.displayable.canvas.StartCanvas",
    super := "RunnableCanvas",
    interfaces := #["GameCanvasRunnableInterface", "MenuListener", "DisplayChangeEventListener"],
    isInterface := false,
    fields := #[("basicColorFactory", JV.null), ("features", JV.null), ("openGLFeatureFactory", JV.null), ("myCommandsFactory", JV.null), ("gameAdStateFactory", JV.null), ("gameStateFactory", JV.null), ("gameInputStrings", JV.null), ("formUtil", JV.null), ("basicGameDemoPaintable", JV.null), ("specialAnimationInterface", JV.null), ("paintedSpecialAnimationInterface", JV.null), ("fullScreenUtil", JV.null), ("highScoresHelper", JV.null), ("realHighScoresPaintable", JV.null), ("highScoresPaintable", JV.null), ("state", (JV.int 0)), ("timeDelayHelper", JV.null), ("highScoresFactoryInterface", JV.null), ("menuInputProcessor", JV.null), ("menuForm", JV.null), ("gameInitializationInterfaceFactoryInterface", JV.null), ("initialized", (JV.bool false)), ("defaultPaintableInterface", JV.null), ("paintableInterface", JV.null), ("overlayPaintable", JV.null), ("tempWait", (JV.int 0)), ("inputToGameKeyMapping", JV.null), ("gameRunnable", JV.null), ("progressPaintable", JV.null), ("isSingleKeyRepeatableProcessing", (JV.bool false)), ("NONE", JV.null), ("gameKeyEventFactory", JV.null), ("SET_STATE", JV.null), ("baseGameStatistics", JV.null)],
    statics := #[("id", (JR.asI (JV.int 0))), ("BOT_GAME_STATS", (JV.str "Bot Game Statistics: "))],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onDisplayChangeEvent_1", #["DisplayChangeEvent"], false, m_onDisplayChangeEvent_1), 
        ("getCustomCommands_0", #[], false, m_getCustomCommands_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("initPostPaint_0", #[], false, m_initPostPaint_0), 
        ("mediaInit_0", #[], false, m_mediaInit_0), 
        ("itemStateChanged_1", #["LcduiItem"], false, m_itemStateChanged_1), 
        ("initMenu_0", #[], false, m_initMenu_0), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("keyPressed_1", #["int"], false, m_keyPressed_1), 
        ("keyReleased_1", #["int"], false, m_keyReleased_1), 
        ("keyRepeated_1", #["int"], false, m_keyRepeated_1), 
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyReleasedByDevice_2", #["int", "int"], false, m_keyReleasedByDevice_2), 
        ("keyRepeatedByDevice_2", #["int", "int"], false, m_keyRepeatedByDevice_2), 
        ("addGameKeyEvent_2", #["int", "boolean"], false, m_addGameKeyEvent_2), 
        ("removeGameKeyEvent_2", #["int", "boolean"], false, m_removeGameKeyEvent_2), 
        ("pause_0", #[], false, m_pause_0), 
        ("unPause_0", #[], false, m_unPause_0), 
        ("isPausable_0", #[], false, m_isPausable_0), 
        ("isGameOver_0", #[], false, m_isGameOver_0), 
        ("setLoadStateHashtable_1", #["ABHashtable"], false, m_setLoadStateHashtable_1), 
        ("getLoadStateHashtable_0", #[], false, m_getLoadStateHashtable_0), 
        ("getCurrentStateHashtable_0", #[], false, m_getCurrentStateHashtable_0), 
        ("setHighScoreSubmitted_1", #["boolean"], false, m_setHighScoreSubmitted_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("processGameOver_0", #[], false, m_processGameOver_0), 
        ("demoStateChange_0", #[], false, m_demoStateChange_0), 
        ("updateDemoState_0", #[], false, m_updateDemoState_0), 
        ("getNextRandom_0", #[], false, m_getNextRandom_0), 
        ("createGameLayerManager_1", #["int"], false, m_createGameLayerManager_1), 
        ("createRunnable_1", #["int"], false, m_createRunnable_1), 
        ("createCanvas_0", #[], false, m_createCanvas_0), 
        ("start_0", #[], false, m_start_0), 
        ("preDemoProcess_0", #[], false, m_preDemoProcess_0), 
        ("process_0", #[], false, m_process_0), 
        ("startDemoGame_0", #[], false, m_startDemoGame_0), 
        ("processGame_0", #[], false, m_processGame_0), 
        ("run_0", #[], false, m_run_0), 
        ("setRunning_1", #["boolean"], false, m_setRunning_1), 
        ("end_0", #[], false, m_end_0), 
        ("setGameState_1", #["GameState"], false, m_setGameState_1), 
        ("getGameState_0", #[], false, m_getGameState_0), 
        ("getState_0", #[], false, m_getState_0), 
        ("setState_1", #["int"], false, m_setState_1), 
        ("isHighScoreSubmitted_0", #[], false, m_isHighScoreSubmitted_0), 
        ("getRealHighScoresPaintable_0", #[], false, m_getRealHighScoresPaintable_0), 
        ("setSpecialAnimationInterface_1", #["SpecialAnimation"], false, m_setSpecialAnimationInterface_1), 
        ("getSpecialAnimationInterface_0", #[], false, m_getSpecialAnimationInterface_0), 
        ("setPaintableInterface_1", #["PaintableInterface"], false, m_setPaintableInterface_1), 
        ("getPaintableInterface_0", #[], false, m_getPaintableInterface_0), 
        ("setDefaultPaintableInterface_1", #["Paintable"], false, m_setDefaultPaintableInterface_1), 
        ("getDefaultPaintableInterface_0", #[], false, m_getDefaultPaintableInterface_0), 
        ("getHighScoresFactoryInterface_0", #[], false, m_getHighScoresFactoryInterface_0), 
        ("setMenuInputProcessor_1", #["BasicMenuInputProcessor"], false, m_setMenuInputProcessor_1), 
        ("getMenuInputProcessor_0", #[], false, m_getMenuInputProcessor_0), 
        ("getMenuForm_0", #[], false, m_getMenuForm_0), 
        ("setMenuForm_1", #["ScrollSelectionForm"], false, m_setMenuForm_1), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("getOverlayPaintable_0", #[], false, m_getOverlayPaintable_0), 
        ("setBasicGameDemoPaintable_1", #["StatePaintable"], false, m_setBasicGameDemoPaintable_1), 
        ("getBasicGameDemoPaintable_0", #[], false, m_getBasicGameDemoPaintable_0), 
        ("setTempWait_1", #["int"], false, m_setTempWait_1), 
        ("getTempWait_0", #[], false, m_getTempWait_0), 
        ("isSingleThread_0", #[], false, m_isSingleThread_0), 
        ("isRunningInAnotherThread_0", #[], false, m_isRunningInAnotherThread_0), 
        ("getGameInitializationInterfaceFactoryInterface_0", #[], false, m_getGameInitializationInterfaceFactoryInterface_0), 
        ("getTitle_0", #[], false, m_getTitle_0), 
        ("isPaused_0", #[], false, m_isPaused_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("jinit_7", #["AbeClientInformationInterface", "CommandListener", "HighScoresFactoryInterface", "Paintable", "InitUpdatePaintable", "BasicBuildGameInitializerFactory", "boolean"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StartCanvas


