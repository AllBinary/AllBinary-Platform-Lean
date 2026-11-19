-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameMidlet

def jfields (this : JV) : JM JV := do
    JR.setField this "enumerationUtil" (<- JR.callStatic "EnumerationUtil" "getInstance_0" #[])
    JR.setField this "basicColorFactory" (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    JR.setField this "features" (<- JR.callStatic "Features" "getInstance_0" #[])
    JR.setField this "midletStrings" (<- JR.callStatic "MidletStrings" "getInstance_0" #[])
    JR.setField this "myCommandsFactory" (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[])
    JR.setField this "gameStrings" (<- JR.callStatic "GameStrings" "getInstance_0" #[])
    JR.setField this "gameAdStateFactory" (<- JR.callStatic "GameAdStateFactory" "getInstance_0" #[])
    JR.setField this "gameStateFactory" (<- JR.callStatic "GameStateFactory" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "DISPLAYABLE" (JV.str " Displayable: ")
    JR.setField this "COMMAND_NAME" (JV.str "command Name/Label: ")
    JR.setField this "NO_COMMAND" (JV.str "No Command")
    JR.setField this "NO_DISPLAYABLE" (JV.str "No Displayable")
    JR.setField this "COMMAND_ACTION" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "GameMidlet::")]) "append_1" #[(<- JR.getField (<- JR.getField this "midletStrings") "COMMAND_ACTION")]) "toString_0" #[])
    JR.setField this "PAUSE_APP_BACKGROUND" (JV.str "pauseAppBackground")
    JR.setField this "UN_PAUSE_APP_BACKGROUND" (JV.str "unPauseAppBackground")
    JR.setField this "aboutCommandProcessor" (<- JR.callStatic "AboutCommandProcessor" "getInstance_0" #[])
    JR.setField this "webCommandProcessor" (<- JR.callStatic "WebCommandProcessor" "getInstance_0" #[])
    JR.setField this "gameMidletStateFactory" (<- JR.callStatic "GameMidletStateFactory" "getInstance_0" #[])
    JR.setField this "gameStartTimeHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 240)])
    JR.setField this "fullScreenUtil" (<- JR.callStatic "FullScreenUtil" "getInstance_0" #[])
    JR.setField this "allbinaryGameCanvasRunnableInterface" (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")
    JR.setField this "thread" (<- JR.getStatic "NullThread" "NULL_THREAD")
    JR.setField this "startedBefore" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setDemo_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "NOT_IMPLEMENTED")])


def m_createGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "NOT_IMPLEMENTED")])


def m_mediaShutdown_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "NOT_IMPLEMENTED")])


