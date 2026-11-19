-- Generated Code Do Not Modify
-- package org.allbinary.game.paint.help
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HelpPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfo" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    JR.setField this "inputInfo" (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[])
    JR.setField this "beginWidthArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "titleBeginWidth" (JR.asI ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "title")]) (JV.int 1))))
    JR.setField this "charHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "inputInfo")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.getField this "beginWidthArray") l_index (JR.asI ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.aget (<- JR.getField this "inputInfo") l_index)]) (JV.int 1))))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_setInputInfoP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputInfo : JV := (JR.arg jargs 0)
    JR.setField this "inputInfo" l_inputInfo
    JR.setField this "beginWidthArray" (<- JR.newArray "I" 1 #[(<- JR.alen (<- JR.getField this "inputInfo"))])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_halfWidth : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfo") "getLastHalfWidth_0" #[]))
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.getField this "basicColor") "intValue_0" #[])])
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "title"), (<- JR.sub l_halfWidth (<- JR.getField this "titleBeginWidth")), (<- JR.getField this "charHeight"), (<- JR.getField this "anchor")])
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "inputInfo")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.aget (<- JR.getField this "inputInfo") l_index), (<- JR.sub l_halfWidth (<- JR.aget (<- JR.getField this "beginWidthArray") l_index)), (<- JR.mul ((<- JR.add l_index (JV.int 3))) (<- JR.getField this "charHeight")), (<- JR.getField this "anchor")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "title" l_title
    JR.setField this "basicColor" l_basicColor
    pure this

initialize JR.registerClass {
    name := "HelpPaintable",
    javaName := "org.allbinary.game.paint.help.HelpPaintable",
    super := "Paintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfo", JV.null), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("anchor", (JV.int 0)), ("title", JV.null), ("inputInfo", JV.null), ("basicColor", JV.null), ("titleBeginWidth", (JV.int 0)), ("beginWidthArray", JV.null), ("charHeight", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("setInputInfoP_1", #["StringArr"], false, m_setInputInfoP_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_3", #["String", "BasicColor", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HelpPaintable


