-- Generated Code Do Not Modify
-- package org.allbinary.input.accelerometer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoAccelerometerSensor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getOrientation_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "Orientation" "NONE")


def m_onSensorChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryOrientationSensor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoAccelerometerSensor",
    javaName := "org.allbinary.input.accelerometer.NoAccelerometerSensor",
    super := "AllBinaryOrientationSensor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getOrientation_0", #[], false, m_getOrientation_0), 
        ("onSensorChange_0", #[], false, m_onSensorChange_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoAccelerometerSensor


