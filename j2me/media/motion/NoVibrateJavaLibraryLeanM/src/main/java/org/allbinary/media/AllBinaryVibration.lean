-- Generated Code Do Not Modify
-- package org.allbinary.media
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryVibration

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryVibration" "VIBRATION" (<- JR.getStatic "AllBinaryNoVibration" "NO_VIBRATION")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AllBinaryVibration" "VIBRATION")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.call (<- JR.call (<- JR.getField (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "VIBRATION") "getValue_0" #[]) "intValue_0" #[]) (JV.int 0)) then
        JR.setStatic "AllBinaryVibration" "VIBRATION" (<- JR.getStatic "AllBinaryNoVibration" "NO_VIBRATION")
        pure ()
    else
        JR.setStatic "AllBinaryVibration" "VIBRATION" (<- JR.new "AllBinaryVibration" #[])
        pure ()
    pure JV.null


def m_vibrate_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_duration : JV := (JR.asI (JR.arg jargs 0))
    let mut l_type : JV := (JR.asI (JR.arg jargs 1))
    let mut l_volume : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryVibrationME" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryVibration",
    javaName := "org.allbinary.media.AllBinaryVibration",
    super := "AllBinaryVibrationME",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("VIBRATION", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], true, m_init_0), 
        ("vibrate_3", #["int", "int", "int"], false, m_vibrate_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryVibration


