-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameMidletEventHandler

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameMidletEventHandler" "gameKeyEventHandler" (<- JR.new "GameMidletEventHandler" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameMidletEventHandler" "gameKeyEventHandler")


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := (JR.arg jargs 1)
    let mut l_gameMidletEventListener : JV := l_eventListenerInterface
    let _ := (<- JR.call l_gameMidletEventListener "onGameEnd_1" #[l_eventObject])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicEventHandler" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameMidletEventHandler",
    javaName := "org.allbinary.game.midlet.GameMidletEventHandler",
    super := "BasicEventHandler",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("gameKeyEventHandler", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_2", #["AllBinaryEventObject", "EventListenerInterface"], false, m_process_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameMidletEventHandler


