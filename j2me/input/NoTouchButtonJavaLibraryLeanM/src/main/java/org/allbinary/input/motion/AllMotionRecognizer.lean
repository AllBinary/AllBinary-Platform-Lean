-- Generated Code Do Not Modify
-- package org.allbinary.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllMotionRecognizer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processStartMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_processEndMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_processDraggedMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_processMovedMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_processScrolledMotionEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_modifiers : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "id"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let jtemp1 : JV := (<- JR.getStatic "AllMotionRecognizer" "index")
    JR.setStatic "AllMotionRecognizer" "index" (JR.inc jtemp1)
    JR.setField this "id" (JR.asI jtemp1)
    pure this

initialize JR.registerClass {
    name := "AllMotionRecognizer",
    javaName := "org.allbinary.input.motion.AllMotionRecognizer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("id", (JV.int 0))],
    statics := #[("index", (JR.asI (JV.int 0)))],
    methods := #[
        ("processStartMotionEvent_4", #["int", "int", "int", "int"], false, m_processStartMotionEvent_4), 
        ("processEndMotionEvent_4", #["int", "int", "int", "int"], false, m_processEndMotionEvent_4), 
        ("processDraggedMotionEvent_4", #["int", "int", "int", "int"], false, m_processDraggedMotionEvent_4), 
        ("processMovedMotionEvent_4", #["int", "int", "int", "int"], false, m_processMovedMotionEvent_4), 
        ("processScrolledMotionEvent_4", #["int", "int", "int", "int"], false, m_processScrolledMotionEvent_4), 
        ("getId_0", #[], false, m_getId_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllMotionRecognizer


