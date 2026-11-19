-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomCustomItem

def jfields (this : JV) : JM JV := do
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "ABCustomItem" this #[l_label, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CustomCustomItem",
    javaName := "org.allbinary.graphics.form.item.CustomCustomItem",
    super := "ABCustomItem",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null)],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("jinit_3", #["String", "BasicColor", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomCustomItem


