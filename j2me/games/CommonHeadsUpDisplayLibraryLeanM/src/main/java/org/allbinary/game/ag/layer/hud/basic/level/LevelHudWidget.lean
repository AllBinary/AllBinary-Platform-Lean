-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.level
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LevelHudWidget

def jfields (this : JV) : JM JV := do
    JR.setField this "levelNumberCharArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_CHAR_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createHud_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxlevel : JV := (JR.asI (JR.arg jargs 0))
    let mut l_location : JV := (JR.asI (JR.arg jargs 1))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.new "LevelHudWidget" #[l_maxlevel, l_location, l_direction])


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setInherited this "LevelHudWidget" "updateMaxWidth" (<- JR.mul (<- JR.call l_font "getSize_0" #[]) (JV.int 4))
    JR.setField this "offset" (JR.asI (<- JR.add (<- JR.call l_font "charsWidth_3" #[(<- JR.getField this "levelString"), (JV.int 0), (<- JR.alen (<- JR.getField this "levelString"))]) (<- JR.call l_font "getSize_0" #[])))
    let _ := (<- JR.callSuper "BasicHud" this "updateMeasurement_1" #[l_graphics])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "levelNumberCharArray" (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCharArray_1" #[(<- JR.getField this "level")])
    JR.setField this "levelNumberTotalDigits" (JR.asI (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCurrentTotalDigits_0" #[]))
    pure JV.null


def m_setLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "level" (JR.asI l_level)
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_nextLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "level" (JR.inc (<- JR.getField this "level"))
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_previousLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "level" (JR.dec (<- JR.getField this "level"))
    if JR.truth (<- JR.lt (<- JR.getField this "level") (JV.int 0)) then
        JR.setField this "level" (JR.asI (JV.int 0))
        pure ()
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_isComplete_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.le (<- JR.getField this "level") (<- JR.getField this "maxlevel")) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicHud" this "paintDX_8" #[l_graphics, (<- JR.getField this "levelString"), (JV.int 0), (<- JR.alen (<- JR.getField this "levelString")), (<- JR.getField this "levelNumberCharArray"), (JV.int 0), (<- JR.getField this "levelNumberTotalDigits"), (<- JR.getField this "offset")])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxlevel : JV := (JR.asI (JR.arg jargs 0))
    let mut l_location : JV := (JR.asI (JR.arg jargs 1))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "BasicHud" this #[l_location, l_direction, (JV.int 2), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "GREY")]
    let _ <- jfields this
    JR.setField this "primitiveLongUtil" (<- JR.callStatic "PrimitiveLongUtil" "createPowerOfTen_1" #[(JV.int 1000)])
    let mut l_LEVEL : JV := (JV.str "Lv ")
    JR.setField this "levelString" (<- JR.call l_LEVEL "toCharArray_0" #[])
    JR.setField this "maxlevel" (JR.asI l_maxlevel)
    JR.setField this "level" (JR.asI l_maxlevel)
    let _ := (<- JR.call this "update_0" #[])
    JR.setInherited this "LevelHudWidget" "updateMaxHeight" (JV.int 14)
    pure this

initialize JR.registerClass {
    name := "LevelHudWidget",
    javaName := "org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget",
    super := "BasicHud",
    interfaces := #["PaintableInterface"],
    isInterface := false,
    fields := #[("level", (JV.int 0)), ("maxlevel", (JV.int 0)), ("levelString", JV.null), ("levelNumberCharArray", JV.null), ("levelNumberTotalDigits", (JV.int 0)), ("offset", (JV.int 0)), ("primitiveLongUtil", JV.null)],
    statics := #[],
    methods := #[
        ("createHud_3", #["int", "int", "int"], true, m_createHud_3), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("update_0", #[], false, m_update_0), 
        ("setLevel_1", #["int"], false, m_setLevel_1), 
        ("nextLevel_0", #[], false, m_nextLevel_0), 
        ("previousLevel_0", #[], false, m_previousLevel_0), 
        ("isComplete_0", #[], false, m_isComplete_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_3", #["int", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LevelHudWidget


