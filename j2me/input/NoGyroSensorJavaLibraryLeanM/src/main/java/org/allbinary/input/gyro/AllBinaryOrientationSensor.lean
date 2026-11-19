-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryOrientationSensor

def jfields (this : JV) : JM JV := do
    JR.setField this "listener" (<- JR.callStatic "NoCompleteMotionGestureInputEventListener" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryOrientationSensor" "NULL_ALLBINARY_ORIENTATION_SENSOR" (<- JR.new "AllBinaryOrientationSensor" #[])
    pure JV.null


def m_setListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_completeMotionGestureInputEventListenerInterface : JV := (JR.arg jargs 0)
    JR.setField this "listener" l_completeMotionGestureInputEventListenerInterface
    pure JV.null


def m_getOrientation_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "AllBinaryOrientationSensor" "commonStrings") "NOT_IMPLEMENTED")])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinarySensor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryOrientationSensor",
    javaName := "org.allbinary.input.gyro.AllBinaryOrientationSensor",
    super := "AllBinarySensor",
    interfaces := #[],
    isInterface := false,
    fields := #[("listener", JV.null)],
    statics := #[("NULL_ALLBINARY_ORIENTATION_SENSOR", JV.null)],
    methods := #[
        ("setListener_1", #["CompleteMotionGestureInputEventListenerInterface"], false, m_setListener_1), 
        ("getOrientation_0", #[], false, m_getOrientation_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryOrientationSensor


