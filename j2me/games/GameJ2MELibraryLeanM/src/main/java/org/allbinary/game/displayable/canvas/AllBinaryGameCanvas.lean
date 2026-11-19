-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryGameCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "basicColorFactory" (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "touchFeatureFactory" (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[])
    JR.setField this "openGLFeatureFactory" (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
    JR.setField this "touchButtonFactory" (<- JR.callStatic "TouchButtonFactory" "getInstance_0" #[])
    JR.setField this "gameAdStateFactory" (<- JR.callStatic "GameAdStateFactory" "getInstance_0" #[])
    JR.setField this "gameStrings" (<- JR.callStatic "GameStrings" "getInstance_0" #[])
    JR.setField this "gameInputStrings" (<- JR.callStatic "GameInputStrings" "getInstance_0" #[])
    JR.setField this "gameStateFactory" (<- JR.callStatic "GameStateFactory" "getInstance_0" #[])
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    JR.setField this "gameTickDisplayInfoSingleton" (<- JR.callStatic "GameTickDisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "gameRunnable" (<- JR.new "GameCanvasRunnable" #[this])
    JR.setField this "gamePauseRunnable" (<- JR.new "GameCanvasPauseRunnable" #[this])
    JR.setField this "formUtil" (<- JR.callStatic "FormUtil" "getInstance_0" #[])
    JR.setField this "myFormUtil" (<- JR.callStatic "MyFormUtil" "getInstance_0" #[])
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "gameSpecificPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "sensorGameUpdateProcessor" (<- JR.new "SingleSensorGameUpdateProcessor" #[])
    JR.setField this "endGameInfo" (<- JR.new "EndGameInfo" #[])
    JR.setField this "startIntermissionInterface" (<- JR.new "Intermission" #[])
    JR.setField this "endLevelIntermissionInterface" (<- JR.new "Intermission" #[])
    JR.setField this "gameLayerManager" (<- JR.callStatic "AllBinaryGameLayerManager" "getNullInstance_0" #[])
    JR.setField this "gameState" (<- JR.getField (<- JR.getField this "gameStateFactory") "NO_GAME_STATE")
    JR.setField this "gameStateTimeHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    JR.setField this "realHighScoresPaintable" (<- JR.new "HighScoresPaintable" #[])
    JR.setField this "highScoresPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "localPlayerGameInputList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "hashtable" (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "stdUtil") "NULL_TABLE")
    JR.setField this "gameInitializationInterfaceFactoryInterface" (<- JR.getStatic "BasicBuildGameInitializerFactory" "NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY")
    JR.setField this "touchButtonsPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "touchPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "cheatProcessor" (<- JR.callStatic "NoPlayerGameInput" "getInstance_0" #[])
    JR.setField this "gameInputProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "endGameProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "realEndGameProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "startIntermissionProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "realStartIntermissionProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "endGamePaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "endGameStatePaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "nonBotPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "intermissionPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "startIntermissionPaintable" (<- JR.callStatic "NullInitUpdatePaintable" "getInstance_0" #[])
    JR.setField this "mainStateProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "processGameProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "mainMenuInputProcessor" (<- JR.callStatic "NoMenuInputProcessor" "getInstance_0" #[])
    JR.setField this "popupMenuInputProcessor" (<- JR.callStatic "NoMenuInputProcessor" "getInstance_0" #[])
    JR.setField this "menuInputProcessor" (<- JR.callStatic "NoMenuInputProcessor" "getInstance_0" #[])
    JR.setField this "menuForm" (<- JR.callStatic "ScrollSelectionForm" "getNullScrollSelectionForm_0" #[])
    JR.setField this "formPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "openMenuPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "menuPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "currentTouchInputFactory" (<- JR.callStatic "NoButtonsTouchInputFactory" "getInstance_0" #[])
    JR.setField this "colorFillPaintable" (<- JR.call (<- JR.callStatic "ColorFillPaintableFactory" "getInstance_0" #[]) "getInstance_2" #[(<- JR.getField (<- JR.getField this "basicColorFactory") "BLACK"), (JV.bool true)])
    JR.setField this "baseGameStatistics" (<- JR.callStatic "GameStatisticsFactory" "getInstance_0" #[])
    JR.setField this "primaryPlayerQueue" (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[])
    JR.setField this "secondaryPlayerQueue" (<- JR.callStatic "SecondaryPlayerQueueFactory" "getInstance_0" #[])
    JR.setField this "BUILD_GAME" (JV.str "buildGame")
    JR.setField this "gameTypeFactory" (<- JR.callStatic "GameTypeFactory" "getInstance_0" #[])
    JR.setField this "screenCapture" (<- JR.callStatic "ScreenCaptureFactory" "getInstance_0" #[])
    JR.setField this "basicMotionGesturesHandler" (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[])
    JR.setField this "gameKeyEventHandler" (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "progressPaintable" (<- JR.callStatic "ProgressCanvasFactory" "getLazyInstance_0" #[])
    JR.setField this "gameCanvasStartListener" (<- JR.getStatic "NullDemoPaintable" "NULL_DEMO_PAINTABLE")
    JR.setField this "rawGameInputProcessor" (<- JR.new "GameCanvasInputProcessor" #[this])
    JR.setField this "rawInputProcessor" (<- JR.new "FormInputProcessor" #[this])
    JR.setField this "inputProcessor" (<- JR.call this "getRawGameInputProcessor_0" #[])
    JR.setField this "YIELD_SLEEP" (JR.asJ (JV.long 100))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    try
        let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START")]) "append_1" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "canvasStrings") "FD_WIDTH")]) "appendint_1" #[(<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font])]) "append_1" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "canvasStrings") "FD_HEIGHT")]) "appendint_1" #[(<- JR.call l_font "getHeight_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "canvasStrings") "UPDATE_MEASUREMENT")])
        JR.setField this "fontHeightP" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
        let _ := (<- JR.call (<- JR.getField this "myFormUtil") "updateMeasurement_1" #[l_graphics])
        let mut l_popupMenuRectangle : JV := (<- JR.call (<- JR.getField this "myFormUtil") "getPopupMenuRectangle_0" #[])
        let mut l_basicPopupMenuPaintable : JV := ((<- JR.call this "getOpenMenuPaintable_0" #[]))
        let _ := (<- JR.call l_basicPopupMenuPaintable "init_1" #[l_popupMenuRectangle])
        if JR.truth (<- JR.ne (<- JR.call this "getPopupMenuInputProcessor_0" #[]) (<- JR.callStatic "NoMenuInputProcessor" "getInstance_0" #[])) then
            let mut l_popupMenuInputProcessor : JV := ((<- JR.call this "getPopupMenuInputProcessor_0" #[]))
            let _ := (<- JR.call l_popupMenuInputProcessor "init_1" #[l_popupMenuRectangle])
            pure ()
        JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "canvasStrings") "ON_DISPLAY_CHANGE_EVENT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getInGameMenuBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "InGameMenuBehavior" "getInstance_0" #[])


def m_setCurrentThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
        let _ := (<- JR.callSuper "RunnableCanvas" this "setCurrentThreadFake_0" #[])
        pure ()
    else
        let _ := (<- JR.callSuper "RunnableCanvas" this "setCurrentThread_0" #[])
        pure ()
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onDisplayChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEvent : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START")]) "append_1" #[(<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "canvasStrings") "UPDATE_MEASUREMENT")])
        JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
        let _ := (<- JR.call (<- JR.getField this "menuBehavior") "onDisplayChangeEvent_2" #[this, l_displayChangeEvent])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "canvasStrings") "ON_DISPLAY_CHANGE_EVENT"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_updateMenuFromEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEvent : JV := (JR.arg jargs 0)
    let mut l_formType : JV := (<- JR.call (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[]) "getFormType_0" #[])
    let mut l_rectangle : JV := (<- JR.call (<- JR.getField this "formUtil") "createFormRectangle_0" #[])
    let _ := (<- JR.call (<- JR.getField this "menuForm") "init_2" #[l_rectangle, l_formType])
    if JR.truth (<- JR.ne (<- JR.getField this "currentTouchInputFactory") (<- JR.callStatic "NoButtonsTouchInputFactory" "getInstance_0" #[])) then
        let _ := (<- JR.call (<- JR.getField this "touchButtonFactory") "toggle_2" #[(<- JR.call this "isPaused_0" #[]), (<- JR.call (<- JR.getField this "currentTouchInputFactory") "getList_0" #[])])
        pure ()
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_processSleep_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "RunnableCanvas" this "processSleep_0" #[])
    if JR.truth (<- JR.callStatic "AllBinaryMediaManager" "update_0" #[]) then
        if JR.truth (JR.not (<- JR.call (<- JR.getField this "primaryPlayerQueue") "process_0" #[])) then
            let _ := (<- JR.call (<- JR.getField this "secondaryPlayerQueue") "process_0" #[])
            pure ()
        pure ()
    if JR.truth (<- JR.ne (<- JR.call (<- JR.getField this "menuInputProcessor") "processInputList_0" #[]) (JV.int (-1))) then
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "runnableCanvasRefreshHelper") "process_0" #[])
        pure ()
    pure JV.null


def m_initPopupMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "popupMenuInputProcessor") (<- JR.callStatic "NoMenuInputProcessor" "getInstance_0" #[])) then
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        let mut l_popupMenuRectangle : JV := (<- JR.call (<- JR.getField this "myFormUtil") "getPopupMenuRectangle_0" #[])
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.getField this "touchFeatureFactory") "TOUCH_ENABLED")]) then
            let _ := (<- JR.call this "setOpenMenuPaintable_1" #[(<- JR.new "BasicPopupMenuPaintable" #[l_popupMenuRectangle, (<- JR.call (<- JR.getField this "gameLayerManager") "getBackgroundBasicColor_0" #[]), (<- JR.call (<- JR.getField this "gameLayerManager") "getForegroundBasicColor_0" #[])])])
            let _ := (<- JR.call this "setPopupMenuInputProcessor_1" #[(<- JR.new "PopupMenuInputProcessor" #[(<- JR.new "BasicArrayListD" #[]), (JV.int (-1)), this, l_popupMenuRectangle])])
            pure ()
        pure ()
    else
        pure ()
    pure JV.null


def m_initMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "menuBehavior") "initMenu_1" #[this])
        pure ()
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "EXCEPTION"), this, (JV.str "initMenu"), l_e])
            pure ()
        else
            throw jex2
    pure JV.null


def m_initMenu2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "closeMenu_0" #[])
    let mut l_formType : JV := (<- JR.call (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[]) "getFormType_0" #[])
    let mut l_gameLimitedCommandTextItemArrayFactory : JV := (<- JR.callStatic "GameLimitedCommandTextItemArrayFactory" "getInstance_0" #[])
    let mut l_commandTextItemArrayFactory : JV := (<- JR.call l_gameLimitedCommandTextItemArrayFactory "getCommandTextItemArrayFactory_0" #[])
    let mut l_items : JV := (<- JR.call l_commandTextItemArrayFactory "getInstance_3" #[(<- JR.callInherited this "AllBinaryGameCanvas" "getCommandStack_0" #[]), (<- JR.call (<- JR.getField this "gameLayerManager") "getBackgroundBasicColor_0" #[]), (<- JR.call (<- JR.getField this "gameLayerManager") "getForegroundBasicColor_0" #[])])
    let mut l_rectangle : JV := (<- JR.call (<- JR.getField this "formUtil") "createFormRectangle_0" #[])
    let _ := (<- JR.call this "setMenuForm_1" #[(<- JR.callStatic "CommandCurrentSelectionFormFactory" "getInstance_8" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), l_items, l_rectangle, l_formType, (JV.int 25), (JV.bool false), (<- JR.call (<- JR.getField this "gameLayerManager") "getBackgroundBasicColor_0" #[]), (<- JR.call (<- JR.getField this "gameLayerManager") "getForegroundBasicColor_0" #[])])])
    let mut l_scrollSelectionForm : JV := (<- JR.call this "getMenuForm_0" #[])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.getField this "touchFeatureFactory") "TOUCH_ENABLED")]) then
        JR.setField this "mainMenuInputProcessor" (<- JR.new "PopupCommandFormInputProcessor" #[(<- JR.new "BasicArrayListD" #[]), (JV.int (-1)), this, l_scrollSelectionForm, (<- JR.call this "getPopupMenuInputProcessor_0" #[])])
        pure ()
    else
        pure ()
    let _ := (<- JR.call this "setMenuInputProcessor_1" #[(<- JR.call this "getPopupMenuInputProcessor_0" #[])])
    if JR.truth (<- JR.ne l_scrollSelectionForm (<- JR.callStatic "ScrollSelectionFormNoneFactory" "getInstance_0" #[])) then
        let _ := (<- JR.call this "setFormPaintable_1" #[(<- JR.new "FormPaintable" #[l_scrollSelectionForm])])
        pure ()
    else
        pure ()
    let _ := (<- JR.call this "closeMenu_0" #[])
    pure JV.null


def m_updateMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "menuBehavior") "updateMenu_1" #[this])
        pure ()
    catch jex3 =>
        if (<- JR.isInstanceOfAny jex3 #["Exception"]) then
            let mut l_e : JV := jex3
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "EXCEPTION"), this, (JV.str "initMenu"), l_e])
            pure ()
        else
            throw jex3
    pure JV.null


def m_updateMenu2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scrollSelectionForm : JV := (<- JR.call this "getMenuForm_0" #[])
    let _ := (<- JR.call l_scrollSelectionForm "deleteAll_0" #[])
    let mut l_gameLimitedCommandTextItemArrayFactory : JV := (<- JR.callStatic "GameLimitedCommandTextItemArrayFactory" "getInstance_0" #[])
    let mut l_commandTextItemArrayFactory : JV := (<- JR.call l_gameLimitedCommandTextItemArrayFactory "getCommandTextItemArrayFactory_0" #[])
    let mut l_items : JV := (<- JR.call l_commandTextItemArrayFactory "getInstance_3" #[(<- JR.callInherited this "AllBinaryGameCanvas" "getCommandStack_0" #[]), (<- JR.call (<- JR.getField this "gameLayerManager") "getBackgroundBasicColor_0" #[]), (<- JR.call (<- JR.getField this "gameLayerManager") "getForegroundBasicColor_0" #[])])
    let mut l_size : JV := (JR.asI (<- JR.alen l_items))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_scrollSelectionForm "append_1" #[(<- JR.aget l_items l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_formType : JV := (<- JR.call (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[]) "getFormType_0" #[])
    let mut l_rectangle : JV := (<- JR.call (<- JR.getField this "formUtil") "createFormRectangle_0" #[])
    let _ := (<- JR.call l_scrollSelectionForm "init_2" #[l_rectangle, l_formType])
    pure JV.null


def m_pause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "pause_1" #[this])
    let _ := (<- JR.call this "closeMenu_0" #[])
    let _ := (<- JR.callSuper "RunnableCanvas" this "pause_0" #[])
    let _ := (<- JR.call (<- JR.getField this "touchButtonFactory") "toggle_2" #[(<- JR.call this "isPaused_0" #[]), (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])])
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "tsUtil") "gc_0" #[])
    pure JV.null


def m_unPause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "gameStrings") "UNPAUSE")])
    let _ := (<- JR.call this "closeMenu_0" #[])
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "tsUtil") "gc_0" #[])
    let _ := (<- JR.callSuper "RunnableCanvas" this "unPause_0" #[])
    let _ := (<- JR.call (<- JR.getField this "touchButtonFactory") "toggle_2" #[(<- JR.call this "isPaused_0" #[]), (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "unPause_1" #[this])
    pure JV.null


def m_isPausable_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.call (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[]) "getUsedRunnable_0" #[]) (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_popupMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "menuBehavior") "popupMenu_1" #[this])
    pure JV.null


def m_popupMenu2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "primaryPlayerQueue") "add_1" #[(<- JR.callStatic "SelectSound" "getInstance_0" #[])])
    let _ := (<- JR.call this "setMenuPaintable_1" #[(<- JR.call this "getFormPaintable_0" #[])])
    let _ := (<- JR.call this "setMenuInputProcessor_1" #[(<- JR.getField this "mainMenuInputProcessor")])
    let _ := (<- JR.call (<- JR.getField this "basicMotionGesturesHandler") "addListenerInterface_1" #[(<- JR.getField this "mainMenuInputProcessor")])
    let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "addListener_1" #[(<- JR.getField this "mainMenuInputProcessor")])
    pure JV.null


def m_toggleMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "gameStrings") "TOGGLE_MENU")])
    if JR.truth (<- JR.eq (<- JR.call this "getMenuPaintable_0" #[]) (<- JR.call this "getOpenMenuPaintable_0" #[])) then
        let _ := (<- JR.call this "pause_0" #[])
        let _ := (<- JR.call this "updateMenu_0" #[])
        let _ := (<- JR.call this "popupMenu_0" #[])
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.call this "getMenuPaintable_0" #[]) (<- JR.call this "getFormPaintable_0" #[])) then
            let _ := (<- JR.call (<- JR.getField this "primaryPlayerQueue") "add_1" #[(<- JR.callStatic "SelectSound" "getInstance_0" #[])])
            let _ := (<- JR.call this "unPause_0" #[])
            pure ()
    pure JV.null


def m_closeMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "menuBehavior") "closeMenu_1" #[this])
    pure JV.null


def m_closeMenu2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setMenuPaintable_1" #[(<- JR.call this "getOpenMenuPaintable_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "basicMotionGesturesHandler") "removeListener_1" #[(<- JR.getField this "mainMenuInputProcessor")])
    let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "removeListener_1" #[(<- JR.getField this "mainMenuInputProcessor")])
    let _ := (<- JR.call this "setMenuInputProcessor_1" #[(<- JR.call this "getPopupMenuInputProcessor_0" #[])])
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "basicMotionGesturesHandler") "addListenerInterface_1" #[(<- JR.getField this "menuInputProcessor")])
    let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "addListener_1" #[(<- JR.getField this "menuInputProcessor")])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "basicMotionGesturesHandler") "removeListener_1" #[(<- JR.getField this "menuInputProcessor")])
    let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "removeListener_1" #[(<- JR.getField this "menuInputProcessor")])
    let _ := (<- JR.call (<- JR.getField this "primaryPlayerQueue") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "secondaryPlayerQueue") "clear_0" #[])
    pure JV.null


def m_processorInit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setMainStateProcessor_1" #[(<- JR.callStatic "Processor" "getInstance_0" #[])])
    let _ := (<- JR.call this "setProcessGameProcessorInit_0" #[])
    pure JV.null


def m_setProcessGameProcessorInit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setProcessGameProcessor_1" #[(<- JR.new "GameProcessor" #[this])])
    pure JV.null


def m_initSpecialPaint_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "menuBehavior") "initSpecialPaint_1" #[this])
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameLayerManager : JV := (JR.arg jargs 0)
    let mut l_buffered : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "gameStateTimeHelper") "setStartTimeTNT_0" #[])
    let _ := (<- JR.call this "setHighScoreSubmitted_1" #[(JV.bool false)])
    let _ := (<- JR.call this "setLayerManager_1" #[l_gameLayerManager])
    if JR.truth (JR.not l_buffered) then
        let mut l_BUFF_MESSAGE : JV := (JV.str "XXX Not Buffering Causes Concurrency Issues XXX")
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[l_BUFF_MESSAGE, this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "CONSTRUCTOR")])
        pure ()
    else
        throw (<- JR.new "Exception" #[(JV.str "Buffering is disabled")])
    let _ := (<- JR.call this "setGameInputProcessor_1" #[(<- JR.callStatic "Processor" "getInstance_0" #[])])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[]) "CHEATING")]) then
        JR.setField this "isCheating" (JV.bool true)
        JR.setField this "cheatProcessor" (<- JR.new "CheatGameInputProcessor" #[this])
        let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "addListener_1" #[(<- JR.getField this "cheatProcessor")])
        pure ()
    else
        JR.setField this "isCheating" (JV.bool false)
        JR.setField this "cheatProcessor" (<- JR.callStatic "NoPlayerGameInput" "getInstance_0" #[])
        pure ()
    JR.setField this "realEndGameProcessor" (<- JR.new "EndGameProcessor" #[this])
    let _ := (<- JR.call this "setEndGameProcessor_1" #[(<- JR.callStatic "Processor" "getInstance_0" #[])])
    JR.setField this "realStartIntermissionProcessor" (<- JR.new "StartIntermissionProcessor" #[this])
    JR.setField this "startIntermissionProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    let _ := (<- JR.call this "setEndGameStatePaintable_1" #[(<- JR.new "EndGamePaintable" #[this])])
    let _ := (<- JR.call this "setEndGamePaintable_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
    let _ := (<- JR.call this "setIntermissionPaintable_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
    let _ := (<- JR.call (<- JR.call this "getStartIntermissionInterface_0" #[]) "setListener_1" #[this])
    pure JV.null


def m_notifyIntermission_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_enable : JV := (JR.arg jargs 0)
    if JR.truth l_enable then
        JR.setField this "startIntermissionProcessor" (<- JR.getField this "realStartIntermissionProcessor")
        pure ()
    else
        JR.setField this "startIntermissionProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
        pure ()
    if JR.truth l_enable then
        let _ := (<- JR.call this "setIntermissionPaintable_1" #[(<- JR.call this "getStartIntermissionPaintable_0" #[])])
        pure ()
    else
        let _ := (<- JR.call this "setIntermissionPaintable_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
        pure ()
    pure JV.null


def m_mediaInit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "NOT_IMPLEMENTED"), this])
    pure JV.null


def m_initConfigurable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Setting Configurables")])
    let _ := (<- JR.call (<- JR.callStatic "GameInitializationUtil" "getInstance_0" #[]) "initGame_3" #[l_abeClientInformation, this, (<- JR.getField this "gameInitializationInterfaceFactoryInterface")])
    let mut l_gameFeatureFactory : JV := (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[])
    let mut l_changedGameFeatureListener : JV := (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[])
    if JR.truth (<- JR.call l_changedGameFeatureListener "isChangedFeature_1" #[(<- JR.getField l_gameFeatureFactory "SOUND")]) then
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Sound Changing To: ")]) "appendboolean_1" #[(<- JR.call l_features "isFeature_1" #[(<- JR.getField l_gameFeatureFactory "SOUND")])]) "toString_0" #[]), this, (JV.str "initConfigurable")])
        let _ := (<- JR.call this "mediaInit_0" #[])
        let _ := (<- JR.call l_changedGameFeatureListener "remove_1" #[(<- JR.getField l_gameFeatureFactory "SOUND")])
        pure ()
    let mut l_sensorFeatureFactory : JV := (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.call l_changedGameFeatureListener "isChangedFeature_1" #[(<- JR.getField l_sensorFeatureFactory "ORIENTATION_SENSORS")]) (do pure (<- JR.call l_changedGameFeatureListener "isChangedFeature_1" #[(<- JR.getField l_sensorFeatureFactory "NO_ORIENTATION")]))) (do pure (<- JR.call l_changedGameFeatureListener "isChangedFeature_1" #[(<- JR.getField l_sensorFeatureFactory "SIMULATED_ORIENTATION_SENSORS")]))) then
        let _ := (<- JR.call l_changedGameFeatureListener "remove_1" #[(<- JR.getField l_sensorFeatureFactory "NO_ORIENTATION")])
        let _ := (<- JR.call l_changedGameFeatureListener "remove_1" #[(<- JR.getField l_sensorFeatureFactory "ORIENTATION_SENSORS")])
        let _ := (<- JR.call l_changedGameFeatureListener "remove_1" #[(<- JR.getField l_sensorFeatureFactory "SIMULATED_ORIENTATION_SENSORS")])
        pure ()
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    let _ := (<- JR.call this "loadResourceLoadingLevel_1" #[(<- JR.getField l_resourceLoadingLevelFactory "LOAD_GAME")])
    pure JV.null


def m_initApp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "initConfigurable_1" #[l_abeClientInformation])
    let _ := (<- JR.call this "processorInit_0" #[])
    let _ := (<- JR.call (<- JR.getField this "sensorGameUpdateProcessor") "process_1" #[(<- JR.getField this "gameLayerManager")])
    let _ := (<- JR.call (<- JR.getField this "sensorGameUpdateProcessor") "sendNotifications_1" #[(<- JR.getField this "gameLayerManager")])
    let _ := (<- JR.call this "initTouch_0" #[])
    pure JV.null


def m_initTouch_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInitializedEvent : JV := (<- JR.getField (<- JR.callStatic "GameInitializationUtil" "getInstance_0" #[]) "EVENT")
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_gameInitializedEvent "setResourceLoadingLevel_1" #[(<- JR.getField l_resourceLoadingLevelFactory "LOAD_TOUCH")])
    let _ := (<- JR.call (<- JR.callStatic "GameInitializedEventHandler" "getInstance_0" #[]) "fireEvent_1" #[l_gameInitializedEvent])
    let _ := (<- JR.call (<- JR.getField this "touchButtonFactory") "defaultList_0" #[])
    let _ := (<- JR.call this "updateTouch_0" #[])
    let _ := (<- JR.call this "postInitTouch_0" #[])
    pure JV.null


def m_updateCurrentTouchInputFactory_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_nextTouchInput : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne l_nextTouchInput (<- JR.getField this "currentTouchInputFactory")) then
        JR.setField this "currentTouchInputFactory" l_nextTouchInput
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.getField this "currentTouchInputFactory") "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "UDPATE_CURRENT_TOUCH_INPUT_FACTORY")])
        let _ := (<- JR.call (<- JR.getField this "touchButtonFactory") "toggle_2" #[(<- JR.call this "isPaused_0" #[]), (<- JR.call (<- JR.getField this "currentTouchInputFactory") "getList_0" #[])])
        pure ()
    pure JV.null


def m_updateTouch_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "updateTouch_1" #[this])
    pure JV.null


def m_updateTouch2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.getField this "touchFeatureFactory") "AUTO_HIDE_SHOW_SCREEN_BUTTONS")]) then
        if JR.truth (<- JR.eq (<- JR.sub (<- JR.call (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]) "getCurrentLevel_0" #[]) (<- JR.call this "getStartLevel_0" #[])) (JV.int 1)) then
            let _ := (<- JR.call this "setTouchPaintableP_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
            pure ()
        pure ()
    pure JV.null


def m_postInitTouch_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setTouchButtonsPaintable_1" #[(<- JR.callStatic "TouchButtonsPaintableFactory" "getInstance_1" #[(<- JR.call (<- JR.getField this "gameLayerManager") "getForegroundBasicColor_0" #[])])])
    let _ := (<- JR.call this "updateScreenButtonPaintable_0" #[])
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "removeAllCommands_0" #[])
    let _ := (<- JR.call this "addCommands_0" #[])
    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_addCommands_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    let mut l_myCommandsFactory : JV := (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[])
    if JR.truth (<- JR.ne (<- JR.callStatic "DebugFactory" "getInstance_0" #[]) (<- JR.callStatic "NoDebug" "getInstance_0" #[])) then
        let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "START_TRACE")])
        pure ()
    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "RESTART_COMMAND")])
    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "addCommand_1" #[(<- JR.getField l_myCommandsFactory "PAUSE_COMMAND")])
    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "QUIT_COMMAND")])
    let mut l_isOverScan : JV := (<- JR.call (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[]) "isOverScan_0" #[])
    if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
        pure ()
    else
        if JR.truth (<- JR.getStatic "SWTUtil" "isSWT") then
            pure ()
        else
            if JR.truth (JR.not l_isOverScan) then
                if JR.truth (<- JR.cand (<- JR.call (<- JR.callStatic "TouchScreenFactory" "getInstance_0" #[]) "isTouch_0" #[]) (do pure (<- JR.call (<- JR.new "InGameFeatures" #[]) "isAny_0" #[]))) then
                    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "addCommand_1" #[(<- JR.getStatic "InGameOptionsForm" "DISPLAY")])
                    pure ()
                let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "SAVE")])
                let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "DISPLAY_LOAD_FORM")])
                pure ()
    pure JV.null


def m_itemStateChanged_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    try
        let mut l_itemLabel : JV := (<- JR.call l_item "getLabel_0" #[])
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonLabels") "ITEM_LABEL")]) "append_1" #[l_itemLabel]) "toString_0" #[]), this, (JV.str "itemStateChanged")])
        if JR.truth (<- JR.instanceOf l_item "ChoiceGroup") then
            let mut l_gameFeatureUtil : JV := (<- JR.callStatic "GameFeatureUtil" "getInstance_0" #[])
            if JR.truth (<- JR.call l_gameFeatureUtil "isExclusive_1" #[l_itemLabel]) then
                let _ := (<- JR.call l_gameFeatureUtil "updateExclusiveForChoiceGroup_1" #[l_item])
                pure ()
            else
                let _ := (<- JR.call l_gameFeatureUtil "updateMultiple_1" #[l_item])
                pure ()
            pure ()
        let _ := (<- JR.call (<- JR.getField this "sensorGameUpdateProcessor") "process_1" #[(<- JR.getField this "gameLayerManager")])
        let _ := (<- JR.call this "updateTouch_0" #[])
        let _ := (<- JR.call this "updateScreenButtonPaintable_0" #[])
        let _ := (<- JR.call (<- JR.getField this "sensorGameUpdateProcessor") "sendNotifications_1" #[(<- JR.getField this "gameLayerManager")])
        pure ()
    catch jex4 =>
        if (<- JR.isInstanceOfAny jex4 #["Exception"]) then
            let mut l_e : JV := jex4
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "EXCEPTION"), this, (JV.str "itemStateChanged"), l_e])
            pure ()
        else
            throw jex4
    pure JV.null


def m_updateScreenButtonPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "updateScreenButtonPaintable_1" #[this])
    pure JV.null


def m_updateScreenButtonPaintable2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.getField this "touchFeatureFactory") "AUTO_HIDE_SHOW_SCREEN_BUTTONS")]) then
        let _ := (<- JR.call this "setTouchPaintableP_1" #[(<- JR.call this "getTouchButtonsPaintable_0" #[])])
        let _ := (<- JR.call this "setStartLevel_1" #[(<- JR.call (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]) "getCurrentLevel_0" #[])])
        pure ()
    else
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.getField this "touchFeatureFactory") "SHOW_SCREEN_BUTTONS")]) then
            let _ := (<- JR.call this "setTouchPaintableP_1" #[(<- JR.call this "getTouchButtonsPaintable_0" #[])])
            pure ()
        else
            if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.getField this "touchFeatureFactory") "HIDE_SCREEN_BUTTONS")]) then
                let _ := (<- JR.call this "setTouchPaintableP_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
                pure ()
            else
                let _ := (<- JR.call this "setTouchPaintableP_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
                pure ()
    pure JV.null


def m_getLayerManager_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameLayerManager")


def m_setLayerManager_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    JR.setField this "gameLayerManager" l_layerManager
    pure JV.null


def m_isGameOver_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameOver")


def m_setGameOver_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameOver : JV := (JR.arg jargs 0)
    JR.setField this "gameOver" l_gameOver
    pure JV.null


def m_processGameOver_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "gameStrings") "SET_GAME_OVER")])
    let _ := (<- JR.call this "setGameOver_1" #[(JV.bool true)])
    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "removePauseCommand_0" #[])
    let _ := (<- JR.call this "setGameState_1" #[(<- JR.getField (<- JR.getField this "gameStateFactory") "SHOW_END_RESULT_GAME_STATE")])
    let _ := (<- JR.call this "setEndGamePaintable_1" #[(<- JR.call this "getEndGameStatePaintable_0" #[])])
    pure JV.null


def m_isHighScoreSubmitted_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "highScoreSubmitted")


def m_setHighScoreSubmitted_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoreSubmitted : JV := (JR.arg jargs 0)
    JR.setField this "highScoreSubmitted" l_highScoreSubmitted
    if JR.truth l_highScoreSubmitted then
        let _ := (<- JR.call (<- JR.getField this "highScoresHelper") "setSelectedHighScores_1" #[(<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])])
        pure ()
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "isHighScoreSubmitted: ")]) "appendboolean_1" #[l_highScoreSubmitted]) "toString_0" #[]), this, (JV.str "setHighScoreSubmitted")])
    pure JV.null


def m_getGameState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameState")


def m_setGameState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameState : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameStrings") "GAME_STATE")]) "append_1" #[(<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "stringUtil") "toString_1" #[l_gameState])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameStrings") "SET_GAME_STATE")])
    JR.setField this "gameState" l_gameState
    let _ := (<- JR.call (<- JR.getField this "gameStateTimeHelper") "setStartTimeTNT_0" #[])
    let _ := (<- JR.call this "updateEndGameProcessor_0" #[])
    let _ := (<- JR.call this "updateGameKeyEventProcessor_0" #[])
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "setGameState_1" #[this])
    pure JV.null


def m_updateGameState_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
    let _ := (<- JR.call l_gameAdState "processAdState_2" #[(<- JR.getField this "gameState"), (<- JR.call (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]) "getGameType_0" #[])])
    if JR.truth (<- JR.ne (<- JR.getField this "gameState") (<- JR.getField (<- JR.getField this "gameStateFactory") "PLAYING_GAME_STATE")) then
        let _ := (<- JR.call l_gameAdState "processPageAdState_0" #[])
        pure ()
    pure JV.null


def m_updateGameKeyEventProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.call this "getGameState_0" #[]) (<- JR.getField (<- JR.getField this "gameStateFactory") "PLAYING_GAME_STATE")) (do pure (<- JR.getField this "isCheating"))) then
        pure ()
    else
        pure ()
    pure JV.null


def m_removeAllGameKeyInputListenersOnBuild_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "removeAllGameKeyInputListeners_0" #[])
    pure JV.null


def m_removeAllGameKeyInputListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "removeAllGameKeyInputListeners_1" #[this])
    pure JV.null


def m_removeAllGameKeyInputListeners2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(JV.str "Remove PlayerInput Listeners"), this, (JV.str "removeAllGameKeyInputListeners")])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField this "localPlayerGameInputList") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_playerGameInput : JV := (<- JR.call (<- JR.getField this "localPlayerGameInputList") "get_1" #[l_index])
            let _ := (<- JR.call this "removeKeyInputListener_1" #[l_playerGameInput])
            let _ := (<- JR.call l_playerGameInput "removeNonAIInputGameKeyEvents_0" #[])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_removeKeyInputListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerGameInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "removeListener_1" #[l_playerGameInput])
    pure JV.null


def m_updateEndGameProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "updateEndGameProcessor_1" #[this])
    pure JV.null


def m_updateEndGameProcessor2_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.call this "getGameState_0" #[]) (<- JR.getField (<- JR.getField this "gameStateFactory") "SHOW_END_RESULT_GAME_STATE")) (do pure (<- JR.eq (<- JR.call this "getGameState_0" #[]) (<- JR.getField (<- JR.getField this "gameStateFactory") "SHOW_HIGH_SCORE_GAME_STATE")))) then
        let _ := (<- JR.call this "setEndGameProcessor_1" #[(<- JR.getField this "realEndGameProcessor")])
        pure ()
    else
        let _ := (<- JR.call this "setEndGameProcessor_1" #[(<- JR.callStatic "Processor" "getInstance_0" #[])])
        pure ()
    pure JV.null


def m_buildGameInit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isPortion : JV := (JR.arg jargs 0)
    pure JV.null


def m_cleanupGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "CLEANUP")])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 10), (JV.str "Cleaning Up")])
    let _ := (<- JR.call (<- JR.getField this "primaryPlayerQueue") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "secondaryPlayerQueue") "clear_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "GameLevelDisplayChangeEventListenersFactory" "getInstance_0" #[]) "clear_0" #[])
    pure JV.null


def m_loadResourceLoadingLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resourceLoadingLevel : JV := (JR.arg jargs 0)
    let mut l_gameInitializedEvent : JV := (<- JR.getField (<- JR.callStatic "GameInitializationUtil" "getInstance_0" #[]) "EVENT")
    let _ := (<- JR.call l_gameInitializedEvent "setResourceLoadingLevel_1" #[l_resourceLoadingLevel])
    let _ := (<- JR.call (<- JR.callStatic "GameInitializedEventHandler" "getInstance_0" #[]) "fireEvent_1" #[l_gameInitializedEvent])
    pure JV.null


def m_loadResources_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_gameInitializedEvent : JV := (<- JR.getField (<- JR.callStatic "GameInitializationUtil" "getInstance_0" #[]) "EVENT")
    let _ := (<- JR.call l_gameInitializedEvent "setLevel_1" #[l_level])
    let _ := (<- JR.call (<- JR.callStatic "GameInitializedEventHandler" "getInstance_0" #[]) "fireEvent_1" #[l_gameInitializedEvent])
    pure JV.null


def m_updateColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_buildGame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_portion : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "screenCapture") "endRecording_0" #[])
    let _ := (<- JR.call (<- JR.getField this "screenCapture") "startRecording_0" #[])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_portion, (JV.str "Generic Build")])
    let _ := (<- JR.call this "removeAllGameKeyInputListenersOnBuild_0" #[])
    let _ := (<- JR.call this "updateTouch_0" #[])
    let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_portion, (JV.str "High Scores")])
    let _ := (<- JR.call (<- JR.getField this "highScoresFactoryInterface") "fetchHighScores_2" #[(<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]), (<- JR.getField this "highScoresHelper")])
    let _ := (<- JR.call this "setHighScoresPaintable_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
    let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_portion, (JV.str "Finishing.")])
    let _ := (<- JR.call (<- JR.call this "getEndGameInfoP_0" #[]) "update_2" #[(<- JR.call (<- JR.call this "getLayerManager_0" #[]) "getGameInfo_0" #[]), this])
    JR.setField this "isSingleKeyRepeatableProcessing" (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "SINGLE_KEY_REPEAT_PRESS")])
    let _ := (<- JR.call this "setGameOver_1" #[(JV.bool false)])
    let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_portion, (JV.str "Finishing..")])
    let _ := (<- JR.call this "updateColor_0" #[])
    let _ := (<- JR.call (<- JR.call this "getStartIntermissionPaintable_0" #[]) "update_0" #[])
    if JR.truth (JR.not (<- JR.call this "isRunningInAnotherThread_0" #[])) then
        return JV.null
    let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_portion, (JV.str "Finishing...")])
    if JR.truth (<- JR.cor (<- JR.callInherited this "AllBinaryGameCanvas" "isMainCanvas_0" #[]) (do pure (JR.not (<- JR.call this "isInitialized_0" #[])))) then
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "LOAD_ONDEMAND")]) then
            if JR.truth (<- JR.ne (<- JR.callInherited this "AllBinaryGameCanvas" "getCustomCommandListener_0" #[]) JV.null) then
                let _ := (<- JR.call l_progressCanvas "end_0" #[])
                pure ()
            pure ()
        else
            let _ := (<- JR.call l_progressCanvas "end_0" #[])
            pure ()
        let _ := (<- JR.call this "setInitialized_1" #[(JV.bool true)])
        pure ()
    if JR.truth (<- JR.eq (<- JR.callInherited this "AllBinaryGameCanvas" "getCustomCommandListener_0" #[]) (<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER")) then
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(JV.str "Show Game Paintable in DemoCanvas Thread"), this, (<- JR.getField this "BUILD_GAME")])
        let _ := (<- JR.call (<- JR.getField this "gameCanvasStartListener") "showGamePaintable_0" #[])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(JV.str "No GameCanvasStartListener"), this, (<- JR.getField this "BUILD_GAME")])
        pure ()
    let _ := (<- JR.call (<- JR.getField this "colorFillPaintable") "setBasicColorP_1" #[(<- JR.call (<- JR.getField this "gameLayerManager") "getBackgroundBasicColor_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "buildGame_1" #[this])
    pure JV.null


def m_buildGame2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameInputStrings") "ENABLE_PLAYER_GAME_INPUTS")]) "appendint_1" #[(<- JR.call (<- JR.getField this "localPlayerGameInputList") "size_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "BUILD_GAME")])
    let mut l_playerGameInput : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField this "localPlayerGameInputList") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_playerGameInput := (<- JR.call (<- JR.getField this "localPlayerGameInputList") "get_1" #[l_index])
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameInputStrings") "ENABLE_PLAYER_GAME_INPUT")]) "append_1" #[(<- JR.call l_playerGameInput "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "BUILD_GAME")])
            let _ := (<- JR.call l_playerGameInput "removeNonAIInputGameKeyEvents_0" #[])
            let _ := (<- JR.call this "addKeyInputListener_1" #[l_playerGameInput])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_addKeyInputListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerGameInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[]) "addListenerForPlayer_2" #[l_playerGameInput, (<- JR.call l_playerGameInput "getPlayerInputId_0" #[])])
    pure JV.null


def m_setGameCanvasStartListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvasStartListener : JV := (JR.arg jargs 0)
    JR.setField this "gameCanvasStartListener" l_gameCanvasStartListener
    pure JV.null


def m_loadState_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "LOAD")])
    let mut l_hashtable : JV := (<- JR.call this "getLoadStateHashtable_0" #[])
    if JR.truth (<- JR.cand (<- JR.ne l_hashtable JV.null) (do pure (<- JR.gt (<- JR.call l_hashtable "size_0" #[]) (JV.int 0)))) then
        let mut l_levelAsString : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.getStatic "GameInfo" "LEVEL_NAME")])
        let mut l_level : JV := (JR.asI (<- JR.call (<- JR.callStatic "Integer" "valueOf_1" #[l_levelAsString]) "intValue_0" #[]))
        let mut l_gameInfo : JV := (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[])
        let _ := (<- JR.call l_gameInfo "setCurrentLevel_1" #[l_level])
        pure ()
    pure JV.null


def m_getLoadStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonLabels") "START_LABEL")]) "append_1" #[(<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "stringUtil") "toString_1" #[(<- JR.getField this "hashtable")])]) "toString_0" #[]), this, (JV.str "getLoadStateHashtable")])
    return (<- JR.getField this "hashtable")


def m_setLoadStateHashtable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonLabels") "START_LABEL")]) "append_1" #[(<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "stringUtil") "toString_1" #[l_hashtable])]) "toString_0" #[]), this, (JV.str "setLoadStateHashtable")])
    JR.setField this "hashtable" l_hashtable
    pure JV.null


def m_getCurrentStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "stdUtil") "createHashtable_0" #[])
    let mut l_level : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]) "getCurrentLevel_0" #[]))
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.call (<- JR.getStatic "GameInfo" "LEVEL_NAME") "toString_0" #[]), (<- JR.callStatic "Integer" "toString_1" #[l_level])])
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "End: ")]) "append_1" #[(<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "stringUtil") "toString_1" #[l_hashtable])]) "toString_0" #[]), this, (JV.str "getCurrentStateHashtable")])
    return l_hashtable


def m_paintGameOver_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "NOT_IMPLEMENTED"), this])
    pure JV.null


def m_draw_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "colorFillPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.call (<- JR.getField this "gameLayerManager") "getForegroundBasicColor_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "gameSpecificPaintable") "paint_1" #[l_graphics])
    pure JV.null


def m_clear_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "colorFillPaintable") "paint_1" #[l_graphics])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "baseGameStatistics") "nextRefresh_0" #[])
    let _ := (<- JR.call this "draw_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "menuPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "progressPaintable") "paint_1" #[l_graphics])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_processEndLevelIntermissionGameState_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_nonBotPaint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "endGamePaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "intermissionPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call this "paintIntermission_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "touchPaintable") "paint_1" #[l_graphics])
    pure JV.null


def m_paintIntermission_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


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
    let _ := (<- JR.call (<- JR.getField this "inputProcessor") "keyPressedByDevice_2" #[l_keyCode, l_deviceId])
    pure JV.null


def m_keyRepeatedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.getField this "isSingleKeyRepeatableProcessing") then
        let _ := (<- JR.call (<- JR.getField this "inputProcessor") "keyPressedByDevice_2" #[l_keyCode, l_deviceId])
        pure ()
    pure JV.null


def m_keyReleasedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "inputProcessor") "keyReleasedByDevice_3" #[this, l_keyCode, l_deviceId])
    pure JV.null


def m_handleRawKey_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_repeated : JV := (JR.arg jargs 2)
    pure JV.null


def m_endProgress_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isProgress : JV := (JR.arg jargs 0)
    let mut l_portion : JV := (JR.asI (JV.int 30))
    if JR.truth (<- JR.cand l_isProgress (do pure (<- JR.callInherited this "AllBinaryGameCanvas" "isMainCanvas_0" #[]))) then
        let mut l_myCommandsFactory : JV := (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[])
        let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_progressCanvas "start_0" #[])
        let _ := (<- JR.call (<- JR.callInherited this "AllBinaryGameCanvas" "getCustomCommandListener_0" #[]) "commandAction_2" #[(<- JR.getField l_myCommandsFactory "SET_DISPLAYABLE"), l_progressCanvas])
        l_portion := (JR.asI (JV.int 4))
        pure ()
    return (JR.asI l_portion)


def m_processPlayingGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "cheatProcessor") "update_0" #[])
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "sensorGameUpdateProcessor") "getInputSensor_0" #[]) "update_0" #[])
    let _ := (<- JR.call (<- JR.getField this "gameInputProcessor") "process_0" #[])
    let _ := (<- JR.call (<- JR.getField this "gameLayerManager") "process_0" #[])
    let _ := (<- JR.call (<- JR.getField this "startIntermissionProcessor") "process_0" #[])
    pure JV.null


def m_threadInit_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_processGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "RunnableCanvas" this "process_0" #[])
    if JR.truth (<- JR.callStatic "AllBinaryMediaManager" "update_0" #[]) then
        if JR.truth (JR.not (<- JR.call (<- JR.getField this "primaryPlayerQueue") "process_0" #[])) then
            let _ := (<- JR.call (<- JR.getField this "secondaryPlayerQueue") "process_0" #[])
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "mainStateProcessor") "process_0" #[])
    let _ := (<- JR.call (<- JR.getField this "menuInputProcessor") "processInputList_0" #[])
    let _ := (<- JR.call (<- JR.getField this "endGameProcessor") "process_0" #[])
    let _ := (<- JR.call (<- JR.getField this "baseGameStatistics") "nextFrame_0" #[])
    pure JV.null


def m_notifyDonePainting_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "threadObjectUtil") "notifyObject_1" #[this])
        pure ()
    pure JV.null


def m_shouldWait_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
        pure ()
    else
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_2D")]) then
            pure ()
        else
            if JR.truth (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL")]) then
                let mut l_openGLImageSpecificFactory : JV := (<- JR.callStatic "OpenGLImageSpecificFactory" "getInstance_0" #[])
                repeat
                    if !(JR.truth (<- JR.getField l_openGLImageSpecificFactory "updating")) then break
                    let _ := (<- JR.callStatic "Thread" "sleep_1" #[(<- JR.getField this "YIELD_SLEEP")])
                    pure ()
                pure ()
            pure ()
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "START_RUNNABLE"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "RUN")])
        let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Game Thread")])
        let _ := (<- JR.call this "setCurrentThread_0" #[])
        let _ := (<- JR.call this "setRunning_1" #[(JV.bool true)])
        if JR.truth (<- JR.eq (<- JR.callInherited this "AllBinaryGameCanvas" "getCustomCommandListener_0" #[]) (<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER")) then
            let _ := (<- JR.callStatic "Thread" "sleep_1" #[(<- JR.getField this "YIELD_SLEEP")])
            pure ()
        let _ := (<- JR.call this "shouldWait_0" #[])
        let _ := (<- JR.call this "threadInit_0" #[])
        if JR.truth (<- JR.eq (<- JR.callInherited this "AllBinaryGameCanvas" "getCustomCommandListener_0" #[]) (<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER")) then
            let _ := (<- JR.callStatic "Thread" "sleep_1" #[(<- JR.getField this "YIELD_SLEEP")])
            pure ()
        let _ := (<- JR.call this "open_0" #[])
        let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
        let _ := (<- JR.call l_gameAdState "init_0" #[])
        let _ := (<- JR.call l_gameAdState "setGameIsReady_1" #[(JV.bool true)])
        let _ := (<- JR.call (<- JR.getField this "gameBehavior") "run_1" #[this])
        let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "END_RUNNABLE"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "RUN")])
        pure ()
    catch jex5 =>
        if (<- JR.isInstanceOfAny jex5 #["Exception"]) then
            let mut l_e : JV := jex5
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "RUN"), l_e])
            pure ()
        else
            throw jex5
    pure JV.null


def m_run2_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.cor (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_AS_GAME_THREAD")]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        if JR.truth (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_AS_GAME_THREAD")]) then
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_AS_GAME_THREAD") "getName_0" #[]), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "RUN")])
            pure ()
        if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.callStatic "GraphicsStrings" "getInstance_0" #[]) "HTML"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "RUN")])
            pure ()
        let mut l_currentDisplayableFactory : JV := (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_currentDisplayableFactory "setRunnable_1" #[(<- JR.getField this "gameRunnable")])
        let _ := (<- JR.call l_currentDisplayableFactory "setDisplayable_1" #[this])
        let _ := (<- JR.call (<- JR.callStatic "OpenGLThreadUtil" "getInstance_0" #[]) "onResume_0" #[])
        pure ()
    else
        if JR.truth (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS")]) then
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS") "getName_0" #[]), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "RUN")])
            let _ := (<- JR.call (<- JR.callStatic "OpenGLThreadUtil" "getInstance_0" #[]) "onResume_0" #[])
            repeat
                if !(JR.truth (<- JR.callInherited this "AllBinaryGameCanvas" "isRunning_0" #[])) then break
                let _ := (<- JR.call this "run3_0" #[])
                pure ()
            let _ := (<- JR.call this "end_0" #[])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "putF_3" #[(JV.str "this thread"), this, (<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "RUN")])
            repeat
                if !(JR.truth (<- JR.callInherited this "AllBinaryGameCanvas" "isRunning_0" #[])) then break
                let _ := (<- JR.call this "run3_0" #[])
                pure ()
            let _ := (<- JR.call this "end_0" #[])
            pure ()
    pure JV.null


def m_run3_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "loopTimeHelper") "setStartTime_1" #[(<- JR.call (<- JR.getField this "gameTickTimeDelayHelper") "setStartTime_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "gameTickDisplayInfoSingleton") "update_0" #[])
    let _ := (<- JR.call this "processGame_0" #[])
    let _ := (<- JR.callInherited this "AllBinaryGameCanvas" "processLoopSleep_0" #[])
    pure JV.null


def m_setRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_running : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "RunnableCanvas" this "setRunning_1" #[l_running])
    try
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        if JR.truth l_running then
            pure ()
        else
            if JR.truth (<- JR.cor (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.getField this "openGLFeatureFactory") "OPENGL")]) (do pure (<- JR.getStatic "SWTUtil" "isSWT"))) then
                if JR.truth (<- JR.ne (<- JR.call (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]) "getGameType_0" #[]) (<- JR.getField (<- JR.getField this "gameTypeFactory") "BOT")) then
                    let mut l_currentDisplayableFactory : JV := (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[])
                    let _ := (<- JR.call l_currentDisplayableFactory "clearRunnable_0" #[])
                    pure ()
                let _ := (<- JR.call this "end_0" #[])
                pure ()
            pure ()
        pure ()
    catch jex6 =>
        if (<- JR.isInstanceOfAny jex6 #["Exception"]) then
            let mut l_e : JV := jex6
            let _ := (<- JR.call (<- JR.getInherited this "AllBinaryGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "AllBinaryGameCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getInherited this "AllBinaryGameCanvas" "SET_RUNNING"), l_e])
            pure ()
        else
            throw jex6
    pure JV.null


def m_end_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "screenCapture") "endRecording_0" #[])
    let _ := (<- JR.call (<- JR.getField this "baseGameStatistics") "add_1" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call (<- JR.getField this "baseGameStatistics") "toString_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "NEW_LINE")]) "toString_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "baseGameStatistics") "init_0" #[])
    let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "removeListener_1" #[(<- JR.getField this "cheatProcessor")])
    let _ := (<- JR.call this "close_0" #[])
    let _ := (<- JR.call this "removeAllGameKeyInputListeners_0" #[])
    let _ := (<- JR.call this "endGameThread_0" #[])
    pure JV.null


def m_endGameThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
    let _ := (<- JR.call (<- JR.callStatic "GameLevelDisplayChangeEventListenersFactory" "getInstance_0" #[]) "clear_0" #[])
    let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
    let _ := (<- JR.call l_gameAdState "notPlayingAdState_0" #[])
    pure JV.null


def m_createHighScore_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_score : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_gameInfo : JV := (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[])
    return (<- JR.new "HighScore" #[(JV.int 0), (JV.str "NONE"), (<- JR.new "GameInfo" #[(<- JR.call l_gameInfo "getGameType_0" #[]), (<- JR.call l_gameInfo "getGameMode_0" #[]), (<- JR.getField (<- JR.callStatic "PlayerTypesFactory" "getInstance_0" #[]) "PLAYER_TYPE_ONE"), (JV.int 0), (JV.int 0)]), l_score])


def m_setHighScore_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_score : JV := (JR.asJ (JR.arg jargs 2))
    let mut l_autoSubmit : JV := (JR.arg jargs 3)
    let mut l_isLast : JV := (JR.arg jargs 4)
    let _ := (<- JR.call (<- JR.getField this "gameBehavior") "setHighScore_6" #[l_abeClientInformation, this, l_name, l_score, l_autoSubmit, l_isLast])
    pure JV.null


def m_setHighScore2_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_score : JV := (JR.asJ (JR.arg jargs 2))
    let mut l_autoSubmit : JV := (JR.arg jargs 3)
    let mut l_isLast : JV := (JR.arg jargs 4)
    let mut l_highScore : JV := (<- JR.call this "createHighScore_1" #[l_score])
    let mut l_textBox : JV := (<- JR.new "HighScoreTextBox" #[(<- JR.getField this "highScoresFactoryInterface"), (<- JR.getField this "highScoresHelper"), l_abeClientInformation, (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]), (<- JR.callInherited this "AllBinaryGameCanvas" "getCustomCommandListener_0" #[]), l_name, l_highScore, (<- JR.call (<- JR.getField this "gameLayerManager") "getBackgroundBasicColor_0" #[]), (<- JR.call (<- JR.getField this "gameLayerManager") "getForegroundBasicColor_0" #[])])
    if JR.truth l_isLast then
        let _ := (<- JR.call (<- JR.callInherited this "AllBinaryGameCanvas" "getCustomCommandListener_0" #[]) "commandAction_2" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "SET_MENU_DISPLAYABLE"), l_textBox])
        pure ()
    if JR.truth l_autoSubmit then
        let _ := (<- JR.call (<- JR.callStatic "SecondaryThreadPool" "getInstance_0" #[]) "runTask_1" #[(<- JR.new "SaveHighScoreRunnable" #[l_isLast, l_textBox])])
        pure ()
    pure JV.null


def m_getGameStateTimeHelper_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameStateTimeHelper")


def m_setInitialized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initialized : JV := (JR.arg jargs 0)
    JR.setField this "initialized" l_initialized
    pure JV.null


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initialized")


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "AllBinaryGameCanvas" "id"))


def m_setProgressPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintable : JV := (JR.arg jargs 0)
    JR.setField this "progressPaintable" l_paintable
    pure JV.null


def m_getStartIntermissionInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "startIntermissionInterface")


def m_getEndLevelIntermissionInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "endLevelIntermissionInterface")


def m_setTouchPaintableP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintable : JV := (JR.arg jargs 0)
    JR.setField this "touchPaintable" l_paintable
    pure JV.null


def m_getTouchPaintableP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "touchPaintable")


def m_setEndGamePaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_endGamePaintable : JV := (JR.arg jargs 0)
    JR.setField this "endGamePaintable" l_endGamePaintable
    pure JV.null


def m_getEndGamePaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "endGamePaintable")


def m_setIntermissionPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_intermissionPaintable : JV := (JR.arg jargs 0)
    JR.setField this "intermissionPaintable" l_intermissionPaintable
    pure JV.null


def m_getIntermissionPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "intermissionPaintable")


def m_getEndGameInfoP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "endGameInfo")


def m_setHighScoresPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresPaintable : JV := (JR.arg jargs 0)
    JR.setField this "highScoresPaintable" l_highScoresPaintable
    pure JV.null


def m_getHighScoresPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "highScoresPaintable")


def m_getRealHighScoresPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "realHighScoresPaintable")


def m_clearPlayerGameInputList_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerGameInput : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField this "localPlayerGameInputList") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_playerGameInput := (<- JR.call (<- JR.getField this "localPlayerGameInputList") "get_1" #[l_index])
            let _ := (<- JR.call (<- JR.getField this "gameKeyEventHandler") "removeListener_1" #[l_playerGameInput])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "localPlayerGameInputList") "clear_0" #[])
    pure JV.null


def m_addPlayerGameInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerGameInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "localPlayerGameInputList") "add_1" #[l_playerGameInput])
    pure JV.null


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


def m_getStartLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "startLevel"))


def m_setStartLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_startLevel : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "startLevel" (JR.asI l_startLevel)
    pure JV.null


def m_setTouchButtonsPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonsPaintable : JV := (JR.arg jargs 0)
    JR.setField this "touchButtonsPaintable" l_touchButtonsPaintable
    pure JV.null


def m_getTouchButtonsPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "touchButtonsPaintable")


def m_setGameInputProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInputProcessor : JV := (JR.arg jargs 0)
    JR.setField this "gameInputProcessor" l_gameInputProcessor
    pure JV.null


def m_getGameInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameInputProcessor")


def m_setEndGameProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_endGameProcessor : JV := (JR.arg jargs 0)
    JR.setField this "endGameProcessor" l_endGameProcessor
    pure JV.null


def m_getEndGameProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "endGameProcessor")


def m_setEndGameStatePaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_endGameStatePaintable : JV := (JR.arg jargs 0)
    JR.setField this "endGameStatePaintable" l_endGameStatePaintable
    pure JV.null


def m_getEndGameStatePaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "endGameStatePaintable")


def m_setNonBotPaintableP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_nonBotPaintable : JV := (JR.arg jargs 0)
    JR.setField this "nonBotPaintable" l_nonBotPaintable
    pure JV.null


def m_getNonBotPaintableP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "nonBotPaintable")


def m_setStartIntermissionPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_startIntermissionPaintable : JV := (JR.arg jargs 0)
    JR.setField this "startIntermissionPaintable" l_startIntermissionPaintable
    pure JV.null


def m_getStartIntermissionPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "startIntermissionPaintable")


def m_setMainStateProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mainStateProcessor : JV := (JR.arg jargs 0)
    JR.setField this "mainStateProcessor" l_mainStateProcessor
    pure JV.null


def m_getMainStateProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "mainStateProcessor")


def m_setProcessGameProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_processGameProcessor : JV := (JR.arg jargs 0)
    JR.setField this "processGameProcessor" l_processGameProcessor
    pure JV.null


def m_getProcessGameProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "processGameProcessor")


def m_setOpenMenuPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_openMenuPaintable : JV := (JR.arg jargs 0)
    JR.setField this "openMenuPaintable" l_openMenuPaintable
    pure JV.null


def m_getOpenMenuPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "openMenuPaintable")


def m_setPopupMenuInputProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_popupMenuInputProcessor : JV := (JR.arg jargs 0)
    JR.setField this "popupMenuInputProcessor" l_popupMenuInputProcessor
    pure JV.null


def m_getPopupMenuInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "popupMenuInputProcessor")


def m_getSensorGameUpdateProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "sensorGameUpdateProcessor")


def m_getRawGameInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "rawGameInputProcessor")


def m_getRawInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "rawInputProcessor")


def m_setInputProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputProcessor : JV := (JR.arg jargs 0)
    JR.setField this "inputProcessor" l_inputProcessor
    pure JV.null


def m_getInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "inputProcessor")


def m_setMenuPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_menuPaintable : JV := (JR.arg jargs 0)
    JR.setField this "menuPaintable" l_menuPaintable
    pure JV.null


def m_getMenuPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "menuPaintable")


def m_setFormPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_formPaintable : JV := (JR.arg jargs 0)
    JR.setField this "formPaintable" l_formPaintable
    pure JV.null


def m_getFormPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "formPaintable")


def m_setGameSpecificPaintableP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameSpecificPaintable : JV := (JR.arg jargs 0)
    JR.setField this "gameSpecificPaintable" l_gameSpecificPaintable
    pure JV.null


def m_getGameSpecificPaintableP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameSpecificPaintable")


def m_isSingleThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.cor (<- JR.call (<- JR.callStatic "OpenGLFeatureUtil" "getInstance_0" #[]) "isAnyThreed_0" #[]) (do pure (<- JR.getStatic "SWTUtil" "isSWT")))


def m_isRunningInAnotherThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_openGLFeatureFactory : JV := (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isDefault_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL_AS_GAME_THREAD")]) then
        return (JV.bool true)
    else
        return (<- JR.callInherited this "AllBinaryGameCanvas" "isRunning_0" #[])
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "AllBinaryGameCanvas" "TYPE"))


def m_getTitle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "RunnableCanvas" this "getTitle_0" #[])


def m_isPaused_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "RunnableCanvas" this "isPaused_0" #[])


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_gameLayerManager : JV := (JR.arg jargs 1)
    let mut l_highScoresFactoryInterface : JV := (JR.arg jargs 2)
    let mut l_gameInitializationInterfaceFactoryInterface : JV := (JR.arg jargs 3)
    let mut l_buffered : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "RunnableCanvas" this #[l_commandListener, (<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "EMPTY_CHILD_NAME_LIST"), (JV.bool true)]
    let _ <- jfields this
    JR.setField this "highScoresHelper" (<- JR.call l_highScoresFactoryInterface "createHighScoresHelper_0" #[])
    JR.setField this "gameInitializationInterfaceFactoryInterface" l_gameInitializationInterfaceFactoryInterface
    let _ := (<- JR.call this "init_2" #[l_gameLayerManager, l_buffered])
    JR.setField this "highScoresFactoryInterface" l_highScoresFactoryInterface
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.call (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]) "getGameType_0" #[]) (<- JR.getField (<- JR.getField this "gameTypeFactory") "BOT")) (do pure (<- JR.eq (<- JR.call (<- JR.call (<- JR.getField this "gameLayerManager") "getGameInfo_0" #[]) "getGameType_0" #[]) (<- JR.getField (<- JR.getField this "gameTypeFactory") "NONE")))) then
        JR.setField this "gameBehavior" (<- JR.callStatic "DemoGameBehavior" "getInstance_0" #[])
        JR.setField this "menuBehavior" (<- JR.callStatic "BaseMenuBehavior" "getInstance_0" #[])
        pure ()
    else
        JR.setField this "gameBehavior" (<- JR.callStatic "BaseGameBehavior" "getInstance_0" #[])
        JR.setField this "menuBehavior" (<- JR.call this "getInGameMenuBehavior_0" #[])
        pure ()
    let _ := (<- JR.call this "initPopupMenu_0" #[])
    let _ := (<- JR.call this "initMenu_0" #[])
    let _ := (<- JR.call this "initSpecialPaint_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    pure this

initialize JR.registerClass {
    name := "AllBinaryGameCanvas",
    javaName := "org.allbinary.game.displayable.canvas.AllBinaryGameCanvas",
    super := "RunnableCanvas",
    interfaces := #["AllBinaryGameCanvasInterface", "GameCanvasRunnableInterface", "MenuListener", "IntermissionCompositeInterface", "IntermissionEnableListenerInterface", "PopupMenuInterface", "DisplayChangeEventListener", "UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("basicColorFactory", JV.null), ("basicSetColorUtil", JV.null), ("touchFeatureFactory", JV.null), ("openGLFeatureFactory", JV.null), ("touchButtonFactory", JV.null), ("gameAdStateFactory", JV.null), ("gameStrings", JV.null), ("gameInputStrings", JV.null), ("gameStateFactory", JV.null), ("gameTickTimeDelayHelper", JV.null), ("gameTickDisplayInfoSingleton", JV.null), ("gameRunnable", JV.null), ("gamePauseRunnable", JV.null), ("formUtil", JV.null), ("myFormUtil", JV.null), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("gameSpecificPaintable", JV.null), ("sensorGameUpdateProcessor", JV.null), ("endGameInfo", JV.null), ("startIntermissionInterface", JV.null), ("endLevelIntermissionInterface", JV.null), ("gameLayerManager", JV.null), ("gameState", JV.null), ("gameOver", (JV.bool false)), ("initialized", (JV.bool false)), ("gameStateTimeHelper", JV.null), ("highScoresHelper", JV.null), ("highScoreSubmitted", (JV.bool false)), ("realHighScoresPaintable", JV.null), ("highScoresPaintable", JV.null), ("localPlayerGameInputList", JV.null), ("isCheating", (JV.bool false)), ("hashtable", JV.null), ("isSingleKeyRepeatableProcessing", (JV.bool false)), ("gameInitializationInterfaceFactoryInterface", JV.null), ("touchButtonsPaintable", JV.null), ("touchPaintable", JV.null), ("cheatProcessor", JV.null), ("gameInputProcessor", JV.null), ("endGameProcessor", JV.null), ("realEndGameProcessor", JV.null), ("startIntermissionProcessor", JV.null), ("realStartIntermissionProcessor", JV.null), ("endGamePaintable", JV.null), ("endGameStatePaintable", JV.null), ("nonBotPaintable", JV.null), ("intermissionPaintable", JV.null), ("startIntermissionPaintable", JV.null), ("mainStateProcessor", JV.null), ("processGameProcessor", JV.null), ("highScoresFactoryInterface", JV.null), ("startLevel", (JV.int 0)), ("mainMenuInputProcessor", JV.null), ("popupMenuInputProcessor", JV.null), ("menuInputProcessor", JV.null), ("menuForm", JV.null), ("formPaintable", JV.null), ("openMenuPaintable", JV.null), ("menuPaintable", JV.null), ("currentTouchInputFactory", JV.null), ("colorFillPaintable", JV.null), ("baseGameStatistics", JV.null), ("primaryPlayerQueue", JV.null), ("secondaryPlayerQueue", JV.null), ("BUILD_GAME", JV.null), ("gameTypeFactory", JV.null), ("screenCapture", JV.null), ("basicMotionGesturesHandler", JV.null), ("gameKeyEventHandler", JV.null), ("gameBehavior", JV.null), ("menuBehavior", JV.null), ("progressPaintable", JV.null), ("fontHeightP", (JV.int 0)), ("gameCanvasStartListener", JV.null), ("rawGameInputProcessor", JV.null), ("rawInputProcessor", JV.null), ("inputProcessor", JV.null), ("YIELD_SLEEP", (JV.long 0))],
    statics := #[("id", (JR.asI (JV.int 0))), ("TYPE", (JR.asI (JV.int 2)))],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("getInGameMenuBehavior_0", #[], false, m_getInGameMenuBehavior_0), 
        ("setCurrentThread_0", #[], false, m_setCurrentThread_0), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onDisplayChangeEvent_1", #["DisplayChangeEvent"], false, m_onDisplayChangeEvent_1), 
        ("updateMenuFromEvent_1", #["DisplayChangeEvent"], false, m_updateMenuFromEvent_1), 
        ("processSleep_0", #[], false, m_processSleep_0), 
        ("initPopupMenu_0", #[], false, m_initPopupMenu_0), 
        ("initMenu_0", #[], false, m_initMenu_0), 
        ("initMenu2_0", #[], false, m_initMenu2_0), 
        ("updateMenu_0", #[], false, m_updateMenu_0), 
        ("updateMenu2_0", #[], false, m_updateMenu2_0), 
        ("pause_0", #[], false, m_pause_0), 
        ("unPause_0", #[], false, m_unPause_0), 
        ("isPausable_0", #[], false, m_isPausable_0), 
        ("popupMenu_0", #[], false, m_popupMenu_0), 
        ("popupMenu2_0", #[], false, m_popupMenu2_0), 
        ("toggleMenu_0", #[], false, m_toggleMenu_0), 
        ("closeMenu_0", #[], false, m_closeMenu_0), 
        ("closeMenu2_0", #[], false, m_closeMenu2_0), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("processorInit_0", #[], false, m_processorInit_0), 
        ("setProcessGameProcessorInit_0", #[], false, m_setProcessGameProcessorInit_0), 
        ("initSpecialPaint_0", #[], false, m_initSpecialPaint_0), 
        ("init_2", #["AllBinaryGameLayerManager", "boolean"], false, m_init_2), 
        ("notifyIntermission_1", #["boolean"], false, m_notifyIntermission_1), 
        ("mediaInit_0", #[], false, m_mediaInit_0), 
        ("initConfigurable_1", #["AbeClientInformationInterface"], false, m_initConfigurable_1), 
        ("initApp_1", #["AbeClientInformationInterface"], false, m_initApp_1), 
        ("initTouch_0", #[], false, m_initTouch_0), 
        ("updateCurrentTouchInputFactory_1", #["BaseTouchInput"], false, m_updateCurrentTouchInputFactory_1), 
        ("updateTouch_0", #[], false, m_updateTouch_0), 
        ("updateTouch2_0", #[], false, m_updateTouch2_0), 
        ("postInitTouch_0", #[], false, m_postInitTouch_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("addCommands_0", #[], false, m_addCommands_0), 
        ("itemStateChanged_1", #["LcduiItem"], false, m_itemStateChanged_1), 
        ("updateScreenButtonPaintable_0", #[], false, m_updateScreenButtonPaintable_0), 
        ("updateScreenButtonPaintable2_0", #[], false, m_updateScreenButtonPaintable2_0), 
        ("getLayerManager_0", #[], false, m_getLayerManager_0), 
        ("setLayerManager_1", #["AllBinaryGameLayerManager"], false, m_setLayerManager_1), 
        ("isGameOver_0", #[], false, m_isGameOver_0), 
        ("setGameOver_1", #["boolean"], false, m_setGameOver_1), 
        ("processGameOver_0", #[], false, m_processGameOver_0), 
        ("isHighScoreSubmitted_0", #[], false, m_isHighScoreSubmitted_0), 
        ("setHighScoreSubmitted_1", #["boolean"], false, m_setHighScoreSubmitted_1), 
        ("getGameState_0", #[], false, m_getGameState_0), 
        ("setGameState_1", #["GameState"], false, m_setGameState_1), 
        ("updateGameState_0", #[], false, m_updateGameState_0), 
        ("updateGameKeyEventProcessor_0", #[], false, m_updateGameKeyEventProcessor_0), 
        ("removeAllGameKeyInputListenersOnBuild_0", #[], false, m_removeAllGameKeyInputListenersOnBuild_0), 
        ("removeAllGameKeyInputListeners_0", #[], false, m_removeAllGameKeyInputListeners_0), 
        ("removeAllGameKeyInputListeners2_0", #[], false, m_removeAllGameKeyInputListeners2_0), 
        ("removeKeyInputListener_1", #["PlayerGameInput"], false, m_removeKeyInputListener_1), 
        ("updateEndGameProcessor_0", #[], false, m_updateEndGameProcessor_0), 
        ("updateEndGameProcessor2_0", #[], false, m_updateEndGameProcessor2_0), 
        ("buildGameInit_1", #["boolean"], false, m_buildGameInit_1), 
        ("cleanupGame_0", #[], false, m_cleanupGame_0), 
        ("loadResourceLoadingLevel_1", #["ResourceLoadingLevel"], false, m_loadResourceLoadingLevel_1), 
        ("loadResources_1", #["int"], false, m_loadResources_1), 
        ("updateColor_0", #[], false, m_updateColor_0), 
        ("buildGame_1", #["int"], false, m_buildGame_1), 
        ("buildGame2_0", #[], false, m_buildGame2_0), 
        ("addKeyInputListener_1", #["PlayerGameInput"], false, m_addKeyInputListener_1), 
        ("setGameCanvasStartListener_1", #["DemoPaintableInterface"], false, m_setGameCanvasStartListener_1), 
        ("loadState_0", #[], false, m_loadState_0), 
        ("getLoadStateHashtable_0", #[], false, m_getLoadStateHashtable_0), 
        ("setLoadStateHashtable_1", #["ABHashtable"], false, m_setLoadStateHashtable_1), 
        ("getCurrentStateHashtable_0", #[], false, m_getCurrentStateHashtable_0), 
        ("paintGameOver_1", #["Graphics"], false, m_paintGameOver_1), 
        ("draw_1", #["Graphics"], false, m_draw_1), 
        ("clear_1", #["Graphics"], false, m_clear_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("processEndLevelIntermissionGameState_0", #[], false, m_processEndLevelIntermissionGameState_0), 
        ("nonBotPaint_1", #["Graphics"], false, m_nonBotPaint_1), 
        ("paintIntermission_1", #["Graphics"], false, m_paintIntermission_1), 
        ("keyPressed_1", #["int"], false, m_keyPressed_1), 
        ("keyReleased_1", #["int"], false, m_keyReleased_1), 
        ("keyRepeated_1", #["int"], false, m_keyRepeated_1), 
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyRepeatedByDevice_2", #["int", "int"], false, m_keyRepeatedByDevice_2), 
        ("keyReleasedByDevice_2", #["int", "int"], false, m_keyReleasedByDevice_2), 
        ("handleRawKey_3", #["int", "int", "boolean"], false, m_handleRawKey_3), 
        ("endProgress_1", #["boolean"], false, m_endProgress_1), 
        ("processPlayingGame_0", #[], false, m_processPlayingGame_0), 
        ("threadInit_0", #[], false, m_threadInit_0), 
        ("processGame_0", #[], false, m_processGame_0), 
        ("notifyDonePainting_0", #[], false, m_notifyDonePainting_0), 
        ("shouldWait_0", #[], false, m_shouldWait_0), 
        ("run_0", #[], false, m_run_0), 
        ("run2_0", #[], false, m_run2_0), 
        ("run3_0", #[], false, m_run3_0), 
        ("setRunning_1", #["boolean"], false, m_setRunning_1), 
        ("end_0", #[], false, m_end_0), 
        ("endGameThread_0", #[], false, m_endGameThread_0), 
        ("createHighScore_1", #["long"], false, m_createHighScore_1), 
        ("setHighScore_5", #["AbeClientInformationInterface", "String", "long", "boolean", "boolean"], false, m_setHighScore_5), 
        ("setHighScore2_5", #["AbeClientInformationInterface", "String", "long", "boolean", "boolean"], false, m_setHighScore2_5), 
        ("getGameStateTimeHelper_0", #[], false, m_getGameStateTimeHelper_0), 
        ("setInitialized_1", #["boolean"], false, m_setInitialized_1), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("setProgressPaintable_1", #["PaintableInterface"], false, m_setProgressPaintable_1), 
        ("getStartIntermissionInterface_0", #[], false, m_getStartIntermissionInterface_0), 
        ("getEndLevelIntermissionInterface_0", #[], false, m_getEndLevelIntermissionInterface_0), 
        ("setTouchPaintableP_1", #["Paintable"], false, m_setTouchPaintableP_1), 
        ("getTouchPaintableP_0", #[], false, m_getTouchPaintableP_0), 
        ("setEndGamePaintable_1", #["Paintable"], false, m_setEndGamePaintable_1), 
        ("getEndGamePaintable_0", #[], false, m_getEndGamePaintable_0), 
        ("setIntermissionPaintable_1", #["Paintable"], false, m_setIntermissionPaintable_1), 
        ("getIntermissionPaintable_0", #[], false, m_getIntermissionPaintable_0), 
        ("getEndGameInfoP_0", #[], false, m_getEndGameInfoP_0), 
        ("setHighScoresPaintable_1", #["Paintable"], false, m_setHighScoresPaintable_1), 
        ("getHighScoresPaintable_0", #[], false, m_getHighScoresPaintable_0), 
        ("getRealHighScoresPaintable_0", #[], false, m_getRealHighScoresPaintable_0), 
        ("clearPlayerGameInputList_0", #[], false, m_clearPlayerGameInputList_0), 
        ("addPlayerGameInput_1", #["PlayerGameInput"], false, m_addPlayerGameInput_1), 
        ("setMenuInputProcessor_1", #["BasicMenuInputProcessor"], false, m_setMenuInputProcessor_1), 
        ("getMenuInputProcessor_0", #[], false, m_getMenuInputProcessor_0), 
        ("getMenuForm_0", #[], false, m_getMenuForm_0), 
        ("setMenuForm_1", #["ScrollSelectionForm"], false, m_setMenuForm_1), 
        ("getStartLevel_0", #[], false, m_getStartLevel_0), 
        ("setStartLevel_1", #["int"], false, m_setStartLevel_1), 
        ("setTouchButtonsPaintable_1", #["Paintable"], false, m_setTouchButtonsPaintable_1), 
        ("getTouchButtonsPaintable_0", #[], false, m_getTouchButtonsPaintable_0), 
        ("setGameInputProcessor_1", #["Processor"], false, m_setGameInputProcessor_1), 
        ("getGameInputProcessor_0", #[], false, m_getGameInputProcessor_0), 
        ("setEndGameProcessor_1", #["Processor"], false, m_setEndGameProcessor_1), 
        ("getEndGameProcessor_0", #[], false, m_getEndGameProcessor_0), 
        ("setEndGameStatePaintable_1", #["Paintable"], false, m_setEndGameStatePaintable_1), 
        ("getEndGameStatePaintable_0", #[], false, m_getEndGameStatePaintable_0), 
        ("setNonBotPaintableP_1", #["Paintable"], false, m_setNonBotPaintableP_1), 
        ("getNonBotPaintableP_0", #[], false, m_getNonBotPaintableP_0), 
        ("setStartIntermissionPaintable_1", #["InitUpdatePaintable"], false, m_setStartIntermissionPaintable_1), 
        ("getStartIntermissionPaintable_0", #[], false, m_getStartIntermissionPaintable_0), 
        ("setMainStateProcessor_1", #["Processor"], false, m_setMainStateProcessor_1), 
        ("getMainStateProcessor_0", #[], false, m_getMainStateProcessor_0), 
        ("setProcessGameProcessor_1", #["Processor"], false, m_setProcessGameProcessor_1), 
        ("getProcessGameProcessor_0", #[], false, m_getProcessGameProcessor_0), 
        ("setOpenMenuPaintable_1", #["Paintable"], false, m_setOpenMenuPaintable_1), 
        ("getOpenMenuPaintable_0", #[], false, m_getOpenMenuPaintable_0), 
        ("setPopupMenuInputProcessor_1", #["BasicMenuInputProcessor"], false, m_setPopupMenuInputProcessor_1), 
        ("getPopupMenuInputProcessor_0", #[], false, m_getPopupMenuInputProcessor_0), 
        ("getSensorGameUpdateProcessor_0", #[], false, m_getSensorGameUpdateProcessor_0), 
        ("getRawGameInputProcessor_0", #[], false, m_getRawGameInputProcessor_0), 
        ("getRawInputProcessor_0", #[], false, m_getRawInputProcessor_0), 
        ("setInputProcessor_1", #["InputProcessor"], false, m_setInputProcessor_1), 
        ("getInputProcessor_0", #[], false, m_getInputProcessor_0), 
        ("setMenuPaintable_1", #["Paintable"], false, m_setMenuPaintable_1), 
        ("getMenuPaintable_0", #[], false, m_getMenuPaintable_0), 
        ("setFormPaintable_1", #["Paintable"], false, m_setFormPaintable_1), 
        ("getFormPaintable_0", #[], false, m_getFormPaintable_0), 
        ("setGameSpecificPaintableP_1", #["Paintable"], false, m_setGameSpecificPaintableP_1), 
        ("getGameSpecificPaintableP_0", #[], false, m_getGameSpecificPaintableP_0), 
        ("isSingleThread_0", #[], false, m_isSingleThread_0), 
        ("isRunningInAnotherThread_0", #[], false, m_isRunningInAnotherThread_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("getTitle_0", #[], false, m_getTitle_0), 
        ("isPaused_0", #[], false, m_isPaused_0), 
        ("jinit_5", #["CommandListener", "AllBinaryGameLayerManager", "HighScoresFactoryInterface", "BasicBuildGameInitializerFactory", "boolean"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryGameCanvas


