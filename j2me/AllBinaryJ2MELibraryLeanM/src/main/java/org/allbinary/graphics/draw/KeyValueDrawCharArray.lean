-- Generated Code Do Not Modify
-- package org.allbinary.graphics.draw
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeyValueDrawCharArray

def jfields (this : JV) : JM JV := do
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "value" (<- JR.call (<- JR.callStatic "CharArrayFactory" "getInstance_0" #[]) "getZeroCharArray_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_labelWidth : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[(<- JR.getField this "LABEL")]) (<- JR.call (<- JR.getField this "LABEL") "length_0" #[])))
    JR.setField this "valueX" (JR.asI (<- JR.add l_labelWidth (<- JR.getField this "labelX")))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_paint_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "LABEL"), (<- JR.getField this "labelX"), l_y, (JV.int 0)])
    let _ := (<- JR.call l_graphics "drawChars_6" #[(<- JR.getField this "value"), (JV.int 0), (<- JR.getField this "len"), (<- JR.getField this "valueX"), l_y, (JV.int 0)])
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let mut l_len : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "value" l_value
    JR.setField this "len" (JR.asI l_len)
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "LABEL" l_label
    JR.setField this "labelX" (JR.asI l_x)
    pure this

initialize JR.registerClass {
    name := "KeyValueDrawCharArray",
    javaName := "org.allbinary.graphics.draw.KeyValueDrawCharArray",
    super := "Object",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("myFontProcessor", JV.null), ("LABEL", JV.null), ("labelX", (JV.int 0)), ("valueX", (JV.int 0)), ("value", JV.null), ("len", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("paint_2", #["Graphics", "int"], false, m_paint_2), 
        ("update_2", #["charArr", "int"], false, m_update_2), 
        ("jinit_2", #["String", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeyValueDrawCharArray


