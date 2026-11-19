-- Generated Code Do Not Modify
-- package org.allbinary.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllMotionRecognizer

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "touchButtonProcessing" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllMotionRecognizer" "pointCircularPool" (<- JR.new "GPointCircularPool" #[(JV.int 40)])
    pure JV.null


def m_processStartMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.call (<- JR.getField this "touchButtonRecognizer") "pressTouchButtonInput_3" #[l_x, l_y, l_deviceId]) then
        JR.setField this "touchButtonProcessing" (JV.bool true)
        pure ()
    if JR.truth (JR.not (<- JR.getField this "touchButtonProcessing")) then
        let mut l_point : JV := (<- JR.call (<- JR.getStatic "AllMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
        let _ := (<- JR.call l_point "setX_1" #[l_x])
        let _ := (<- JR.call l_point "setY_1" #[l_y])
        let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processPressedMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
        pure ()
    pure JV.null


def m_processEndMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.call (<- JR.getField this "touchButtonRecognizer") "releaseTouchButtonInput_3" #[l_x, l_y, l_deviceId]) then
        pure ()
    if JR.truth (JR.not (<- JR.getField this "touchButtonProcessing")) then
        let mut l_point : JV := (<- JR.call (<- JR.getStatic "AllMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
        let _ := (<- JR.call l_point "setX_1" #[l_x])
        let _ := (<- JR.call l_point "setY_1" #[l_y])
        let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processReleasedMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
        pure ()
    if JR.truth (<- JR.getField this "touchButtonProcessing") then
        JR.setField this "touchButtonProcessing" (JV.bool false)
        pure ()
    pure JV.null


def m_processDraggedMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.getField this "touchButtonProcessing") then
        let _ := (<- JR.call (<- JR.getField this "touchButtonRecognizer") "pressTouchButtonInput_3" #[l_x, l_y, l_deviceId])
        pure ()
    if JR.truth (JR.not (<- JR.getField this "touchButtonProcessing")) then
        let mut l_point : JV := (<- JR.call (<- JR.getStatic "AllMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
        let _ := (<- JR.call l_point "setX_1" #[l_x])
        let _ := (<- JR.call l_point "setY_1" #[l_y])
        let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processDraggedMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
        pure ()
    pure JV.null


def m_processMovedMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.cor (<- JR.ne l_x (<- JR.getField this "lastX")) (do pure (<- JR.ne l_y (<- JR.getField this "lastY")))) then
        JR.setField this "lastX" (JR.asI l_x)
        JR.setField this "lastY" (JR.asI l_y)
        let mut l_point : JV := (<- JR.call (<- JR.getStatic "AllMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
        let _ := (<- JR.call l_point "setX_1" #[l_x])
        let _ := (<- JR.call l_point "setY_1" #[l_y])
        let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processMovedMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
        pure ()
    pure JV.null


def m_processScrolledMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    let mut l_point : JV := (<- JR.call (<- JR.getStatic "AllMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
    let _ := (<- JR.call l_point "setX_1" #[l_x])
    let _ := (<- JR.call l_point "setY_1" #[l_y])
    let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processScrolledMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
    pure JV.null


def m_getMotionGestureRecognizer_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "motionGestureRecognizer")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "MotionRecognizer" this #[]
    let _ <- jfields this
    let jtemp1 : JV := (<- JR.getStatic "AllMotionRecognizer" "index")
    JR.setStatic "AllMotionRecognizer" "index" (JR.inc jtemp1)
    JR.setField this "id" (JR.asI jtemp1)
    JR.setField this "motionGestureRecognizer" (<- JR.new "MotionGestureRecognizer" #[(<- JR.getField this "id")])
    JR.setField this "touchButtonRecognizer" (<- JR.new "TouchButtonRecognizer" #[])
    pure this

initialize JR.registerClass {
    name := "AllMotionRecognizer",
    javaName := "org.allbinary.input.motion.AllMotionRecognizer",
    super := "MotionRecognizer",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("motionGestureRecognizer", JV.null), ("touchButtonProcessing", (JV.bool false)), ("touchButtonRecognizer", JV.null), ("id", (JV.int 0)), ("lastX", (JV.int 0)), ("lastY", (JV.int 0))],
    statics := #[("index", (JR.asI (JV.int 0))), ("pointCircularPool", JV.null)],
    methods := #[
        ("processStartMotionEvent_4", #["int", "int", "int", "int"], false, m_processStartMotionEvent_4), 
        ("processEndMotionEvent_4", #["int", "int", "int", "int"], false, m_processEndMotionEvent_4), 
        ("processDraggedMotionEvent_4", #["int", "int", "int", "int"], false, m_processDraggedMotionEvent_4), 
        ("processMovedMotionEvent_4", #["int", "int", "int", "int"], false, m_processMovedMotionEvent_4), 
        ("processScrolledMotionEvent_4", #["int", "int", "int", "int"], false, m_processScrolledMotionEvent_4), 
        ("getMotionGestureRecognizer_0", #[], false, m_getMotionGestureRecognizer_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllMotionRecognizer


