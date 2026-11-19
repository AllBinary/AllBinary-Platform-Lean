-- Generated Code Do Not Modify
-- package org.allbinary.game.input.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyEventHandler

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "pressGameKeyEventHandler" (<- JR.callStatic "PressGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "upGameKeyEventHandler" (<- JR.callStatic "UpGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "downGameKeyEventHandler" (<- JR.callStatic "DownGameKeyEventHandler" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKeyEventHandler" "instance" (<- JR.new "GameKeyEventHandler" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameKeyEventHandler" "instance")


def m_removeAllListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "pressGameKeyEventHandler") "removeAllListeners_0" #[])
    let _ := (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "removeAllListeners_0" #[])
    let _ := (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "removeAllListeners_0" #[])
    pure JV.null


def m_addListenerForPlayer_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_eventListenerInterface "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD_LISTENER")])
    let _ := (<- JR.call (<- JR.getField this "pressGameKeyEventHandler") "addListenerSingleThreaded_1" #[l_eventListenerInterface])
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "getInstanceForPlayer_1" #[l_playerInputId]) "addListenerSingleThreaded_1" #[l_eventListenerInterface])
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "getInstanceForPlayer_1" #[l_playerInputId]) "addListenerSingleThreaded_1" #[l_eventListenerInterface])
    pure JV.null


def m_addListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_eventListenerInterface "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD_LISTENER")])
    let _ := (<- JR.call (<- JR.getField this "pressGameKeyEventHandler") "addListenerSingleThreaded_1" #[l_eventListenerInterface])
    let _ := (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "addListenerSingleThreaded_1" #[l_eventListenerInterface])
    let _ := (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "addListenerSingleThreaded_1" #[l_eventListenerInterface])
    pure JV.null


def m_removeListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_eventListenerInterface "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "REMOVE_LISTENER")])
    let _ := (<- JR.call (<- JR.getField this "pressGameKeyEventHandler") "removeListenerSingleThreaded_1" #[l_eventListenerInterface])
    let _ := (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "removeListenerSingleThreaded_1" #[l_eventListenerInterface])
    let _ := (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "removeListenerSingleThreaded_1" #[l_eventListenerInterface])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameKeyEventHandler",
    javaName := "org.allbinary.game.input.event.GameKeyEventHandler",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("pressGameKeyEventHandler", JV.null), ("upGameKeyEventHandler", JV.null), ("downGameKeyEventHandler", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("removeAllListeners_0", #[], false, m_removeAllListeners_0), 
        ("addListenerForPlayer_2", #["EventListenerInterface", "int"], false, m_addListenerForPlayer_2), 
        ("addListener_1", #["EventListenerInterface"], false, m_addListener_1), 
        ("removeListener_1", #["EventListenerInterface"], false, m_removeListener_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyEventHandler


