-- Generated Code Do Not Modify
-- package org.allbinary.game.input.mapping
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionInputMappingEventListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onInputMappingEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputMappingEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "GameKeyCompleteMotionGestureInputEventFactory" "getInstance_0" #[]) "updateAll_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "updateAll_1" #[(<- JR.call l_inputMappingEvent "getInputToGameKeyMapping_0" #[])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MotionInputMappingEventListener",
    javaName := "org.allbinary.game.input.mapping.MotionInputMappingEventListener",
    super := "Object",
    interfaces := #["InputMappingEventListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onInputMappingEvent_1", #["InputMappingEvent"], false, m_onInputMappingEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionInputMappingEventListener


