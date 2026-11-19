-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture.observer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ReleaseControlledMotionGestureListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "currentMotionGesture" (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "NO_MOTION")
    JR.setField this "isMouseGestureOccurring" (JV.bool false)
    JR.setField this "motionGestureCollection" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED"), this])
    pure JV.null


def m_onUpMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onDownMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onLeftMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onRightMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onDiagonalDownRightMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onDiagonalDownLeftMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onDiagonalUpRightMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onDiagonalUpLeftMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onPressedMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    JR.setField this "isMouseGestureOccurring" (JV.bool true)
    JR.setField this "currentMotionGesture" (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "NO_MOTION")
    let _ := (<- JR.call this "onMotionGestureEvent_1" #[l_ev])
    pure JV.null


def m_onScrolledMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_released_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    try
        if JR.truth (<- JR.eq (<- JR.getField this "isMouseGestureOccurring") (JV.bool false)) then
            return JV.null
        JR.setField this "isMouseGestureOccurring" (JV.bool false)
        let _ := (<- JR.call (<- JR.getField this "signed") "onMotionGestureCompleted_1" #[(<- JR.getField this "motionGestureCollection")])
        let _ := (<- JR.call (<- JR.getField this "motionGestureCollection") "clear_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.call l_ev "getMotionGesture_0" #[])])]) "toString_0" #[]), this, (JV.str "release"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_onMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ev : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.getField this "isMouseGestureOccurring") (JV.bool false)) then
        return JV.null
    let mut l_motionGestureInput : JV := (<- JR.call l_ev "getMotionGesture_0" #[])
    if JR.truth (<- JR.eq l_motionGestureInput (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "PRESSED")) then
        let _ := (<- JR.call this "onPressedMotionGestureEvent_1" #[l_ev])
        pure ()
    else
        if JR.truth (<- JR.eq l_motionGestureInput (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "RELEASED")) then
            let _ := (<- JR.call this "released_1" #[l_ev])
            pure ()
        else
            if JR.truth (<- JR.ne (<- JR.getField this "currentMotionGesture") l_motionGestureInput) then
                JR.setField this "currentMotionGesture" l_motionGestureInput
                let _ := (<- JR.call (<- JR.getField this "motionGestureCollection") "add_1" #[(<- JR.call l_ev "getMotionGesture_0" #[])])
                pure ()
            pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_signed : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR")])
    JR.setField this "signed" l_signed
    pure this

initialize JR.registerClass {
    name := "ReleaseControlledMotionGestureListener",
    javaName := "org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener",
    super := "Object",
    interfaces := #["MotionGestureEventListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("currentMotionGesture", JV.null), ("isMouseGestureOccurring", (JV.bool false)), ("motionGestureCollection", JV.null), ("signed", JV.null)],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onUpMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onUpMotionGestureEvent_1), 
        ("onDownMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onDownMotionGestureEvent_1), 
        ("onLeftMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onLeftMotionGestureEvent_1), 
        ("onRightMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onRightMotionGestureEvent_1), 
        ("onDiagonalDownRightMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onDiagonalDownRightMotionGestureEvent_1), 
        ("onDiagonalDownLeftMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onDiagonalDownLeftMotionGestureEvent_1), 
        ("onDiagonalUpRightMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onDiagonalUpRightMotionGestureEvent_1), 
        ("onDiagonalUpLeftMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onDiagonalUpLeftMotionGestureEvent_1), 
        ("onPressedMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onPressedMotionGestureEvent_1), 
        ("onScrolledMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onScrolledMotionGestureEvent_1), 
        ("released_1", #["MotionGestureEvent"], false, m_released_1), 
        ("onMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onMotionGestureEvent_1), 
        ("jinit_1", #["CompleteMotionGestureListenerInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ReleaseControlledMotionGestureListener


