-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture.observer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionGestureEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "motionGesture" (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "NO_MOTION")
    JR.setField this "previousPoint" (<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO")
    JR.setField this "currentPoint" (<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO")
    JR.setField this "commonLabels" (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getMotionGesture_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "motionGesture")


def m_setMotionGesture_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGesture : JV := (JR.arg jargs 0)
    JR.setField this "motionGesture" l_motionGesture
    pure JV.null


def m_getPreviousPoint_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "previousPoint")


def m_setPreviousPoint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_previousPoint : JV := (JR.arg jargs 0)
    JR.setField this "previousPoint" l_previousPoint
    pure JV.null


def m_getCurrentPoint_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "currentPoint")


def m_setCurrentPoint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoint : JV := (JR.arg jargs 0)
    JR.setField this "currentPoint" l_currentPoint
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.getField this "motionGesture")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "CURRENT")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.getField this "currentPoint")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "MotionGestureEvent" "PREVIOUS")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.getField this "previousPoint")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "MotionGestureEvent" "HASHCODE")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "id"))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_source : JV := (JR.arg jargs 0)
    let mut l_id : JV := (JR.asI (JR.arg jargs 1))
    let mut l_motionGesture : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_source]
    let _ <- jfields this
    JR.setField this "id" (JR.asI l_id)
    let _ := (<- JR.call this "setMotionGesture_1" #[l_motionGesture])
    pure this

initialize JR.registerClass {
    name := "MotionGestureEvent",
    javaName := "org.allbinary.input.motion.gesture.observer.MotionGestureEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("motionGesture", JV.null), ("id", (JV.int 0)), ("previousPoint", JV.null), ("currentPoint", JV.null), ("commonLabels", JV.null)],
    statics := #[("PREVIOUS", (JV.str " Previous: ")), ("HASHCODE", (JV.str " hashcode: "))],
    methods := #[
        ("getMotionGesture_0", #[], false, m_getMotionGesture_0), 
        ("setMotionGesture_1", #["MotionGestureInput"], false, m_setMotionGesture_1), 
        ("getPreviousPoint_0", #[], false, m_getPreviousPoint_0), 
        ("setPreviousPoint_1", #["GPoint"], false, m_setPreviousPoint_1), 
        ("getCurrentPoint_0", #[], false, m_getCurrentPoint_0), 
        ("setCurrentPoint_1", #["GPoint"], false, m_setCurrentPoint_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("getId_0", #[], false, m_getId_0), 
        ("jinit_3", #["Any", "int", "MotionGestureInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionGestureEvent


