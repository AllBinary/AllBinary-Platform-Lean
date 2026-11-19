-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SingleSensorGameUpdateProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "accelerometerSensorUpdateProcessor" (<- JR.new "AccelerometerSensorUpdateProcessor" #[])
    JR.setField this "gyroSensorUpdateProcessor" (<- JR.new "GyroSensorUpdateProcessor" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "SingleSensorGameUpdateProcessor" "setNoSensors_0" #[])
    pure JV.null


def m_sendNotifications_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "SensorGameUpdateProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SingleSensorGameUpdateProcessor",
    javaName := "org.allbinary.input.gyro.SingleSensorGameUpdateProcessor",
    super := "SensorGameUpdateProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("accelerometerSensorUpdateProcessor", JV.null), ("gyroSensorUpdateProcessor", JV.null)],
    statics := #[],
    methods := #[
        ("process_1", #["Any"], false, m_process_1), 
        ("sendNotifications_1", #["Any"], false, m_sendNotifications_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SingleSensorGameUpdateProcessor