def m_stopAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_pauseApp_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool true)])
    let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
    let _ := (<- JR.call (<- JR.call l_gameAdState "getAdvertisements_0" #[]) "stopAll_0" #[])
    pure JV.null


def m_pauseAppBackground_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_background : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "START"), this, (<- JR.getField this "PAUSE_APP_BACKGROUND")])
    if JR.truth (<- JR.ne (<- JR.getField this "allbinaryGameCanvasRunnableInterface") (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")) then
        let _ := (<- JR.call (<- JR.getField this "allbinaryGameCanvasRunnableInterface") "pause_0" #[])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "<<<<<< Null"), this, (<- JR.getField this "PAUSE_APP_BACKGROUND")])
        pure ()
    let _ := (<- JR.call (<- JR.callStatic "AllBinarySensorManager" "getInstance_0" #[]) "shutdown_0" #[])
    pure JV.null


def m_unPauseApp_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "unPauseAppBackground_1" #[(JV.bool true)])
    let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
    let _ := (<- JR.call (<- JR.call l_gameAdState "getAdvertisements_0" #[]) "startAll_0" #[])
    pure JV.null


def m_unPauseAppBackground_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_background : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "START"), this, (<- JR.getField this "UN_PAUSE_APP_BACKGROUND")])
    let _ := (<- JR.call (<- JR.callStatic "AllBinarySensorManager" "getInstance_0" #[]) "init_0" #[])
    let mut l_gameCanvasRunnableInterface : JV := (<- JR.getField this "allbinaryGameCanvasRunnableInterface")
    if JR.truth (<- JR.ne l_gameCanvasRunnableInterface (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")) then
        let _ := (<- JR.call l_gameCanvasRunnableInterface "unPause_0" #[])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "<<<<<< Null"), this, (<- JR.getField this "UN_PAUSE_APP_BACKGROUND")])
        pure ()
    pure JV.null


def m_destroyAppInRunnable_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_unconditional : JV := (JR.arg jargs 0)
    let mut l_isProgress : JV := (JR.arg jargs 1)
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    if JR.truth l_isProgress then
        let _ := (<- JR.call l_progressCanvas "start_0" #[])
        let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField (<- JR.getField this "myCommandsFactory") "SET_DISPLAYABLE"), l_progressCanvas])
        pure ()
    let _ := (<- JR.call this "destroyApp_1" #[l_unconditional])
    if JR.truth l_isProgress then
        let _ := (<- JR.call l_progressCanvas "end_0" #[])
        pure ()
    pure JV.null


def m_destroyApp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_unconditional : JV := (JR.arg jargs 0)
    let mut l_METHOD_NAME : JV := (JV.str "GameMidlet::destroyApp")
    try
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.callStatic "GameStatisticsFactory" "getInstance_0" #[]) "toString_0" #[]), this, l_METHOD_NAME])
        let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
        let _ := (<- JR.call (<- JR.call l_gameAdState "getAdvertisements_0" #[]) "stopAll_0" #[])
        if JR.truth (JR.not (<- JR.callInherited this "GameMidlet" "isDestroyed_0" #[])) then
            let _ := (<- JR.call this "stopGameCanvasRunnableInterface_0" #[])
            let _ := (<- JR.call this "setGameCanvasRunnableInterface_1" #[(<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")])
            let _ := (<- JR.call this "mediaShutdown_0" #[])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "Midlet Managment Error: Midlet Should Only Be Destroyed Once"), this, l_METHOD_NAME])
            pure ()
        let _ := (<- JR.callSuper "ProgressMidlet" this "destroyApp_1" #[(JV.bool true)])
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "END"), this, l_METHOD_NAME])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "EXCEPTION"), this, l_METHOD_NAME, l_e])
            pure ()
        else
            throw jex0
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "END"), this, l_METHOD_NAME])
    pure JV.null


def m_startApp_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_gameAdState : JV := (<- JR.call (<- JR.getField this "gameAdStateFactory") "getCurrentInstance_0" #[])
        let _ := (<- JR.call (<- JR.call l_gameAdState "getAdvertisements_0" #[]) "startAll_0" #[])
        let mut l_START_APP : JV := (JV.str "startApp")
        let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "START"), this, l_START_APP])
        let mut l_gameCanvasRunnableInterface : JV := (<- JR.getField this "allbinaryGameCanvasRunnableInterface")
        if JR.truth (<- JR.eq l_gameCanvasRunnableInterface (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")) then
            let _ := (<- JR.call (<- JR.getField this "gameMidletStateFactory") "setCurrentGameState_1" #[(<- JR.getField (<- JR.getField this "gameStateFactory") "NO_GAME_STATE")])
            let _ := (<- JR.call this "setDemo_0" #[])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "GameCanvasRunnableInterface is available"), this, l_START_APP])
            if JR.truth (<- JR.eq l_gameCanvasRunnableInterface (<- JR.callInherited this "GameMidlet" "getCurrentDisplayable_0" #[])) then
                let _ := (<- JR.call this "unPauseAppBackground_1" #[(JV.bool false)])
                pure ()
            else
                let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "GameCanvasRunnableInterface is not current displayable"), this, l_START_APP])
                pure ()
            pure ()
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "EXCEPTION"), this, (JV.str "startApp"), l_e])
            let _ := (<- JR.call this "destroyApp_1" #[(JV.bool false)])
            let _ := (<- JR.callInherited this "GameMidlet" "notifyDestroyed_0" #[])
            pure ()
        else
            throw jex1
    pure JV.null


def m_commandAction_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let mut l_displayable : JV := (JR.arg jargs 1)
    try
        let mut l_displayableAsString : JV := (<- JR.getField this "NO_DISPLAYABLE")
        if JR.truth (<- JR.ne l_displayable JV.null) then
            l_displayableAsString := (<- JR.call l_displayable "toString_0" #[])
            pure ()
        let mut l_label : JV := (<- JR.getField this "NO_COMMAND")
        if JR.truth (<- JR.ne l_command JV.null) then
            l_label := (<- JR.call l_command "getLabel_0" #[])
            pure ()
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "COMMAND_NAME")]) "append_1" #[l_label]) "append_1" #[(<- JR.getField this "DISPLAYABLE")]) "append_1" #[l_displayableAsString]) "toString_0" #[]), this, (<- JR.getField this "COMMAND_ACTION")])
        let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
        let mut l_allbinaryGameCanvasRunnableInterface : JV := (<- JR.getField this "allbinaryGameCanvasRunnableInterface")
        let mut l_gameCanvasRunnableInterface : JV := l_allbinaryGameCanvasRunnableInterface
        if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "SHOW_GAME_CANVAS")) then
            if JR.truth (<- JR.cand (<- JR.ne (<- JR.call (<- JR.callInherited this "GameMidlet" "getDisplay_0" #[]) "getCurrent_0" #[]) l_gameCanvasRunnableInterface) (do pure (<- JR.ne (<- JR.call l_allbinaryGameCanvasRunnableInterface "getType_0" #[]) (<- JR.call (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE") "getType_0" #[])))) then
                let _ := (<- JR.callInherited this "GameMidlet" "setDisplay_1" #[l_gameCanvasRunnableInterface])
                pure ()
            let _ := (<- JR.call this "unPauseAppBackground_1" #[(JV.bool false)])
            pure ()
        else
            if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "CLOSE_AND_SHOW_GAME_CANVAS")) then
                let mut l_menuListener : JV := l_displayable
                let _ := (<- JR.call l_menuListener "close_0" #[])
                let _ := (<- JR.callInherited this "GameMidlet" "setDisplay_1" #[l_gameCanvasRunnableInterface])
                let _ := (<- JR.call this "unPauseAppBackground_1" #[(JV.bool false)])
                pure ()
            else
                if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "EXIT_COMMAND")) then
                    if JR.truth (<- JR.eq (<- JR.call (<- JR.call (<- JR.callStatic "GameMidletEventHandler" "getInstance_0" #[]) "getEventListenerInterfaceListP_0" #[]) "size_0" #[]) (JV.int 0)) then
                        let _ := (<- JR.callInherited this "GameMidlet" "exitProgress_1" #[(JV.bool true)])
                        pure ()
                    let _ := (<- JR.call (<- JR.callStatic "GameMidletEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.new "DemoGameMidletEvent" #[this, (<- JR.getField (<- JR.callStatic "DemoGameMidletStateFactory" "getInstance_0" #[]) "NONE")])])
                    pure ()
                else
                    if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "EXIT_WITHOUT_PROGRESS_COMMAND")) then
                        let _ := (<- JR.callInherited this "GameMidlet" "exitProgress_1" #[(JV.bool false)])
                        pure ()
                    else
                        if JR.truth (<- JR.cor (<- JR.cor (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "START_COMMAND")) (do pure (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "RESTART_COMMAND")))) (do pure (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "CONTINUE_COMMAND")))) then
                            if JR.truth (<- JR.cor (<- JR.ne (<- JR.call (<- JR.getField this "gameMidletStateFactory") "getCurrentGameState_0" #[]) (<- JR.getField (<- JR.getField this "gameStateFactory") "PLAYING_GAME_STATE")) (do pure (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "RESTART_COMMAND")))) then
                                if JR.truth (<- JR.call (<- JR.getField this "gameStartTimeHelper") "isTimeTNT_0" #[]) then
                                    if JR.truth (<- JR.cand (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "START_COMMAND")) (do pure (<- JR.call this "isDemoLoading_0" #[]))) then
                                        let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "Trying to Start Game Before Loading Complete"), this, (<- JR.getField (<- JR.getField this "midletStrings") "COMMAND_ACTION")])
                                        pure ()
                                    else
                                        JR.setField this "startedBefore" (JV.bool true)
                                        let _ := (<- JR.call this "createGame_0" #[])
                                        let _ := (<- JR.call (<- JR.getField this "gameMidletStateFactory") "setCurrentGameState_1" #[(<- JR.getField (<- JR.getField this "gameStateFactory") "PLAYING_GAME_STATE")])
                                        pure ()
                                    pure ()
                                else
                                    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "Starting Game Too Often"), this, (<- JR.getField (<- JR.getField this "midletStrings") "COMMAND_ACTION")])
                                    pure ()
                                pure ()
                            else
                                let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "Already in playing state"), this, (<- JR.getField this "COMMAND_ACTION")])
                                pure ()
                            pure ()
                        else
                            if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "BUY_COMMAND")) then
                                let mut l_inApplicationPurchaseFactory : JV := (<- JR.callStatic "InApplicationPurchaseFactory" "getInstance_0" #[])
                                let mut l_list : JV := (<- JR.call (<- JR.callStatic "LockableFeatureFactory" "getInstance_0" #[]) "getList_0" #[])
                                let mut l_lockableFeature : JV := (<- JR.call l_list "get_1" #[(JV.int 0)])
                                if JR.truth (<- JR.cand (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 0)) (do pure (JR.not (<- JR.call l_inApplicationPurchaseFactory "isPurchased_1" #[l_lockableFeature])))) then
                                    let _ := (<- JR.call l_inApplicationPurchaseFactory "purchase_1" #[l_lockableFeature])
                                    pure ()
                                else
                                    let _ := (<- JR.call (<- JR.callStatic "TextNotificationUtil" "getInstance_0" #[]) "fireSuccess_1" #[(JV.str "Already Purchased")])
                                    pure ()
                                pure ()
                            else
                                if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "QUIT_COMMAND")) then
                                    if JR.truth (<- JR.call (<- JR.getField this "gameStartTimeHelper") "isTimeTNT_0" #[]) then
                                        if JR.truth (<- JR.instanceOf l_displayable "HighScoreTextBox") then
                                            let mut l_menuListener : JV := l_displayable
                                            let _ := (<- JR.call l_menuListener "close_0" #[])
                                            pure ()
                                        let _ := (<- JR.call this "stopGameCanvasRunnableInterface_0" #[])
                                        let _ := (<- JR.call (<- JR.getField this "gameMidletStateFactory") "setCurrentGameState_1" #[(<- JR.getField (<- JR.getField this "gameStateFactory") "NO_GAME_STATE")])
                                        let _ := (<- JR.call this "setDemo_0" #[])
                                        pure ()
                                    pure ()
                                else
                                    if JR.truth (<- JR.eq l_command (<- JR.getField (<- JR.getField this "myCommandsFactory") "RESUME_COMMAND")) then
                                        let _ := (<- JR.call this "unPauseAppBackground_1" #[(JV.bool false)])
                                        pure ()
                                    else
                                        if JR.truth (<- JR.eq l_command (<- JR.getField (<- JR.getField this "myCommandsFactory") "PAUSE_COMMAND")) then
                                            let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                            pure ()
                                        else
                                            if JR.truth (<- JR.eq l_command (<- JR.getField (<- JR.getField this "myCommandsFactory") "SET_DISPLAYABLE")) then
                                                let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                                let _ := (<- JR.callInherited this "GameMidlet" "setDisplay_1" #[l_displayable])
                                                pure ()
                                            else
                                                if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE")) then
                                                    let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                                    let mut l_menuListener : JV := l_displayable
                                                    let _ := (<- JR.call l_menuListener "open_0" #[])
                                                    let _ := (<- JR.callInherited this "GameMidlet" "setDisplay_1" #[l_displayable])
                                                    pure ()
                                                else
                                                    if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "START_TRACE")) then
                                                        let _ := (<- JR.call (<- JR.getField this "debugInterface") "start_0" #[])
                                                        let mut l_gameCanvas : JV := l_allbinaryGameCanvasRunnableInterface
                                                        let _ := (<- JR.call l_gameCanvas "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "STOP_TRACE")])
                                                        let _ := (<- JR.call l_gameCanvas "removeCommand_1" #[(<- JR.getField l_gameCommandsFactory "START_TRACE")])
                                                        pure ()
                                                    else
                                                        if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "STOP_TRACE")) then
                                                            let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                                            let _ := (<- JR.call (<- JR.getField this "debugInterface") "stop_0" #[])
                                                            let _ := (<- JR.call this "unPauseAppBackground_1" #[(JV.bool false)])
                                                            let mut l_gameCanvas : JV := l_allbinaryGameCanvasRunnableInterface
                                                            let _ := (<- JR.call l_gameCanvas "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "START_TRACE")])
                                                            let _ := (<- JR.call l_gameCanvas "removeCommand_1" #[(<- JR.getField l_gameCommandsFactory "STOP_TRACE")])
                                                            pure ()
                                                        else
                                                            if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "DEFAULT_OPTIONS")) then
                                                                let mut l_tempDisplayable : JV := l_displayable
                                                                if JR.truth (<- JR.instanceOf l_tempDisplayable "GameOptionsForm") then
                                                                    let _ := (<- JR.call (<- JR.callStatic "GameFeatureFormUtil" "getInstance_0" #[]) "setDefault_1" #[l_tempDisplayable])
                                                                    pure ()
                                                                pure ()
                                                            else
                                                                if JR.truth (<- JR.eq l_command (<- JR.getStatic "GameInputMappingInstructionsCanvas" "DISPLAY")) then
                                                                    let mut l_tempDisplayable : JV := l_displayable
                                                                    if JR.truth (<- JR.instanceOf l_tempDisplayable "GameInputMappingCanvas") then
                                                                        let mut l_gameInputMappingCanvas : JV := l_tempDisplayable
                                                                        let _ := (<- JR.call l_gameInputMappingCanvas "update_0" #[])
                                                                        pure ()
                                                                    let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE"), (<- JR.call this "getInputMappingInstructionsCanvas_0" #[])])
                                                                    pure ()
                                                                else
                                                                    if JR.truth (<- JR.call (<- JR.callStatic "HighScoreCommandsFactory" "getInstance_0" #[]) "isHighScoreCommand_1" #[l_command]) then
                                                                        let mut l_tempDisplayable : JV := l_displayable
                                                                        if JR.truth (<- JR.instanceOf l_tempDisplayable "HighScoresCanvas") then
                                                                            let mut l_highScoresCanvas : JV := l_tempDisplayable
                                                                            let _ := (<- JR.call l_highScoresCanvas "updateCommand_1" #[l_command])
                                                                            pure ()
                                                                        pure ()
                                                                    else
                                                                        if JR.truth (<- JR.eq l_command (<- JR.getField (<- JR.callStatic "HighScoreCommands" "getInstance_0" #[]) "DISPLAY")) then
                                                                            let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE"), (<- JR.call this "createHighScoresCanvas_0" #[])])
                                                                            pure ()
                                                                        else
                                                                            if JR.truth (<- JR.eq l_command (<- JR.getStatic "GameInputMappingInstructionsCanvas" "CLOSE")) then
                                                                                let mut l_menuListener : JV := l_displayable
                                                                                let _ := (<- JR.call l_menuListener "close_0" #[])
                                                                                let _ := (<- JR.call this "commandAction_2" #[(<- JR.getStatic "GameInputMappingCanvas" "DISPLAY"), (<- JR.getStatic "NullCanvas" "NULL_CANVAS")])
                                                                                pure ()
                                                                            else
                                                                                if JR.truth (<- JR.eq l_command (<- JR.getStatic "GameInputMappingCanvas" "DISPLAY")) then
                                                                                    if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
                                                                                        let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                                                                        pure ()
                                                                                    let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE"), (<- JR.call this "getInputMappingCanvas_0" #[])])
                                                                                    pure ()
                                                                                else
                                                                                    if JR.truth (<- JR.eq l_command (<- JR.getStatic "GameInputMappingCanvas" "DEFAULT")) then
                                                                                        let mut l_tempDisplayable : JV := l_displayable
                                                                                        if JR.truth (<- JR.instanceOf l_tempDisplayable "GameInputMappingCanvas") then
                                                                                            let mut l_gameInputMappingCanvas : JV := l_tempDisplayable
                                                                                            let _ := (<- JR.call l_gameInputMappingCanvas "setDefault_0" #[])
                                                                                            pure ()
                                                                                        pure ()
                                                                                    else
                                                                                        if JR.truth (<- JR.eq l_command (<- JR.getStatic "InGameOptionsForm" "DISPLAY")) then
                                                                                            let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                                                                            let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
                                                                                            let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "In Game Options")])
                                                                                            let mut l_layerManager : JV := (<- JR.call this "createGameLayerManager_0" #[])
                                                                                            let mut l_inGameOptionsFormFactory : JV := (<- JR.callStatic "InGameOptionsFormFactory" "getInstance_0" #[])
                                                                                            let _ := (<- JR.call l_inGameOptionsFormFactory "init_5" #[this, (<- JR.new "InGameFeatures" #[]), (JV.str "Options In Game"), (<- JR.call l_layerManager "getBackgroundBasicColor_0" #[]), (<- JR.call l_layerManager "getForegroundBasicColor_0" #[])])
                                                                                            let mut l_inGameOptionsForm : JV := (<- JR.call l_inGameOptionsFormFactory "get_0" #[])
                                                                                            let _ := (<- JR.call l_inGameOptionsForm "setItemStateListener_1" #[l_allbinaryGameCanvasRunnableInterface])
                                                                                            let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE"), l_inGameOptionsForm])
                                                                                            pure ()
                                                                                        else
                                                                                            if JR.truth (<- JR.eq l_command (<- JR.getStatic "InGameOptionsForm" "DEFAULT")) then
                                                                                                let mut l_inGameOptionsForm : JV := (<- JR.call (<- JR.callStatic "InGameOptionsFormFactory" "getInstance_0" #[]) "get_0" #[])
                                                                                                let _ := (<- JR.call (<- JR.callStatic "GameFeatureFormUtil" "getInstance_0" #[]) "setDefault_1" #[l_inGameOptionsForm])
                                                                                                pure ()
                                                                                            else
                                                                                                if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "DISPLAY_OPTIONS")) then
                                                                                                    let _ := (<- JR.callStatic "AllBinaryMediaManager" "setMuted_1" #[(JV.bool true)])
                                                                                                    let _ := (<- JR.call this "stopAll_0" #[])
                                                                                                    let mut l_mainFeatureFactory : JV := (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[])
                                                                                                    JR.setField this "isFullScreen" (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField l_mainFeatureFactory "FULL_SCREEN")])
                                                                                                    let _ := (<- JR.call (<- JR.callStatic "ResizableListenerHandler" "getInstance_0" #[]) "fireEvent_1" #[(JV.bool true)])
                                                                                                    let _ := (<- JR.call this "setResized_1" #[(JV.bool false)])
                                                                                                    let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE"), (<- JR.call this "getGameOptionsForm_0" #[])])
                                                                                                    pure ()
                                                                                                else
                                                                                                    if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "CLOSE_OPTIONS")) then
                                                                                                        let _ := (<- JR.call (<- JR.callStatic "ResizableListenerHandler" "getInstance_0" #[]) "fireEvent_1" #[(JV.bool false)])
                                                                                                        let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "CLOSE_AND_SHOW_GAME_CANVAS"), l_displayable])
                                                                                                        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
                                                                                                        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Close isFullScreen/change: ")])
                                                                                                        let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.getField this "isFullScreen")])
                                                                                                        let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call (<- JR.getField this "fullScreenUtil") "isScreenChange_1" #[(<- JR.getField this "isFullScreen")])])
                                                                                                        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " isResized: ")])
                                                                                                        let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call this "isResized_0" #[])])
                                                                                                        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField this "COMMAND_ACTION")])
                                                                                                        if JR.truth (<- JR.cor (<- JR.call this "isResized_0" #[]) (do pure (<- JR.call (<- JR.getField this "fullScreenUtil") "isScreenChange_1" #[(<- JR.getField this "isFullScreen")]))) then
                                                                                                            let _ := (<- JR.call this "updateFullScreen_0" #[])
                                                                                                            pure ()
                                                                                                        let _ := (<- JR.callStatic "AllBinaryMediaManager" "setMuted_1" #[(JV.bool false)])
                                                                                                        pure ()
                                                                                                    else
                                                                                                        if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "DISPLAY_LOAD_FORM")) then
                                                                                                            let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                                                                                            let mut l_keyValuePersistance : JV := (<- JR.callStatic "GamePersistanceSingleton" "getInstance_0" #[])
                                                                                                            let _ := (<- JR.call l_keyValuePersistance "clear_0" #[])
                                                                                                            let _ := (<- JR.call l_keyValuePersistance "loadAll_1" #[(<- JR.getInherited this "GameMidlet" "abeClientInformation")])
                                                                                                            if JR.truth (<- JR.eq (<- JR.call this "getLoadGameForm_0" #[]) (<- JR.callStatic "CommandForm" "getNullCommandForm_0" #[])) then
                                                                                                                let mut l_layerManager : JV := (<- JR.call this "createGameLayerManager_0" #[])
                                                                                                                let _ := (<- JR.call this "setLoadGameForm_1" #[(<- JR.new "LoadGameForm" #[this, (JV.str "Load Game"), (<- JR.call l_layerManager "getBackgroundBasicColor_0" #[]), (<- JR.call l_layerManager "getForegroundBasicColor_0" #[])])])
                                                                                                                pure ()
                                                                                                            else
                                                                                                                let _ := (<- JR.call (<- JR.call this "getLoadGameForm_0" #[]) "update_0" #[])
                                                                                                                pure ()
                                                                                                            let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE"), (<- JR.call this "getLoadGameForm_0" #[])])
                                                                                                            pure ()
                                                                                                        else
                                                                                                            if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "LOAD_FILE")) then
                                                                                                                let mut l_loadGameForm : JV := (<- JR.call this "getLoadGameForm_0" #[])
                                                                                                                let mut l_index : JV := (JR.asI (<- JR.call l_loadGameForm "getSelectedId_0" #[]))
                                                                                                                if JR.truth (<- JR.ne l_index (JV.int (-1))) then
                                                                                                                    let mut l_keyValuePersistance : JV := (<- JR.callStatic "GamePersistanceSingleton" "getInstance_0" #[])
                                                                                                                    let _ := (<- JR.callInherited this "GameMidlet" "setStartStateHashtable_1" #[(<- JR.call l_keyValuePersistance "get_1" #[l_index])])
                                                                                                                    let mut l_menuListener : JV := (<- JR.call this "getLoadGameForm_0" #[])
                                                                                                                    let _ := (<- JR.call l_menuListener "close_0" #[])
                                                                                                                    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[]) "toString_0" #[]), this, (<- JR.getField this "COMMAND_ACTION")])
                                                                                                                    let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "START_COMMAND"), (<- JR.getStatic "NullCanvas" "NULL_CANVAS")])
                                                                                                                    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[]) "toString_0" #[]), this, (<- JR.getField this "COMMAND_ACTION")])
                                                                                                                    pure ()
                                                                                                                pure ()
                                                                                                            else
                                                                                                                if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "DELETE_FILE")) then
                                                                                                                    let mut l_loadGameForm : JV := (<- JR.call this "getLoadGameForm_0" #[])
                                                                                                                    let mut l_index : JV := (JR.asI (<- JR.call l_loadGameForm "getSelectedText_0" #[]))
                                                                                                                    if JR.truth (<- JR.ne l_index (JV.int (-1))) then
                                                                                                                        let mut l_keyValuePersistance : JV := (<- JR.callStatic "GamePersistanceSingleton" "getInstance_0" #[])
                                                                                                                        let _ := (<- JR.call l_keyValuePersistance "delete_2" #[(<- JR.getInherited this "GameMidlet" "abeClientInformation"), l_index])
                                                                                                                        let _ := (<- JR.call l_keyValuePersistance "clear_0" #[])
                                                                                                                        let _ := (<- JR.call l_keyValuePersistance "loadAllSize_2" #[(<- JR.getInherited this "GameMidlet" "abeClientInformation"), (JV.int 1)])
                                                                                                                        let _ := (<- JR.call (<- JR.call this "getLoadGameForm_0" #[]) "update_0" #[])
                                                                                                                        pure ()
                                                                                                                    pure ()
                                                                                                                else
                                                                                                                    if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "SAVE")) then
                                                                                                                        let mut l_keyValuePersistance : JV := (<- JR.callStatic "GamePersistanceSingleton" "getInstance_0" #[])
                                                                                                                        let _ := (<- JR.call this "pauseAppBackground_1" #[(JV.bool false)])
                                                                                                                        let _ := (<- JR.call l_keyValuePersistance "save_2" #[(<- JR.getInherited this "GameMidlet" "abeClientInformation"), (<- JR.call this "getCurrentStateHashtable_0" #[])])
                                                                                                                        let _ := (<- JR.call this "unPauseAppBackground_1" #[(JV.bool false)])
                                                                                                                        pure ()
                                                                                                                    else
                                                                                                                        if JR.truth (<- JR.eq l_command (<- JR.getStatic "HighScoreUtil" "SUBMIT_TEXTBOX_COMMAND")) then
                                                                                                                            let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "Submitted Score"), this, (<- JR.getField this "COMMAND_ACTION")])
                                                                                                                            if JR.truth (<- JR.instanceOf l_displayable "HighScoreTextBox") then
                                                                                                                                let mut l_highScoreTextBox : JV := l_displayable
                                                                                                                                JR.setField l_highScoreTextBox "submitted" (JV.bool true)
                                                                                                                                pure ()
                                                                                                                            let _ := (<- JR.call l_allbinaryGameCanvasRunnableInterface "setHighScoreSubmitted_1" #[(JV.bool true)])
                                                                                                                            let _ := (<- JR.call this "commandAction_2" #[(<- JR.getField l_gameCommandsFactory "CLOSE_AND_SHOW_GAME_CANVAS"), l_displayable])
                                                                                                                            pure ()
                                                                                                                        else
                                                                                                                            if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "DISPLAY_ABOUT")) then
                                                                                                                                let _ := (<- JR.call (<- JR.getField this "aboutCommandProcessor") "process_3" #[this, (<- JR.getField l_gameCommandsFactory "SET_MENU_DISPLAYABLE"), (<- JR.call this "getAboutCanvas_0" #[])])
                                                                                                                                pure ()
                                                                                                                            else
                                                                                                                                if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "OPEN_WEB_URL")) then
                                                                                                                                    let _ := (<- JR.call (<- JR.getField this "webCommandProcessor") "process_3" #[this, (<- JR.getField l_gameCommandsFactory "OPEN_WEB_URL"), (<- JR.getStatic "NullCanvas" "NULL_CANVAS")])
                                                                                                                                    pure ()
                                                                                                                                else
                                                                                                                                    if JR.truth (<- JR.eq l_command (<- JR.getField l_gameCommandsFactory "TOGGLE_KEYBOARD")) then
                                                                                                                                        let mut l_virtualKeyboardEventHandler : JV := (<- JR.callStatic "VirtualKeyboardEventHandler" "getInstance_0" #[])
                                                                                                                                        let _ := (<- JR.call l_virtualKeyboardEventHandler "fireEvent_1" #[(<- JR.getField l_virtualKeyboardEventHandler "SHOW_EVENT")])
                                                                                                                                        pure ()
                                                                                                                                    else
                                                                                                                                        if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[(<- JR.call l_command "getLabel_0" #[]), (<- JR.call (<- JR.getField l_gameCommandsFactory "TOGGLE_FULLSCREEN") "getLabel_0" #[])]) (JV.int 0)) then
                                                                                                                                            let mut l_mainFeatureFactory : JV := (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[])
                                                                                                                                            let mut l_isFullScreen : JV := (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField l_mainFeatureFactory "FULL_SCREEN")])
                                                                                                                                            if JR.truth l_isFullScreen then
                                                                                                                                                let _ := (<- JR.call (<- JR.getField this "features") "removeDefault_1" #[(<- JR.getField l_mainFeatureFactory "FULL_SCREEN")])
                                                                                                                                                pure ()
                                                                                                                                            else
                                                                                                                                                let _ := (<- JR.call (<- JR.getField this "features") "addDefault_1" #[(<- JR.getField l_mainFeatureFactory "FULL_SCREEN")])
                                                                                                                                                pure ()
                                                                                                                                            let _ := (<- JR.call this "updateFullScreen_0" #[])
                                                                                                                                            pure ()
        pure ()
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "put_4" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "EXCEPTION_LABEL")]) "append_1" #[(<- JR.call l_command "getLabel_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "midletStrings") "COMMAND_ACTION"), l_e])
            if JR.truth (<- JR.ne l_command (<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "EXIT_COMMAND")) then
                let _ := (<- JR.callInherited this "GameMidlet" "exitProgress_1" #[(JV.bool false)])
                pure ()
            pure ()
        else
            throw jex2
    pure JV.null


def m_updateFullScreen_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mainFeatureFactory : JV := (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[])
    let mut l_isFullScreen : JV := (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField l_mainFeatureFactory "FULL_SCREEN")])
    let mut l_displayable : JV := (<- JR.call (<- JR.callInherited this "GameMidlet" "getDisplay_0" #[]) "getCurrent_0" #[])
    if JR.truth (<- JR.instanceOf l_displayable "Canvas") then
        let mut l_canvas : JV := l_displayable
        let _ := (<- JR.call l_canvas "setFullScreenMode_1" #[l_isFullScreen])
        pure ()
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_getInputMappingInstructionsCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "GameInputMappingInstructionsCanvas" #[this, (<- JR.call this "createGameLayerManager_0" #[])])


def m_getInputMappingCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "GameInputMappingCanvas" #[(<- JR.getInherited this "GameMidlet" "abeClientInformation"), this, (<- JR.call this "createGameLayerManager_0" #[]), (<- JR.call this "getHelpPaintable_0" #[])])


def m_getAboutCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "BasicPaintablesCanvas" #[this, (<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "ABOUT"), (<- JR.call this "createGameLayerManager_0" #[]), (<- JR.getField (<- JR.callStatic "AboutPaintableFactory" "getInstance_0" #[]) "paintableArray")])


def m_getHelpPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "NOT_IMPLEMENTED")])


def m_createHighScoresCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "NOT_IMPLEMENTED")])


def m_startGameCanvasRunnableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_threadFactoryUtil : JV := (<- JR.callStatic "ThreadFactoryUtil" "getInstance_0" #[])
    JR.setField this "thread" (<- JR.call l_threadFactoryUtil "getInstanceGameCanvasRunnable_1" #[(<- JR.getField this "allbinaryGameCanvasRunnableInterface")])
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Thread Priority: ")]) "appendint_1" #[(<- JR.call (<- JR.getField this "thread") "getPriority_0" #[])]) "toString_0" #[]), this, (JV.str "startGameCanvasRunnableInterface")])
    let _ := (<- JR.call (<- JR.getField this "allbinaryGameCanvasRunnableInterface") "setThread_1" #[(<- JR.getField this "thread")])
    let _ := (<- JR.call l_threadFactoryUtil "start_1" #[(<- JR.getField this "thread")])
    pure JV.null


def m_stopGameCanvasRunnableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "gameStrings") "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
    let _ := (<- JR.call (<- JR.callStatic "GameNotificationEventHandler" "getInstance_0" #[]) "removeAllListeners_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "ColorChangeEventHandler" "getInstance_0" #[]) "removeAllListeners_0" #[])
    let _ := (<- JR.callStatic "GameEventHandlerUtil" "removeAllListeners_0" #[])
    let mut l_gameCanvasRunnableInterface : JV := (<- JR.getField this "allbinaryGameCanvasRunnableInterface")
    if JR.truth (<- JR.ne l_gameCanvasRunnableInterface (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")) then
        let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Set Running False: ")]) "append_1" #[(<- JR.call l_gameCanvasRunnableInterface "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameStrings") "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
        let _ := (<- JR.call l_gameCanvasRunnableInterface "setRunning_1" #[(JV.bool false)])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(JV.str "StopGame - Could Not Stop"), this, (<- JR.getField (<- JR.getField this "gameStrings") "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
        pure ()
    let _ := (<- JR.call (<- JR.callStatic "ThreadUtil" "getInstance_0" #[]) "join_1" #[(<- JR.getField this "thread")])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "LOAD_ALL")]) then
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Stopped Game Runnable")])
        pure ()
    else
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Stopped Main Runnable")])
        pure ()
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "END"), this, (<- JR.getField (<- JR.getField this "gameStrings") "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
    pure JV.null


def m_getGameCanvasRunnableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "allbinaryGameCanvasRunnableInterface")


def m_setGameCanvasRunnableInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvasRunnableInterface : JV := (JR.arg jargs 0)
    JR.setField this "allbinaryGameCanvasRunnableInterface" l_gameCanvasRunnableInterface
    pure JV.null


def m_createGameLayerManager_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (<- JR.new "GameInfo" #[(<- JR.getField (<- JR.callStatic "GameTypeFactory" "getInstance_0" #[]) "SINGLE_PLAYER"), (<- JR.getStatic "GameMode" "SERVER"), (<- JR.getField (<- JR.callStatic "PlayerTypesFactory" "getInstance_0" #[]) "PLAYER_TYPE_ONE"), (JV.int 1), (JV.int 1)])
    return (<- JR.new "AllBinaryGameLayerManager" #[(<- JR.getField (<- JR.getField this "basicColorFactory") "BLACK"), (<- JR.getField (<- JR.getField this "basicColorFactory") "WHITE"), l_gameInfo])


def m_getGameOptionsForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (<- JR.call this "createGameLayerManager_0" #[])
    return (<- JR.call (<- JR.callStatic "GameOptionsFormFactory" "getInstance_0" #[]) "init_4" #[this, (JV.str "Game Options"), (<- JR.call l_layerManager "getBackgroundBasicColor_0" #[]), (<- JR.call l_layerManager "getForegroundBasicColor_0" #[])])


def m_save_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "SAVE")])
    let mut l_hashtable : JV := (<- JR.call this "getCurrentStateHashtable_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "GamePersistanceSingleton" "getInstance_0" #[]) "save_2" #[(<- JR.getInherited this "GameMidlet" "abeClientInformation"), l_hashtable])
    pure JV.null


def m_getCurrentStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "GameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameMidlet" "commonStrings") "START"), this, (JV.str "getCurrentStateHashtable")])
    let mut l_hashtable : JV := (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    if JR.truth (<- JR.ne (<- JR.getField this "allbinaryGameCanvasRunnableInterface") (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")) then
        let mut l_currentHashtable : JV := (<- JR.call (<- JR.getField this "allbinaryGameCanvasRunnableInterface") "getCurrentStateHashtable_0" #[])
        let mut l_enumeration : JV := (<- JR.call l_currentHashtable "keys_0" #[])
        let mut l_key : JV := JV.null
        repeat
            if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
            l_key := (<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])
            let _ := (<- JR.call l_hashtable "put_2" #[l_key, (<- JR.call l_currentHashtable "get_1" #[l_key])])
            pure ()
        pure ()
    return l_hashtable


def m_setLoadGameForm_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_loadGameForm : JV := (JR.arg jargs 0)
    JR.setField this "loadGameForm" l_loadGameForm
    pure JV.null


def m_getLoadGameForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "loadGameForm")


def m_setResized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resized : JV := (JR.arg jargs 0)
    JR.setField this "resized" l_resized
    pure JV.null


def m_isResized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "resized")


def m_isDemoLoading_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.getField this "startedBefore") then
        return (JV.bool false)
    let mut l_displayable : JV := (<- JR.call (<- JR.callInherited this "GameMidlet" "getDisplay_0" #[]) "getCurrent_0" #[])
    if JR.truth (<- JR.instanceOf l_displayable "DemoCanvas") then
        let mut l_demoCanvas : JV := l_displayable
        if JR.truth (<- JR.call l_demoCanvas "isDemoLoading_0" #[]) then
            return (JV.bool true)
        pure ()
    return (JV.bool false)


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_clientInformationFactory : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ProgressMidlet" this #[l_clientInformationFactory]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "initWithRange_2" #[(JV.int (JR.wrapI 0x291)), (JV.int 6)])
    JR.setField this "loadGameForm" (<- JR.callStatic "CommandForm" "getNullCommandForm_0" #[])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_progressCanvas "init_1" #[this])
    let _ := (<- JR.call (<- JR.callStatic "GameFeatureEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[(<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "GamePersistanceSingleton" "getInstance_0" #[]) "clear_0" #[])
    JR.setField this "debugInterface" (<- JR.callStatic "DebugFactory" "getInstance_0" #[])
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "GameMidlet",
    javaName := "org.allbinary.game.midlet.GameMidlet",
    super := "ProgressMidlet",
    interfaces := #["CommandListener"],
    isInterface := false,
    fields := #[("enumerationUtil", JV.null), ("basicColorFactory", JV.null), ("features", JV.null), ("midletStrings", JV.null), ("myCommandsFactory", JV.null), ("gameStrings", JV.null), ("gameAdStateFactory", JV.null), ("gameStateFactory", JV.null), ("tsUtil", JV.null), ("DISPLAYABLE", JV.null), ("COMMAND_NAME", JV.null), ("NO_COMMAND", JV.null), ("NO_DISPLAYABLE", JV.null), ("COMMAND_ACTION", JV.null), ("PAUSE_APP_BACKGROUND", JV.null), ("UN_PAUSE_APP_BACKGROUND", JV.null), ("aboutCommandProcessor", JV.null), ("webCommandProcessor", JV.null), ("gameMidletStateFactory", JV.null), ("gameStartTimeHelper", JV.null), ("fullScreenUtil", JV.null), ("debugInterface", JV.null), ("allbinaryGameCanvasRunnableInterface", JV.null), ("thread", JV.null), ("loadGameForm", JV.null), ("isFullScreen", (JV.bool false)), ("resized", (JV.bool false)), ("startedBefore", (JV.bool false))],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("setDemo_0", #[], false, m_setDemo_0), 
        ("createGame_0", #[], false, m_createGame_0), 
        ("mediaShutdown_0", #[], false, m_mediaShutdown_0), 
        ("stopAll_0", #[], false, m_stopAll_0), 
        ("pauseApp_0", #[], false, m_pauseApp_0), 
        ("pauseAppBackground_1", #["boolean"], false, m_pauseAppBackground_1), 
        ("unPauseApp_0", #[], false, m_unPauseApp_0), 
        ("unPauseAppBackground_1", #["boolean"], false, m_unPauseAppBackground_1), 
        ("destroyAppInRunnable_2", #["boolean", "boolean"], false, m_destroyAppInRunnable_2), 
        ("destroyApp_1", #["boolean"], false, m_destroyApp_1), 
        ("startApp_0", #[], false, m_startApp_0), 
        ("commandAction_2", #["Command", "Displayable"], false, m_commandAction_2), 
        ("updateFullScreen_0", #[], false, m_updateFullScreen_0), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("getInputMappingInstructionsCanvas_0", #[], false, m_getInputMappingInstructionsCanvas_0), 
        ("getInputMappingCanvas_0", #[], false, m_getInputMappingCanvas_0), 
        ("getAboutCanvas_0", #[], false, m_getAboutCanvas_0), 
        ("getHelpPaintable_0", #[], false, m_getHelpPaintable_0), 
        ("createHighScoresCanvas_0", #[], false, m_createHighScoresCanvas_0), 
        ("startGameCanvasRunnableInterface_0", #[], false, m_startGameCanvasRunnableInterface_0), 
        ("stopGameCanvasRunnableInterface_0", #[], false, m_stopGameCanvasRunnableInterface_0), 
        ("getGameCanvasRunnableInterface_0", #[], false, m_getGameCanvasRunnableInterface_0), 
        ("setGameCanvasRunnableInterface_1", #["GameCanvasRunnableInterface"], false, m_setGameCanvasRunnableInterface_1), 
        ("createGameLayerManager_0", #[], false, m_createGameLayerManager_0), 
        ("getGameOptionsForm_0", #[], false, m_getGameOptionsForm_0), 
        ("save_0", #[], false, m_save_0), 
        ("getCurrentStateHashtable_0", #[], false, m_getCurrentStateHashtable_0), 
        ("setLoadGameForm_1", #["LoadGameForm"], false, m_setLoadGameForm_1), 
        ("getLoadGameForm_0", #[], false, m_getLoadGameForm_0), 
        ("setResized_1", #["boolean"], false, m_setResized_1), 
        ("isResized_0", #[], false, m_isResized_0), 
        ("isDemoLoading_0", #[], false, m_isDemoLoading_0), 
        ("jinit_1", #["ClientInformationFactory"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameMidlet


