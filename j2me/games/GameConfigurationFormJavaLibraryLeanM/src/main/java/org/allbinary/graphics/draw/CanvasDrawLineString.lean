-- Generated Code Do Not Modify
-- package org.allbinary.graphics.draw
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CanvasDrawLineString

def jfields (this : JV) : JM JV := do
    JR.setField this "drawStringUtil" (<- JR.callStatic "DrawStringUtil" "getInstance_0" #[])
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "fontHeight" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CanvasDrawLineString" "NULL_CANVAS_DRAW_LINE_STRING" (<- JR.new "CanvasDrawLineString" #[(JV.int 0), (JV.int 0)])
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "fontHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_paint_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let mut l_line : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "drawStringUtil") "drawCenterString_6" #[l_graphics, l_string, (JV.int 0), (<- JR.call l_string "length_0" #[]), (<- JR.getField this "x"), (<- JR.add (<- JR.getField this "y") ((<- JR.mul l_line (<- JR.getField this "fontHeight"))))])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "x" (JR.asI l_x)
    JR.setField this "y" (JR.asI l_y)
    pure this

initialize JR.registerClass {
    name := "CanvasDrawLineString",
    javaName := "org.allbinary.graphics.draw.CanvasDrawLineString",
    super := "Object",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("drawStringUtil", JV.null), ("myFontProcessor", JV.null), ("x", (JV.int 0)), ("y", (JV.int 0)), ("fontHeight", (JV.int 0))],
    statics := #[("NULL_CANVAS_DRAW_LINE_STRING", JV.null)],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("paint_3", #["Graphics", "String", "int"], false, m_paint_3), 
        ("jinit_2", #["int", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CanvasDrawLineString


