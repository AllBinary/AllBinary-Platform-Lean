-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.notification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameNotificationHud

def jfields (this : JV) : JM JV := do
    JR.setField this "METHOD_NAME" (JV.str "onGameNotificationEvent")
    JR.setField this "lastGameNotificationEvent" (<- JR.getStatic "GameNotification" "NULL_GAME_NOTIFICATION_EVENT")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameNotificationHud" "NULL_GAME_NOTIFICATION" (<- JR.new "GameNotificationHud" #[(<- JR.getField (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[]) "TOPCENTER"), (<- JR.getField (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[]) "HORIZONTAL"), (JV.int 0), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED")])
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onGameNotificationEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameNotificationEvent : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne (<- JR.getField this "lastGameNotificationEvent") l_gameNotificationEvent) then
        JR.setField this "lastGameNotificationEvent" l_gameNotificationEvent
        let _ := (<- JR.call (<- JR.getInherited this "GameNotificationHud" "logUtil") "putF_3" #[(<- JR.call l_gameNotificationEvent "getString_0" #[]), this, (<- JR.getField this "METHOD_NAME")])
        pure ()
    let _ := (<- JR.call this "add_4" #[(<- JR.call l_gameNotificationEvent "getString_0" #[]), (<- JR.call l_gameNotificationEvent "getSeconds_0" #[]), (<- JR.call l_gameNotificationEvent "getBasicColorP_0" #[]), (<- JR.call l_gameNotificationEvent "getPermanent_0" #[])])
    pure JV.null


def m_add_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_seconds : JV := (JR.arg jargs 1)
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let mut l_permanent : JV := (JR.arg jargs 3)
    pure JV.null


def m_processTick_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_location : JV := (JR.asI (JR.arg jargs 0))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 1))
    let mut l_bufferZone : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BasicHud" this #[l_location, l_direction, l_bufferZone, l_basicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameNotificationHud",
    javaName := "org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud",
    super := "BasicHud",
    interfaces := #["GameNotificationListenerInterface"],
    isInterface := false,
    fields := #[("METHOD_NAME", JV.null), ("lastGameNotificationEvent", JV.null)],
    statics := #[("NULL_GAME_NOTIFICATION", JV.null)],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onGameNotificationEvent_1", #["GameNotificationEvent"], false, m_onGameNotificationEvent_1), 
        ("add_4", #["String", "Integer", "BasicColor", "Boolean"], false, m_add_4), 
        ("processTick_0", #[], false, m_processTick_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("clear_0", #[], false, m_clear_0), 
        ("jinit_4", #["int", "int", "int", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameNotificationHud


