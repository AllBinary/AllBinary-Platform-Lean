-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlayerGameInput

def jfields (this : JV) : JM JV := do
    JR.setField this "gameInputStrings" (<- JR.callStatic "GameInputStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onPressGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "PlayerGameInput" "add_1" #[l_gameKeyEvent])
    let _ := (<- JR.callInherited this "PlayerGameInput" "addForRemoval_1" #[l_gameKeyEvent])
    pure JV.null


def m_onDownGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "PlayerGameInput" "add_1" #[l_gameKeyEvent])
    pure JV.null


def m_onDownKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "PlayerGameInput" "add_1" #[l_gameKeyEvent])
    let _ := (<- JR.callInherited this "PlayerGameInput" "addForRemoval_1" #[l_gameKeyEvent])
    pure JV.null


def m_onDownKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(<- JR.call l_gameKeyEvent "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameInputStrings") "ON_DOWN_GAME_KEY")])
    pure JV.null


def m_onUpGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "PlayerGameInput" "addForRemoval_1" #[l_gameKeyEvent])
    pure JV.null


def m_onUpKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_getPlayerInputId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "playerInputId"))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_removalGameKeyEventList : JV := (JR.arg jargs 1)
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "GameInput" this #[l_gameKeyEventList, l_removalGameKeyEventList]
    let _ <- jfields this
    JR.setField this "playerInputId" (JR.asI l_playerInputId)
    pure this

initialize JR.registerClass {
    name := "PlayerGameInput",
    javaName := "org.allbinary.game.input.PlayerGameInput",
    super := "GameInput",
    interfaces := #["GameKeyEventListenerInterface"],
    isInterface := false,
    fields := #[("gameInputStrings", JV.null), ("playerInputId", (JV.int 0))],
    statics := #[],
    methods := #[
        ("onPressGameKeyEvent_1", #["GameKeyEvent"], false, m_onPressGameKeyEvent_1), 
        ("onDownGameKeyEvent_1", #["GameKeyEvent"], false, m_onDownGameKeyEvent_1), 
        ("onDownKeyEvent_1", #["GameKeyEvent"], false, m_onDownKeyEvent_1), 
        ("onDownKey_1", #["Integer"], false, m_onDownKey_1), 
        ("onUpGameKeyEvent_1", #["GameKeyEvent"], false, m_onUpGameKeyEvent_1), 
        ("onUpKeyEvent_1", #["Integer"], false, m_onUpKeyEvent_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("getPlayerInputId_0", #[], false, m_getPlayerInputId_0), 
        ("jinit_3", #["BasicArrayList", "BasicArrayList", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlayerGameInput


