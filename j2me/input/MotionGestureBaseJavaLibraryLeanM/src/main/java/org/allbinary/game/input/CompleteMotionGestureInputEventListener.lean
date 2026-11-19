-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompleteMotionGestureInputEventListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    pure JV.null


def m_onCompleteMotionGestureInputEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_completeMotionGestureInputEvent : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CompleteMotionGestureInputEventListener",
    javaName := "org.allbinary.game.input.CompleteMotionGestureInputEventListener",
    super := "Object",
    interfaces := #["CompleteMotionGestureInputEventListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onCompleteMotionGestureInputEvent_1", #["CompleteMotionGestureInputEvent"], false, m_onCompleteMotionGestureInputEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompleteMotionGestureInputEventListener


