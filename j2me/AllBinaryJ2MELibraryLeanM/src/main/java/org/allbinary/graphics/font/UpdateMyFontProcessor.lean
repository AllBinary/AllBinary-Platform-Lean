-- Generated Code Do Not Modify
-- package org.allbinary.graphics.font
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_UpdateMyFontProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "updateMeasurementProcessor") "updateMeasurement_1" #[l_graphics])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyValueDrawCharArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "MyFontProcessor" this #[]
    let _ <- jfields this
    JR.setField this "updateMeasurementProcessor" l_keyValueDrawCharArray
    pure this

initialize JR.registerClass {
    name := "UpdateMyFontProcessor",
    javaName := "org.allbinary.graphics.font.UpdateMyFontProcessor",
    super := "MyFontProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("updateMeasurementProcessor", JV.null)],
    statics := #[],
    methods := #[
        ("process_1", #["Graphics"], false, m_process_1), 
        ("jinit_1", #["UpdateMyFontInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_UpdateMyFontProcessor


