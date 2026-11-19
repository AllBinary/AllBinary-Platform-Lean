-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberStringHud

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "offset" (JR.asI (<- JR.add (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "prependString")]) (<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font])))
    let _ := (<- JR.callSuper "BasicHud" this "updateMeasurement_1" #[l_graphics])
    pure JV.null


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "value"))


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "set_1" #[(<- JR.add (<- JR.getField this "value") l_value)])
    pure JV.null


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "value" (JR.asI l_value)
    if JR.truth (<- JR.gt (<- JR.getField this "value") (<- JR.getField this "max")) then
        JR.setField this "value" (JR.asI (JV.int 0))
        pure ()
    JR.setField this "valueString" (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCharArray_1" #[(<- JR.getField this "value")])
    JR.setField this "valueTotalDigits" (JR.asI (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCurrentTotalDigits_0" #[]))
    pure JV.null


def m_reduce_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "set_1" #[(<- JR.sub (<- JR.getField this "value") l_value)])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicHud" this "paintDX_8" #[l_graphics, (<- JR.getField this "PREPEND_STRING"), (JV.int 0), (<- JR.alen (<- JR.getField this "PREPEND_STRING")), (<- JR.getField this "valueString"), (JV.int 0), (<- JR.getField this "valueTotalDigits"), (<- JR.getField this "offset")])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "NumberStringHud" "myFontProcessor") "process_1" #[l_graphics])
    let mut l_charArray : JV := (<- JR.getField this "PREPEND_STRING")
    let mut l_len : JV := (JR.asI (<- JR.alen (<- JR.getField this "PREPEND_STRING")))
    let mut l_charArray2 : JV := (<- JR.getField this "valueString")
    let mut l_len2 : JV := (JR.asI (<- JR.getField this "valueTotalDigits"))
    let _ := (<- JR.call (<- JR.getInherited this "NumberStringHud" "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.callInherited this "NumberStringHud" "getBasicColorP_0" #[])])
    let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray, (JV.int 0), l_len, l_x, l_y, (JV.int 0)])
    let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray2, (JV.int 0), l_len2, (<- JR.sub l_x (<- JR.getField this "offset")), l_y, (JV.int 0)])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_prependString : JV := (JR.arg jargs 0)
    let mut l_max : JV := (JR.asI (JR.arg jargs 1))
    let mut l_location : JV := (JR.asI (JR.arg jargs 2))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 3))
    let mut l_bufferZone : JV := (JR.asI (JR.arg jargs 4))
    let mut l_basicColor : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "BasicHud" this #[l_location, l_direction, l_bufferZone, l_basicColor]
    let _ <- jfields this
    JR.setField this "prependString" l_prependString
    JR.setField this "PREPEND_STRING" (<- JR.call l_prependString "toCharArray_0" #[])
    JR.setField this "valueString" (<- JR.aget (<- JR.getField (<- JR.callStatic "PrimitiveLongSingleton" "getInstance_0" #[]) "NUMBER_CHAR_ARRAYS") (JV.int 0))
    JR.setField this "primitiveLongUtil" (<- JR.callStatic "PrimitiveLongUtil" "createPowerOfTen_1" #[(<- JR.add l_max (JV.int 1))])
    JR.setField this "max" (JR.asI l_max)
    JR.setField this "value" (JR.asI (JV.int 0))
    if JR.truth (<- JR.eq l_direction (JV.int 0)) then
        throw (<- JR.new "RuntimeException" #[(<- JR.getField (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[]) "DIRECTION_EXCEPTION")])
    pure this

initialize JR.registerClass {
    name := "NumberStringHud",
    javaName := "org.allbinary.game.ag.layer.hud.basic.NumberStringHud",
    super := "BasicHud",
    interfaces := #["PaintableInterface"],
    isInterface := false,
    fields := #[("primitiveLongUtil", JV.null), ("prependString", JV.null), ("PREPEND_STRING", JV.null), ("value", (JV.int 0)), ("max", (JV.int 0)), ("offset", (JV.int 0)), ("valueString", JV.null), ("valueTotalDigits", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("get_0", #[], false, m_get_0), 
        ("add_1", #["int"], false, m_add_1), 
        ("set_1", #["int"], false, m_set_1), 
        ("reduce_1", #["int"], false, m_reduce_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_6", #["String", "int", "int", "int", "int", "BasicColor"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberStringHud


