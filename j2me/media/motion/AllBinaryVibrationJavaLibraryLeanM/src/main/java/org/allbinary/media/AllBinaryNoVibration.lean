-- Generated Code Do Not Modify
-- package org.allbinary.media
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryNoVibration

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryNoVibration" "NO_VIBRATION" (<- JR.new "AllBinaryNoVibration" #[])
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
    name := "AllBinaryNoVibration",
    javaName := "org.allbinary.media.AllBinaryNoVibration",
    super := "AllBinaryVibrationME",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NO_VIBRATION", JV.null)],
    methods := #[
        ("vibrate_3", #["int", "int", "int"], false, m_vibrate_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryNoVibration


