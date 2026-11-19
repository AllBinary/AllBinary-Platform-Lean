-- Generated Code Do Not Modify
-- package org.allbinary.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompleteMotionGestureInputToGameMotionGestureInput

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CompleteMotionGestureInputToGameMotionGestureInput" "instance" (<- JR.new "CompleteMotionGestureInputToGameMotionGestureInput" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CompleteMotionGestureInputToGameMotionGestureInput" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "No Touch Button = No Compound Motion Gestures"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CompleteMotionGestureInputToGameMotionGestureInput",
    javaName := "org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompleteMotionGestureInputToGameMotionGestureInput


