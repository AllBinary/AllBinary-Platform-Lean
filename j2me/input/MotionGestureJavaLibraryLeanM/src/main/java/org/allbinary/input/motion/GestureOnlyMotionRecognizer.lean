-- Generated Code Do Not Modify
-- package org.allbinary.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GestureOnlyMotionRecognizer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GestureOnlyMotionRecognizer" "pointCircularPool" (<- JR.new "GPointCircularPool" #[(JV.int 40)])
    pure JV.null


def m_processStartMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    let mut l_point : JV := (<- JR.call (<- JR.getStatic "GestureOnlyMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
    let _ := (<- JR.call l_point "setX_1" #[l_x])
    let _ := (<- JR.call l_point "setY_1" #[l_y])
    let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processPressedMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
    pure JV.null


def m_processEndMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    let mut l_point : JV := (<- JR.call (<- JR.getStatic "GestureOnlyMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
    let _ := (<- JR.call l_point "setX_1" #[l_x])
    let _ := (<- JR.call l_point "setY_1" #[l_y])
    let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processReleasedMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
    pure JV.null


def m_processDraggedMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    let mut l_point : JV := (<- JR.call (<- JR.getStatic "GestureOnlyMotionRecognizer" "pointCircularPool") "getNextInstance_0" #[])
    let _ := (<- JR.call l_point "setX_1" #[l_x])
    let _ := (<- JR.call l_point "setY_1" #[l_y])
    let _ := (<- JR.call (<- JR.getField this "motionGestureRecognizer") "processDraggedMotionEvent_3" #[l_point, l_deviceId, l_modifiers])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "MotionRecognizer" this #[]
    let _ <- jfields this
    let jtemp1 : JV := (<- JR.getStatic "GestureOnlyMotionRecognizer" "index")
    JR.setStatic "GestureOnlyMotionRecognizer" "index" (JR.inc jtemp1)
    JR.setField this "id" (JR.asI jtemp1)
    JR.setField this "motionGestureRecognizer" (<- JR.new "MotionGestureRecognizer" #[(<- JR.getField this "id")])
    pure this

initialize JR.registerClass {
    name := "GestureOnlyMotionRecognizer",
    javaName := "org.allbinary.input.motion.GestureOnlyMotionRecognizer",
    super := "MotionRecognizer",
    interfaces := #[],
    isInterface := false,
    fields := #[("motionGestureRecognizer", JV.null), ("id", (JV.int 0))],
    statics := #[("index", (JR.asI (JV.int 0))), ("pointCircularPool", JV.null)],
    methods := #[
        ("processStartMotionEvent_4", #["int", "int", "int", "int"], false, m_processStartMotionEvent_4), 
        ("processEndMotionEvent_4", #["int", "int", "int", "int"], false, m_processEndMotionEvent_4), 
        ("processDraggedMotionEvent_4", #["int", "int", "int", "int"], false, m_processDraggedMotionEvent_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GestureOnlyMotionRecognizer


