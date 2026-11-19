-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_EventStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "PERFORMANCE_MESSAGE" (JV.str "Use Custom onEvent Methods for needed optimization")
    JR.setField this "TOTAL_LISTENERS" (JV.str "Total Listeners: ")
    JR.setField this "LISTENER_LABEL" (JV.str " Listener: ")
    JR.setField this "FIRE_EVENT" (JV.str "fireEvent")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "EventStrings" "instance" (<- JR.new "EventStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "EventStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "EventStrings",
    javaName := "org.allbinary.logic.util.event.EventStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("PERFORMANCE_MESSAGE", JV.null), ("TOTAL_LISTENERS", JV.null), ("LISTENER_LABEL", JV.null), ("FIRE_EVENT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_EventStrings


