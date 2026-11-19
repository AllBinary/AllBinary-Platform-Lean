-- Generated Code Do Not Modify
-- package org.allbinary.media
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryVisualDebugVibration

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(<- JR.getStatic "Integer" "MAX_VALUE")])
    JR.setField this "VIBRATING" (JV.str "Vibrating")
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "width" (JR.asI (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "VIBRATING")]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_vibrate_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_duration : JV := (JR.asI (JR.arg jargs 0))
    let mut l_type : JV := (JR.asI (JR.arg jargs 1))
    let mut l_volume : JV := (JR.asI (JR.arg jargs 2))
    JR.setField (<- JR.getField this "timeDelayHelper") "delay" (JR.asI l_duration)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTimeTNT_0" #[]) then
        JR.setField (<- JR.getField this "timeDelayHelper") "delay" (JR.asI (<- JR.getStatic "Integer" "MAX_VALUE"))
        let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
        let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "VIBRATING"), (<- JR.sub (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfWidth_0" #[]) ((<- JR.shr (<- JR.getField this "width") (JV.int 1)))), (JV.int 0), (<- JR.getField this "anchor")])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryVibrationME" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryVisualDebugVibration",
    javaName := "org.allbinary.media.AllBinaryVisualDebugVibration",
    super := "AllBinaryVibrationME",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null), ("timeDelayHelper", JV.null), ("VIBRATING", JV.null), ("myFontProcessor", JV.null), ("anchor", (JV.int 0)), ("width", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("vibrate_3", #["int", "int", "int"], false, m_vibrate_3), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryVisualDebugVibration


