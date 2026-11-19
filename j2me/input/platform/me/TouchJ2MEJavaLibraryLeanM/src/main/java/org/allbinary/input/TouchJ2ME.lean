-- Generated Code Do Not Modify
-- package org.allbinary.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchJ2ME

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "DEVICE_ID" (JR.asI (JV.int 0))
    JR.setField this "motionRecognizer" (<- JR.new "AllMotionRecognizer" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_pointerDragged_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    try
        let _ := (<- JR.call (<- JR.getField this "motionRecognizer") "processDraggedMotionEvent_4" #[l_x, l_y, (<- JR.getField this "DEVICE_ID"), (JV.int 0)])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "pointerDragged"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_pointerPressed_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    try
        let _ := (<- JR.call (<- JR.getField this "motionRecognizer") "processStartMotionEvent_4" #[l_x, l_y, (<- JR.getField this "DEVICE_ID"), (JV.int 0)])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "pointerPressed"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_pointerReleased_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    try
        let _ := (<- JR.call (<- JR.getField this "motionRecognizer") "processEndMotionEvent_4" #[l_x, l_y, (<- JR.getField this "DEVICE_ID"), (JV.int 0)])
        pure ()
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "pointerReleased"), l_e])
            pure ()
        else
            throw jex2
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_motionGesturesHandler : JV := (<- JR.call (<- JR.call (<- JR.getField this "motionRecognizer") "getMotionGestureRecognizer_0" #[]) "getMotionGesturesHandler_0" #[])
    let _ := (<- JR.call l_motionGesturesHandler "addListenerInterface_1" #[(<- JR.new "GameMotionGestureListener" #[(<- JR.callStatic "MotionGestureReceiveInterfaceFactory" "getInstance_0" #[])])])
    pure this

initialize JR.registerClass {
    name := "TouchJ2ME",
    javaName := "org.allbinary.input.TouchJ2ME",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("DEVICE_ID", (JV.int 0)), ("motionRecognizer", JV.null)],
    statics := #[],
    methods := #[
        ("pointerDragged_2", #["int", "int"], false, m_pointerDragged_2), 
        ("pointerPressed_2", #["int", "int"], false, m_pointerPressed_2), 
        ("pointerReleased_2", #["int", "int"], false, m_pointerReleased_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchJ2ME


