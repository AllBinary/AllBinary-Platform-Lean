-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture.observer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullCompleteMotionGestureReceiver

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onMotionGestureCompleted_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Null Gesture Reciever"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR")])
    pure this

initialize JR.registerClass {
    name := "NullCompleteMotionGestureReceiver",
    javaName := "org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver",
    super := "Object",
    interfaces := #["CompleteMotionGestureListenerInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("onMotionGestureCompleted_1", #["BasicArrayList"], false, m_onMotionGestureCompleted_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullCompleteMotionGestureReceiver


