-- Generated Code Do Not Modify
-- package org.allbinary.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OnlyTouchButtonRecognizer

def jfields (this : JV) : JM JV := do
    JR.setField this "touchButtonProcessing" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processStartMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.call (<- JR.getField this "touchButtonRecognizer") "pressTouchButtonInput_3" #[l_x, l_y, l_deviceId]) then
        JR.setField this "touchButtonProcessing" (JV.bool true)
        pure ()
    pure JV.null


def m_processEndMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.getField this "touchButtonProcessing") then
        JR.setField this "touchButtonProcessing" (JV.bool false)
        pure ()
    if JR.truth (<- JR.call (<- JR.getField this "touchButtonRecognizer") "releaseTouchButtonInput_3" #[l_x, l_y, l_deviceId]) then
        return JV.null
    pure JV.null


def m_processDraggedMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.getField this "touchButtonProcessing") then
        let _ := (<- JR.call (<- JR.getField this "touchButtonRecognizer") "pressTouchButtonInput_3" #[l_x, l_y, l_deviceId])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "MotionRecognizer" this #[]
    let _ <- jfields this
    JR.setField this "touchButtonRecognizer" (<- JR.new "TouchButtonRecognizer" #[])
    pure this

initialize JR.registerClass {
    name := "OnlyTouchButtonRecognizer",
    javaName := "org.allbinary.input.motion.OnlyTouchButtonRecognizer",
    super := "MotionRecognizer",
    interfaces := #[],
    isInterface := false,
    fields := #[("touchButtonRecognizer", JV.null), ("touchButtonProcessing", (JV.bool false))],
    statics := #[],
    methods := #[
        ("processStartMotionEvent_4", #["int", "int", "int", "int"], false, m_processStartMotionEvent_4), 
        ("processEndMotionEvent_4", #["int", "int", "int", "int"], false, m_processEndMotionEvent_4), 
        ("processDraggedMotionEvent_4", #["int", "int", "int", "int"], false, m_processDraggedMotionEvent_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OnlyTouchButtonRecognizer


