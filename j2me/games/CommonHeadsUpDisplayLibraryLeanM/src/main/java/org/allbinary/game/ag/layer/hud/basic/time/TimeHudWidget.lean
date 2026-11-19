-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.time
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TimeHudWidget

def jfields (this : JV) : JM JV := do
    JR.setField this "TIME_STRING" (JV.str "Time ")
    JR.setField this "TIME_CHAR_ARRAY" (<- JR.arrayOf "C" #[(JV.char 84), (JV.char 105), (JV.char 109), (JV.char 101), (JV.char 32)])
    JR.setField this "string" (<- JR.getField (<- JR.callStatic "PrimitiveLongSingleton" "getInstance_0" #[]) "ZERO")
    JR.setField this "totalDigits" (JR.asI (JV.int 1))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_location : JV := (JR.asI (JR.arg jargs 0))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 1))
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let mut l_timer : JV := (JR.arg jargs 3)
    return (<- JR.new "TimeHudWidget" #[l_location, l_direction, (JV.int 2), l_basicColor, l_timer])


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setInherited this "TimeHudWidget" "updateMaxWidth" (<- JR.mul (<- JR.call l_font "getSize_0" #[]) (JV.int 5))
    JR.setField this "offset" (JR.asI (<- JR.add (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "TIME_STRING")]) (<- JR.callStatic "MyFontProcessor" "defaultStringWidth_2" #[l_font, (JV.int 3)])))
    let _ := (<- JR.callSuper "BasicHud" this "updateMeasurement_1" #[l_graphics])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "timer") "update_0" #[])
    let _ := (<- JR.call this "set_0" #[])
    pure JV.null


def m_set_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "string" (<- JR.call (<- JR.getField this "timer") "getTimeChars_0" #[])
    JR.setField this "totalDigits" (JR.asI (<- JR.call (<- JR.getField this "timer") "getCurrentTotalDigits_0" #[]))
    pure JV.null


def m_getTimer_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "timer")


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicHud" this "paintDX_8" #[l_graphics, (<- JR.getField this "TIME_CHAR_ARRAY"), (JV.int 0), (<- JR.alen (<- JR.getField this "TIME_CHAR_ARRAY")), (<- JR.getField this "string"), (JV.int 0), (<- JR.getField this "totalDigits"), (<- JR.getField this "offset")])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_location : JV := (JR.asI (JR.arg jargs 0))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 1))
    let mut l_bufferZone : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    let mut l_timer : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "BasicHud" this #[l_location, l_direction, l_bufferZone, l_basicColor]
    let _ <- jfields this
    JR.setField this "timer" l_timer
    let _ := (<- JR.call this "set_0" #[])
    JR.setInherited this "TimeHudWidget" "updateMaxHeight" (JV.int 14)
    pure this

initialize JR.registerClass {
    name := "TimeHudWidget",
    javaName := "org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget",
    super := "BasicHud",
    interfaces := #[],
    isInterface := false,
    fields := #[("TIME_STRING", JV.null), ("TIME_CHAR_ARRAY", JV.null), ("offset", (JV.int 0)), ("string", JV.null), ("totalDigits", (JV.int 0)), ("timer", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_4", #["int", "int", "BasicColor", "HudTimer"], true, m_getInstance_4), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("update_0", #[], false, m_update_0), 
        ("set_0", #[], false, m_set_0), 
        ("getTimer_0", #[], false, m_getTimer_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_5", #["int", "int", "int", "BasicColor", "HudTimer"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TimeHudWidget


