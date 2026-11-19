-- Generated Code Do Not Modify
-- package org.allbinary.game.input.mapping.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullInputMappingEventListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullInputMappingEventListener" "NULL_INPUT_MAPPING_EVENT_LISTENER" (<- JR.new "NullInputMappingEventListener" #[])
    pure JV.null


def m_onInputMappingEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputMappingEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullInputMappingEventListener",
    javaName := "org.allbinary.game.input.mapping.event.NullInputMappingEventListener",
    super := "Object",
    interfaces := #["InputMappingEventListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_INPUT_MAPPING_EVENT_LISTENER", JV.null)],
    methods := #[
        ("onInputMappingEvent_1", #["InputMappingEvent"], false, m_onInputMappingEvent_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullInputMappingEventListener


