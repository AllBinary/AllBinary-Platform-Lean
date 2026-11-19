-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OrientationData

def jfields (this : JV) : JM JV := do
    JR.setField this "ORIENTATION_SENSOR_INPUT" (JV.str "Orientation Sensor Input")
    JR.setField this "ORIENTATION_TYPE" (JV.str "Orientation Type")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OrientationData" "SINGLETON" (<- JR.new "OrientationData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OrientationData" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OrientationData",
    javaName := "org.allbinary.input.gyro.OrientationData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ORIENTATION_SENSOR_INPUT", JV.null), ("ORIENTATION_TYPE", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OrientationData


