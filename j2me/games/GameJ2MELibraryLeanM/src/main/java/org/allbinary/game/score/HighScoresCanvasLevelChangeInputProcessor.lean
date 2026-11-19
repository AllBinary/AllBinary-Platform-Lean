-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresCanvasLevelChangeInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "INSTRUCTIONS" (JV.str "(Right = Next Track, Left = Previous Track)")
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    JR.setField this "fontHeight" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "fontHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[]) "addListener_1" #[this])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "GameKeyEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (<- JR.callInherited this "HighScoresCanvasLevelChangeInputProcessor" "getGameKeyEventList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_anyType : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let mut l_key : JV := (JR.asI (<- JR.callStatic "GameKeyEventUtil" "getKey_1" #[l_anyType]))
            if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "RIGHT")) then
                let _ := (<- JR.call (<- JR.call (<- JR.callInherited this "HighScoresCanvasLevelChangeInputProcessor" "getHighScoresCanvas_0" #[]) "getGameInfo_0" #[]) "nextGameLevel_0" #[])
                pure ()
            else
                if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "LEFT")) then
                    let _ := (<- JR.call (<- JR.call (<- JR.callInherited this "HighScoresCanvasLevelChangeInputProcessor" "getHighScoresCanvas_0" #[]) "getGameInfo_0" #[]) "previousGameLevel_0" #[])
                    pure ()
            let _ := (<- JR.call (<- JR.callInherited this "HighScoresCanvasLevelChangeInputProcessor" "getHighScoresCanvas_0" #[]) "executeUpdate_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_list "clear_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_width : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]))
    let mut l_topScoresWidth : JV := (JR.asI ((<- JR.shr (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[(<- JR.getField this "INSTRUCTIONS")]) (JV.int 1))))
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "INSTRUCTIONS"), (<- JR.sub ((<- JR.shr l_width (JV.int 1))) l_topScoresWidth), (<- JR.mul (<- JR.getField this "fontHeight") (JV.int 2)), (<- JR.getField this "anchor")])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "HighScoresCanvasInputProcessor" this #[l_highScoresCanvas]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoresCanvasLevelChangeInputProcessor",
    javaName := "org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor",
    super := "HighScoresCanvasInputProcessor",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null), ("INSTRUCTIONS", JV.null), ("myFontProcessor", JV.null), ("anchor", (JV.int 0)), ("fontHeight", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("update_0", #[], false, m_update_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["HighScoresCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresCanvasLevelChangeInputProcessor


