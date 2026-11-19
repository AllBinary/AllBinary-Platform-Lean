-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.hud.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameNotificationEventHandler

def jfields (this : JV) : JM JV := do
    JR.setField this "enabled" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameNotificationEventHandler" "instance" (<- JR.new "GameNotificationEventHandler" #[])
    pure JV.null


def m_removeAllListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (<- JR.getStatic "NullEventListener" "NULL_EVENT_LISTENER")
    let mut l_list : JV := (<- JR.getInherited this "GameNotificationEventHandler" "eventListenerInterfaceList")
    if JR.truth (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 0)) then
        l_eventListenerInterface := (<- JR.aget (<- JR.getField l_list "objectArray") (JV.int 0))
        pure ()
    let _ := (<- JR.callSuper "BasicEventHandler" this "removeAllListeners_0" #[])
    if JR.truth (<- JR.ne l_eventListenerInterface (<- JR.getStatic "NullEventListener" "NULL_EVENT_LISTENER")) then
        let _ := (<- JR.callInherited this "GameNotificationEventHandler" "addListenerInterface_1" #[l_eventListenerInterface])
        pure ()
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameNotificationEventHandler" "instance")


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := (JR.arg jargs 1)
    if JR.truth (JR.not (<- JR.getField this "enabled")) then
        return JV.null
    let mut l_gameNotificationListenerInterface : JV := l_eventListenerInterface
    let _ := (<- JR.call l_gameNotificationListenerInterface "onGameNotificationEvent_1" #[l_eventObject])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicEventHandler" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameNotificationEventHandler",
    javaName := "org.allbinary.game.layer.hud.event.GameNotificationEventHandler",
    super := "BasicEventHandler",
    interfaces := #[],
    isInterface := false,
    fields := #[("enabled", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("removeAllListeners_0", #[], false, m_removeAllListeners_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_2", #["AllBinaryEventObject", "EventListenerInterface"], false, m_process_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameNotificationEventHandler


