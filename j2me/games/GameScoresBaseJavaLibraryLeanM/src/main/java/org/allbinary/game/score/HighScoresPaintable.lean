-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")
    JR.setField this "highScores" (<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "charHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_colorChangeEvent : JV := l_eventObject
    JR.setField this "basicColor" (<- JR.call l_colorChangeEvent "getBasicColorP_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_width : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]))
    let mut l_height : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHeight_0" #[]))
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.call this "getBasicColorP_0" #[]) "intValue_0" #[])])
    let mut l_heading : JV := (<- JR.call (<- JR.getField this "highScores") "getHeading_0" #[])
    let mut l_topScoresWidth : JV := (JR.asI ((<- JR.shr (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[l_heading]) (JV.int 1))))
    let mut l_charHeight : JV := (JR.asI (<- JR.getField this "charHeight"))
    let _ := (<- JR.call l_graphics "drawString_4" #[l_heading, (<- JR.sub ((<- JR.shr l_width (JV.int 1))) l_topScoresWidth), l_charHeight, (<- JR.getField this "anchor")])
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.call (<- JR.getField this "highScores") "getColumnOneHeading_0" #[]), (JV.int 10), (<- JR.mul l_charHeight (JV.int 3)), (<- JR.getField this "anchor")])
    let mut l_columnTwoHeading : JV := (<- JR.call (<- JR.getField this "highScores") "getColumnTwoHeading_0" #[])
    let mut l_columnTwoHeadingWidth : JV := (JR.asI (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[l_columnTwoHeading]))
    let _ := (<- JR.call l_graphics "drawString_4" #[l_columnTwoHeading, (<- JR.sub (<- JR.sub l_width (JV.int 10)) l_columnTwoHeadingWidth), (<- JR.mul l_charHeight (JV.int 3)), (<- JR.getField this "anchor")])
    let mut l_index : JV := (JR.asI (JV.int 4))
    let mut l_largestSecondColumnWidth : JV := (JR.asI l_columnTwoHeadingWidth)
    let mut l_list : JV := (<- JR.call (<- JR.getField this "highScores") "getList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_vectorIndex : JV := (JR.asI (JV.int 0))
    let mut l_highScore : JV := JV.null
    repeat
        if !(JR.truth (<- JR.cand (<- JR.lt l_vectorIndex l_size) (do pure (<- JR.lt (<- JR.mul l_charHeight l_index) (<- JR.sub l_height ((<- JR.mul l_charHeight (JV.int 2)))))))) then break
        l_highScore := (<- JR.aget (<- JR.getField l_list "objectArray") l_vectorIndex)
        let mut l_nextScoreWidth : JV := (JR.asI (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[(<- JR.call l_highScore "getScoreString_0" #[])]))
        if JR.truth (<- JR.gt l_nextScoreWidth l_largestSecondColumnWidth) then
            l_largestSecondColumnWidth := (JR.asI l_nextScoreWidth)
            pure ()
        l_vectorIndex := (JR.inc l_vectorIndex)
        pure ()
    l_vectorIndex := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.cand (<- JR.lt l_vectorIndex l_size) (do pure (<- JR.lt (<- JR.mul l_charHeight l_index) (<- JR.sub l_height ((<- JR.mul l_charHeight (JV.int 2)))))))) then break
        l_highScore := (<- JR.aget (<- JR.getField l_list "objectArray") l_vectorIndex)
        let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.call l_highScore "getName_0" #[]), (JV.int 10), (<- JR.mul l_charHeight l_index), (<- JR.getField this "anchor")])
        let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.call l_highScore "getScoreString_0" #[]), (<- JR.sub (<- JR.sub l_width (JV.int 10)) l_largestSecondColumnWidth), (<- JR.mul l_charHeight l_index), (<- JR.getField this "anchor")])
        l_index := (JR.inc l_index)
        l_vectorIndex := (JR.inc l_vectorIndex)
        pure ()
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_setHighScores_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScores : JV := (JR.arg jargs 0)
    JR.setField this "highScores" l_highScores
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoresPaintable",
    javaName := "org.allbinary.game.score.HighScoresPaintable",
    super := "Paintable",
    interfaces := #["ColorChangeListener", "UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null), ("myFontProcessor", JV.null), ("basicColor", JV.null), ("highScores", JV.null), ("anchor", (JV.int 0)), ("charHeight", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setHighScores_1", #["HighScores"], false, m_setHighScores_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresPaintable


