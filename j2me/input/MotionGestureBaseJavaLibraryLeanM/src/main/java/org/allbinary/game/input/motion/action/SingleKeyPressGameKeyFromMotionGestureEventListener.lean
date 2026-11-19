-- Generated Code Do Not Modify
-- package org.allbinary.game.input.motion.action
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SingleKeyPressGameKeyFromMotionGestureEventListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onCompleteMotionGestureInputEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_completeMotionGestureInputEvent : JV := (JR.arg jargs 0)
    try
        let mut l_gameKeyCompleteMotionGestureInputEvent : JV := l_completeMotionGestureInputEvent
        let mut l_gameKeyEvent : JV := (<- JR.call l_gameKeyCompleteMotionGestureInputEvent "getGameKeyEvent_0" #[])
        let _ := (<- JR.call (<- JR.callStatic "PressGameKeyEventHandler" "getInstance_0" #[]) "fireEvent_1" #[l_gameKeyEvent])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "onCompleteMotionGestureInputEvent"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CompleteMotionGestureInputEventListener" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SingleKeyPressGameKeyFromMotionGestureEventListener",
    javaName := "org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener",
    super := "CompleteMotionGestureInputEventListener",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onCompleteMotionGestureInputEvent_1", #["CompleteMotionGestureInputEvent"], false, m_onCompleteMotionGestureInputEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SingleKeyPressGameKeyFromMotionGestureEventListener


