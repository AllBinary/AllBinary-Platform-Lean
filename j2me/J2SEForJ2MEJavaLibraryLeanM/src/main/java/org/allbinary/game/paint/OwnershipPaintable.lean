-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OwnershipPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "displayInfo" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "COPYRIGHT" (JV.str "AllBinary Copyright (c) 2011")
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")
    JR.setField this "color" (JR.asI (<- JR.call (<- JR.getField this "basicColor") "intValue_0" #[]))
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "OwnershipPaintable" #[])


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "COPYRIGHT_Y" (JR.asI (<- JR.mul (JV.int 2) (<- JR.call l_font "getHeight_0" #[])))
    JR.setField this "beginWidth" (JR.asI ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "COPYRIGHT")]) (JV.int 1))))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    JR.setField this "color" (JR.asI (<- JR.call l_basicColor "intValue_0" #[]))
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getField this "color")])
    let mut l_halfWidth : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfo") "getLastHalfWidth_0" #[]))
    let mut l_height : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfo") "getLastHeight_0" #[]))
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "COPYRIGHT"), (<- JR.sub l_halfWidth (<- JR.getField this "beginWidth")), (<- JR.sub l_height (<- JR.getField this "COPYRIGHT_Y")), (<- JR.getField this "anchor")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OwnershipPaintable",
    javaName := "org.allbinary.game.paint.OwnershipPaintable",
    super := "Paintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("displayInfo", JV.null), ("myFontProcessor", JV.null), ("COPYRIGHT", JV.null), ("basicColor", JV.null), ("color", (JV.int 0)), ("anchor", (JV.int 0)), ("COPYRIGHT_Y", (JV.int 0)), ("beginWidth", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OwnershipPaintable


