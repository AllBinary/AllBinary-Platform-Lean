-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureEventHandler

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameFeatureEventHandler" "gameKeyEventHandler" (<- JR.new "GameFeatureEventHandler" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameFeatureEventHandler" "gameKeyEventHandler")


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := (JR.arg jargs 1)
    let mut l_gameFeatureListenerInterface : JV := (l_eventListenerInterface)
    let _ := (<- JR.call l_gameFeatureListenerInterface "onGameFeatureChange_1" #[l_eventObject])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicEventHandler" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameFeatureEventHandler",
    javaName := "org.allbinary.game.configuration.event.GameFeatureEventHandler",
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

end jclass_GameFeatureEventHandler


