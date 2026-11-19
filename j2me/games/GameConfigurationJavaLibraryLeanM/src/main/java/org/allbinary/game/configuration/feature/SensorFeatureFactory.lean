-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SensorFeatureFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NO_ORIENTATION" (<- JR.new "SensorFeature" #[(JV.str "No Orientation")])
    JR.setField this "ORIENTATION_SENSORS" (<- JR.new "SensorFeature" #[(JV.str "Orientation Sensors")])
    JR.setField this "SIMULATED_ORIENTATION_SENSORS" (<- JR.new "SensorFeature" #[(JV.str "Simulated Orientation Sensors")])
    JR.setField this "YAW" (<- JR.new "SensorFeature" #[(JV.str "Yaw")])
    JR.setField this "YAW_MINUS_RIGHT_PLUS_LEFT" (<- JR.new "SensorFeature" #[(JV.str "Yaw -Right +Left")])
    JR.setField this "YAW_MINUS_LEFT_PLUS_RIGHT" (<- JR.new "SensorFeature" #[(JV.str "Yaw -Left +Right ")])
    JR.setField this "PITCH" (<- JR.new "SensorFeature" #[(JV.str "Pitch")])
    JR.setField this "ROLL" (<- JR.new "SensorFeature" #[(JV.str "Roll")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SensorFeatureFactory" "instance" (<- JR.new "SensorFeatureFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SensorFeatureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SensorFeatureFactory",
    javaName := "org.allbinary.game.configuration.feature.SensorFeatureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NO_ORIENTATION", JV.null), ("ORIENTATION_SENSORS", JV.null), ("SIMULATED_ORIENTATION_SENSORS", JV.null), ("YAW", JV.null), ("YAW_MINUS_RIGHT_PLUS_LEFT", JV.null), ("YAW_MINUS_LEFT_PLUS_RIGHT", JV.null), ("PITCH", JV.null), ("ROLL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SensorFeatureFactory


