-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoGyroSensor

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
    let _ := (<- JR.call (<- JR.getInherited this "NoGyroSensor" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "NoGyroSensor" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "NoGyroSensor" "commonStrings") "CONSTRUCTOR")])
    pure this

initialize JR.registerClass {
    name := "NoGyroSensor",
    javaName := "org.allbinary.input.gyro.NoGyroSensor",
    super := "AllBinaryOrientationSensor",
    interfaces := #["AllBinarySensorListener"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getOrientation_0", #[], false, m_getOrientation_0), 
        ("onSensorChange_0", #[], false, m_onSensorChange_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoGyroSensor


