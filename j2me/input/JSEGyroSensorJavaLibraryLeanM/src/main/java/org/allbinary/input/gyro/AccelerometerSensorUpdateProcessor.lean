-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AccelerometerSensorUpdateProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sensorFeatureFactory : JV := (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField l_sensorFeatureFactory "ORIENTATION_SENSORS")]) then
        let _ := (<- JR.call (<- JR.callStatic "AccelerometerSensorFactory" "getInstance_0" #[]) "setCompleteMotionGestureInputEventListener_1" #[(<- JR.new "SingleKeyPressGameKeyFromMotionGestureEventListener" #[])])
        pure ()
    else
        if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField l_sensorFeatureFactory "SIMULATED_ORIENTATION_SENSORS")]) then
            let _ := (<- JR.call (<- JR.callStatic "AccelerometerSensorFactory" "getInstance_0" #[]) "setCompleteMotionGestureInputEventListener_1" #[(<- JR.new "SingleKeyPressGameKeyFromMotionGestureEventListener" #[])])
            pure ()
        else
            if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField l_sensorFeatureFactory "NO_ORIENTATION")]) then
                let _ := (<- JR.call (<- JR.callStatic "AccelerometerSensorFactory" "getInstance_0" #[]) "setCompleteMotionGestureInputEventListener_1" #[(<- JR.callStatic "NoCompleteMotionGestureInputEventListener" "getInstance_0" #[])])
                pure ()
            else
                throw (<- JR.new "Exception" #[(JV.str "Sensor Feature Not Set")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AccelerometerSensorUpdateProcessor",
    javaName := "org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AccelerometerSensorUpdateProcessor


