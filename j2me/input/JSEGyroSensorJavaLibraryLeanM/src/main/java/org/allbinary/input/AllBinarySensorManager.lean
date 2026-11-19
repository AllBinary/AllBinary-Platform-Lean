-- Generated Code Do Not Modify
-- package org.allbinary.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinarySensorManager

def jfields (this : JV) : JM JV := do
    JR.setField this "ORIENTATION_SENSOR_INPUT" (JV.str "Orientation Sensor Input")
    JR.setField this "ORIENTATION_TYPE" (JV.str "Orientation Type")
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinarySensorManager" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "AllBinarySensorManager" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "AllBinarySensorManager" "instance" (<- JR.new "AllBinarySensorManager" #[])
        pure ()
    return (<- JR.getStatic "AllBinarySensorManager" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getSensorNamesList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def m_shutdown_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinarySensorManager",
    javaName := "org.allbinary.input.AllBinarySensorManager",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ORIENTATION_SENSOR_INPUT", JV.null), ("ORIENTATION_TYPE", JV.null), ("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("getSensorNamesList_0", #[], false, m_getSensorNamesList_0), 
        ("shutdown_0", #[], false, m_shutdown_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinarySensorManager


