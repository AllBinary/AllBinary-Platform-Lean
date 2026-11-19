-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameInputProcessor" "instance" (<- JR.new "GameInputProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameInputProcessor" "instance")


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_processReleasedEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_processAnalog_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let mut l_analogValue : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_keyAsInteger : JV := (JR.arg jargs 1)
    pure JV.null


def m_processReleased_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_keyAsInteger : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameInputProcessor",
    javaName := "org.allbinary.game.input.GameInputProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("processReleasedEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processReleasedEvent_2), 
        ("processAnalog_3", #["AllBinaryLayerManager", "GameKeyEvent", "int"], false, m_processAnalog_3), 
        ("process_2", #["AllBinaryLayerManager", "Integer"], false, m_process_2), 
        ("processReleased_2", #["AllBinaryLayerManager", "Integer"], false, m_processReleased_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInputProcessor


