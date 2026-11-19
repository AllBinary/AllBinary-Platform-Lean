-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PressStartMenuPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfo" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "PRESS_START" (JV.str "Press Screen To Start")
    JR.setField this "KEY_START" (JV.str "Press or Click F2 To Begin")
    JR.setField this "MENU_START" (JV.str "Press Start From The Menu To Begin")
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "startString" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 1100)])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "beginWidth" (JR.asI ((<- JR.shr (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[(<- JR.getField this "startString")]) (JV.int 1))))
    JR.setField this "line" (JR.asI (<- JR.add ((<- JR.mul (JV.int 4) (<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font]))) ((<- JR.shr (<- JR.call l_font "getHeight_0" #[]) (JV.int 1)))))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTimeTNT_0" #[]) then
        if JR.truth (<- JR.call this "isFlash_0" #[]) then
            let _ := (<- JR.call this "setFlash_1" #[(JV.bool false)])
            pure ()
        else
            let _ := (<- JR.call this "setFlash_1" #[(JV.bool true)])
            pure ()
        pure ()
    if JR.truth (<- JR.call this "isFlash_0" #[]) then
        let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
        let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "startString"), (<- JR.sub (<- JR.call (<- JR.getField this "displayInfo") "getLastHalfWidth_0" #[]) (<- JR.getField this "beginWidth")), (<- JR.sub (<- JR.call (<- JR.getField this "displayInfo") "getLastHeight_0" #[]) (<- JR.getField this "line")), (<- JR.getField this "anchor")])
        pure ()
    pure JV.null


def m_setFlash_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_flash : JV := (JR.arg jargs 0)
    JR.setField this "flash" l_flash
    pure JV.null


def m_isFlash_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "flash")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    if JR.truth (<- JR.call (<- JR.callStatic "TouchScreenFactory" "getInstance_0" #[]) "isTouch_0" #[]) then
        JR.setField this "startString" (<- JR.getField this "PRESS_START")
        pure ()
    else
        if JR.truth (<- JR.callStatic "AppletUtil" "isAppletLoader_1" #[this]) then
            JR.setField this "startString" (<- JR.getField this "KEY_START")
            pure ()
        else
            JR.setField this "startString" (<- JR.getField this "MENU_START")
            pure ()
    pure this

initialize JR.registerClass {
    name := "PressStartMenuPaintable",
    javaName := "org.allbinary.game.paint.PressStartMenuPaintable",
    super := "Paintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfo", JV.null), ("PRESS_START", JV.null), ("KEY_START", JV.null), ("MENU_START", JV.null), ("myFontProcessor", JV.null), ("startString", JV.null), ("timeDelayHelper", JV.null), ("flash", (JV.bool false)), ("anchor", (JV.int 0)), ("beginWidth", (JV.int 0)), ("line", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("setFlash_1", #["boolean"], false, m_setFlash_1), 
        ("isFlash_0", #[], false, m_isFlash_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PressStartMenuPaintable


