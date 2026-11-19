-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SensorGameUpdateProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "inputSensor" (<- JR.callStatic "NoAllBinarySensor" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setInputSensor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputSensor : JV := (JR.arg jargs 0)
    JR.setField this "inputSensor" l_inputSensor
    pure JV.null


def m_getInputSensor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "inputSensor")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    pure JV.null


def m_sendNotifications_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    pure JV.null


def m_isAnySensor_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "inputSensor") (<- JR.callStatic "NoAllBinarySensor" "getInstance_0" #[])) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def m_setNoSensors_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setInputSensor_1" #[(<- JR.callStatic "NoAllBinarySensor" "getInstance_0" #[])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SensorGameUpdateProcessor",
    javaName := "org.allbinary.input.gyro.SensorGameUpdateProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("inputSensor", JV.null)],
    statics := #[],
    methods := #[
        ("setInputSensor_1", #["AllBinarySensor"], false, m_setInputSensor_1), 
        ("getInputSensor_0", #[], false, m_getInputSensor_0), 
        ("process_1", #["Any"], false, m_process_1), 
        ("sendNotifications_1", #["Any"], false, m_sendNotifications_1), 
        ("isAnySensor_0", #[], false, m_isAnySensor_0), 
        ("setNoSensors_0", #[], false, m_setNoSensors_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SensorGameUpdateProcessor


