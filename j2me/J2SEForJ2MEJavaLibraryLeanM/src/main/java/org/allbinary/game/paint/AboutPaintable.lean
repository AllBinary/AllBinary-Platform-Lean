-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AboutPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "ABOUT" (<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "ABOUT")
    JR.setField this "paintableArray" (<- JR.arrayOf "L" #[this])
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_info : JV := (JR.arg jargs 0)
    let mut l_developers : JV := (JR.arg jargs 1)
    return (<- JR.new "AboutPaintable" #[l_info, l_developers])


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "charHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "aboutBeginWidth" (JR.asI ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "ABOUT")]) (JV.int 1))))
    let mut l_infoSize : JV := (JR.asI (<- JR.alen (<- JR.getField this "info")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_infoSize)) then break
            JR.aset (<- JR.getField this "infoBeginWidth") l_index (JR.asI ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.aget (<- JR.getField this "info") l_index)]) (JV.int 1))))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "developers")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.getField this "developersBeginWidth") l_index (JR.asI ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.aget (<- JR.getField this "developers") l_index)]) (JV.int 1))))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_getPaintableArrayInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "paintableArray")


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_halfWidth : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfWidth_0" #[]))
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "ABOUT"), (<- JR.sub l_halfWidth (<- JR.getField this "aboutBeginWidth")), (<- JR.mul (JV.int 2) (<- JR.getField this "charHeight")), (<- JR.getField this "anchor")])
    let mut l_infoSize : JV := (JR.asI (<- JR.alen (<- JR.getField this "info")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_infoSize)) then break
            let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.aget (<- JR.getField this "info") l_index), (<- JR.sub l_halfWidth (<- JR.aget (<- JR.getField this "infoBeginWidth") l_index)), (<- JR.mul ((<- JR.add (JV.int 4) l_index)) (<- JR.getField this "charHeight")), (<- JR.getField this "anchor")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "developers")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.aget (<- JR.getField this "developers") l_index), (<- JR.sub l_halfWidth (<- JR.aget (<- JR.getField this "developersBeginWidth") l_index)), (<- JR.mul ((<- JR.add (<- JR.add (JV.int 5) l_infoSize) l_index)) (<- JR.getField this "charHeight")), (<- JR.getField this "anchor")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_info : JV := (JR.arg jargs 0)
    let mut l_developers : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "info" l_info
    JR.setField this "infoBeginWidth" (<- JR.newArray "I" 1 #[(<- JR.alen (<- JR.getField this "info"))])
    JR.setField this "developers" l_developers
    JR.setField this "developersBeginWidth" (<- JR.newArray "I" 1 #[(<- JR.alen (<- JR.getField this "developers"))])
    pure this

initialize JR.registerClass {
    name := "AboutPaintable",
    javaName := "org.allbinary.game.paint.AboutPaintable",
    super := "Paintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null), ("ABOUT", JV.null), ("info", JV.null), ("developers", JV.null), ("paintableArray", JV.null), ("myFontProcessor", JV.null), ("charHeight", (JV.int 0)), ("aboutBeginWidth", (JV.int 0)), ("infoBeginWidth", JV.null), ("developersBeginWidth", JV.null), ("anchor", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getInstance_2", #["StringArr", "StringArr"], true, m_getInstance_2), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("getPaintableArrayInstance_0", #[], false, m_getPaintableArrayInstance_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_2", #["StringArr", "StringArr"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AboutPaintable


