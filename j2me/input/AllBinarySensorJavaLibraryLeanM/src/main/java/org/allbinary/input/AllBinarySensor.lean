-- Generated Code Do Not Modify
-- package org.allbinary.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinarySensor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinarySensor" "NULL_ALLBINARY_SENSOR" (<- JR.new "AllBinarySensor" #[])
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setMax_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_max : JV := (JR.asI (JR.arg jargs 0))
    JR.setStatic "AllBinarySensor" "max" (JR.asI l_max)
    pure JV.null


def m_getMax_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "AllBinarySensor" "max"))


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callStatic "AllBinarySensor" "getMax_0" #[]))


def m_shutdown_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (JV.str "shutdown")])
    pure JV.null


def m_onSensorChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED"), this])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinarySensor",
    javaName := "org.allbinary.input.AllBinarySensor",
    super := "Object",
    interfaces := #["AllBinarySensorListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null)],
    statics := #[("NULL_ALLBINARY_SENSOR", JV.null), ("max", (JR.asI (JV.int 100)))],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("update_0", #[], false, m_update_0), 
        ("setMax_1", #["int"], true, m_setMax_1), 
        ("getMax_0", #[], true, m_getMax_0), 
        ("getId_0", #[], false, m_getId_0), 
        ("shutdown_0", #[], false, m_shutdown_0), 
        ("onSensorChange_0", #[], false, m_onSensorChange_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinarySensor


