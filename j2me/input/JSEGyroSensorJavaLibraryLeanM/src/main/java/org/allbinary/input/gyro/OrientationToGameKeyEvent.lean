-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OrientationToGameKeyEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "MIN" (JR.asI (JV.int 15))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setAllBinaryGyroSensor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGyroSensor : JV := (JR.arg jargs 0)
    JR.setField this "allBinaryGyroSensor" l_allBinaryGyroSensor
    pure JV.null


def m_getAllBinaryGyroSensor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "allBinaryGyroSensor")


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_updateGameKeyEvents_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_orientation : JV := (JR.arg jargs 0)
    let mut l_yaw : JV := (JR.asI (JR.arg jargs 1))
    let mut l_pitch : JV := (JR.asI (JR.arg jargs 2))
    let mut l_roll : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[]) "NO_ORIENTATION")]) then
        JR.setField this "allBinaryGyroSensor" (<- JR.new "NoGyroSensor" #[])
        pure ()
    else
        throw (<- JR.new "Exception" #[(JV.str "Not Such Feature")])
    pure this

initialize JR.registerClass {
    name := "OrientationToGameKeyEvent",
    javaName := "org.allbinary.input.gyro.OrientationToGameKeyEvent",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("allBinaryGyroSensor", JV.null), ("MIN", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setAllBinaryGyroSensor_1", #["AllBinaryOrientationSensor"], false, m_setAllBinaryGyroSensor_1), 
        ("getAllBinaryGyroSensor_0", #[], false, m_getAllBinaryGyroSensor_0), 
        ("process_0", #[], false, m_process_0), 
        ("updateGameKeyEvents_4", #["Orientation", "int", "int", "int"], false, m_updateGameKeyEvents_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OrientationToGameKeyEvent


