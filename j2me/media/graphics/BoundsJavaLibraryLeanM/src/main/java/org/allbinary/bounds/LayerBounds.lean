-- Generated Code Do Not Modify
-- package org.allbinary.bounds
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerBounds

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getRectangleP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "rectangle")


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_boundsVisitorInterface : JV := (JR.arg jargs 0)
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onBoundsChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_boundsChangeEvent : JV := (JR.arg jargs 0)
    JR.setField this "rectangle" (<- JR.call l_boundsChangeEvent "getRectangle_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "rectangle" l_rectangle
    pure this

initialize JR.registerClass {
    name := "LayerBounds",
    javaName := "org.allbinary.bounds.LayerBounds",
    super := "Object",
    interfaces := #["BoundsChangeEventListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("rectangle", JV.null)],
    statics := #[],
    methods := #[
        ("getRectangleP_0", #[], false, m_getRectangleP_0), 
        ("visit_1", #["BoundsVisitorInterface"], false, m_visit_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onBoundsChangeEvent_1", #["BoundsChangeEvent"], false, m_onBoundsChangeEvent_1), 
        ("jinit_1", #["Rectangle"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerBounds


