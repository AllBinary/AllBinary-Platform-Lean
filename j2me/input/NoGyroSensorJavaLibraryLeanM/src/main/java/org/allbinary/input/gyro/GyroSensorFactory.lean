-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GyroSensorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GyroSensorFactory" "allBinaryGyroSensor" (<- JR.getStatic "AllBinaryOrientationSensor" "NULL_ALLBINARY_ORIENTATION_SENSOR")
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setStatic "GyroSensorFactory" "allBinaryGyroSensor" (<- JR.new "NoGyroSensor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GyroSensorFactory" "allBinaryGyroSensor")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GyroSensorFactory",
    javaName := "org.allbinary.input.gyro.GyroSensorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("allBinaryGyroSensor", JV.null)],
    methods := #[
        ("init_0", #[], true, m_init_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GyroSensorFactory


