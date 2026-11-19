-- Generated Code Do Not Modify
-- package org.allbinary.graphics.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimpleTextPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "topScoresWidth" (JR.asI (JV.int 0))
    JR.setField this "fontHeight" (JR.asI (JV.int 0))
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "topScoresWidth" (JR.asI ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "text")]) (JV.int 1))))
    JR.setField this "fontHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_width : JV := (JR.asI (<- JR.aget (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLast_0" #[]) (<- JR.getField (<- JR.getField this "displayInfoSingleton") "WIDTH")))
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.call this "getBasicColorP_0" #[]) "intValue_0" #[])])
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "text"), (<- JR.sub ((<- JR.shr l_width (JV.int 1))) (<- JR.getField this "topScoresWidth")), (<- JR.getField this "fontHeight"), (<- JR.getField this "anchor")])
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_setText_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    JR.setField this "text" l_text
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_getText_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "text")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "text" l_text
    JR.setField this "basicColor" l_basicColor
    pure this

initialize JR.registerClass {
    name := "SimpleTextPaintable",
    javaName := "org.allbinary.graphics.paint.SimpleTextPaintable",
    super := "Paintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("text", JV.null), ("basicColor", JV.null), ("topScoresWidth", (JV.int 0)), ("fontHeight", (JV.int 0)), ("anchor", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setText_1", #["String"], false, m_setText_1), 
        ("getText_0", #[], false, m_getText_0), 
        ("jinit_2", #["String", "BasicColor"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimpleTextPaintable


