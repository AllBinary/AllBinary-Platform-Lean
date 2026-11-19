-- Generated Code Do Not Modify
-- package org.allbinary.android.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnalogControllerConfigurationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "SCALE_FACTOR" (JR.asI (<- JR.getField (<- JR.callStatic "ScaleFactorFactory" "getInstance_0" #[]) "DEFAULT_SCALE_FACTOR"))
    JR.setField this "SCALE_VALUE" (JR.asI (<- JR.getField (<- JR.callStatic "ScaleFactorFactory" "getInstance_0" #[]) "DEFAULT_SCALE_VALUE"))
    JR.setField this "analogControllerConfigurationEvent" (<- JR.new "AnalogControllerConfigurationEvent" #[this])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AnalogControllerConfigurationFactory" "instance" (<- JR.new "AnalogControllerConfigurationFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AnalogControllerConfigurationFactory" "instance")


def m_isAvailable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "available")


def m_setAvailable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_available : JV := (JR.arg jargs 0)
    JR.setField this "available" l_available
    let _ := (<- JR.call (<- JR.callStatic "AnalogControllerConfigurationEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "analogControllerConfigurationEvent")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AnalogControllerConfigurationFactory",
    javaName := "org.allbinary.android.input.motion.AnalogControllerConfigurationFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SCALE_FACTOR", (JV.int 0)), ("SCALE_VALUE", (JV.int 0)), ("available", (JV.bool false)), ("analogControllerConfigurationEvent", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isAvailable_0", #[], false, m_isAvailable_0), 
        ("setAvailable_1", #["boolean"], false, m_setAvailable_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnalogControllerConfigurationFactory


