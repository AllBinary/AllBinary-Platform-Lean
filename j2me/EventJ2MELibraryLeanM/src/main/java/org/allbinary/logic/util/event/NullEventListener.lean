-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullEventListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullEventListener" "NULL_EVENT_LISTENER" (<- JR.new "NullEventListener" #[])
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullEventListener",
    javaName := "org.allbinary.logic.util.event.NullEventListener",
    super := "Object",
    interfaces := #["EventListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_EVENT_LISTENER", JV.null)],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullEventListener


