-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonsPaintableComposite

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "timeHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 250)])
    JR.setField this "released" (JV.bool true)
    JR.setField this "METHOD_NAME" (JV.str "onCompleteMotionGestureInputEvent")
    JR.setField this "RELEASE" (JV.str "Ignoring: MotionGestureInput Release")
    JR.setField this "FAST_REPEAT" (JV.str "Ignoring: MotionGestureInput Repeated To Quickly")
    JR.setField this "IGNORE" (JV.str "Ignoring: Until Released")
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
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (JV.str "onCompleteMotionGestureInputEvent")])
        let mut l_touchMotionGestureFactory : JV := (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[])
        let mut l_gameKeyCompleteMotionGestureInputEvent : JV := l_completeMotionGestureInputEvent
        let mut l_gameKey : JV := (<- JR.call l_gameKeyCompleteMotionGestureInputEvent "getGameKey_0" #[])
        let mut l_motionGestureInput : JV := (<- JR.call l_completeMotionGestureInputEvent "getMotionGestureInput_0" #[])
        if JR.truth (<- JR.eq l_motionGestureInput (<- JR.getField l_touchMotionGestureFactory "RELEASED")) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField this "RELEASE"), this, (<- JR.getField this "METHOD_NAME")])
            JR.setField this "released" (JV.bool true)
            return JV.null
        if JR.truth (<- JR.cand (<- JR.eq l_motionGestureInput (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "NO_MOTION")) (do pure (JR.not (<- JR.call (<- JR.getField this "timeHelper") "isTimeTNT_0" #[])))) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField this "FAST_REPEAT"), this, (<- JR.getField this "METHOD_NAME")])
            return JV.null
        if JR.truth (JR.not (<- JR.getField this "released")) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField this "IGNORE"), this, (<- JR.getField this "METHOD_NAME")])
            return JV.null
        JR.setField this "released" (JV.bool false)
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "GameKey: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_gameKey])]) "append_1" #[(JV.str " MotionGestureInput: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_motionGestureInput])]) "toString_0" #[]), this, (<- JR.getField this "METHOD_NAME")])
        let _ := (<- JR.call (<- JR.getField this "inputMappingInterface") "processInputMapping_2" #[l_gameKey, l_motionGestureInput])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField this "METHOD_NAME"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "CompleteMotionGestureInputEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputMappingInterface : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "ProcessPaintable" this #[]
    let _ <- jfields this
    JR.setField this "inputMappingInterface" l_inputMappingInterface
    let _ := (<- JR.call (<- JR.callStatic "CompleteMotionGestureInputEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    JR.setField this "touchButtonsPaintable" (<- JR.new "TouchButtonsMappingPaintable" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "TouchButtonsPaintableComposite",
    javaName := "org.allbinary.input.motion.button.TouchButtonsPaintableComposite",
    super := "ProcessPaintable",
    interfaces := #["CompleteMotionGestureInputEventListenerInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("inputMappingInterface", JV.null), ("touchButtonsPaintable", JV.null), ("timeHelper", JV.null), ("released", (JV.bool false)), ("METHOD_NAME", JV.null), ("RELEASE", JV.null), ("FAST_REPEAT", JV.null), ("IGNORE", JV.null)],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onCompleteMotionGestureInputEvent_1", #["CompleteMotionGestureInputEvent"], false, m_onCompleteMotionGestureInputEvent_1), 
        ("process_0", #[], false, m_process_0), 
        ("jinit_2", #["InputMappingInterface", "BasicColor"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonsPaintableComposite


