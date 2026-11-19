-- Generated Code Do Not Modify
-- package org.allbinary.input.accelerometer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AccelerometerSensorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AccelerometerSensorFactory" "allBinaryAccelerometerSensor" (<- JR.getStatic "AllBinaryOrientationSensor" "NULL_ALLBINARY_ORIENTATION_SENSOR")
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_sensorFeatureFactory : JV := (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_sensorFeatureFactory "ORIENTATION_SENSORS")]) then
        throw (<- JR.new "Exception" #[(JV.str "No Orientation Sensors")])
    else
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_sensorFeatureFactory "SIMULATED_ORIENTATION_SENSORS")]) then
            throw (<- JR.new "Exception" #[(JV.str "No Simulation Sensors")])
        else
            if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_sensorFeatureFactory "NO_ORIENTATION")]) then
                JR.setStatic "AccelerometerSensorFactory" "allBinaryAccelerometerSensor" (<- JR.new "NoAccelerometerSensor" #[])
                pure ()
            else
                throw (<- JR.new "Exception" #[(JV.str "Not Such SensorFeature")])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AccelerometerSensorFactory" "allBinaryAccelerometerSensor")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AccelerometerSensorFactory",
    javaName := "org.allbinary.input.accelerometer.AccelerometerSensorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("allBinaryAccelerometerSensor", JV.null)],
    methods := #[
        ("init_0", #[], true, m_init_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AccelerometerSensorFactory


