-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresCanvasInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onPressGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "PlayerGameInput" this "onPressGameKeyEvent_1" #[l_gameKeyEvent])
    let _ := (<- JR.callInherited this "HighScoresCanvasInputProcessor" "update_0" #[])
    pure JV.null


def m_onDownGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "PlayerGameInput" this "onDownGameKeyEvent_1" #[l_gameKeyEvent])
    let _ := (<- JR.callInherited this "HighScoresCanvasInputProcessor" "update_0" #[])
    pure JV.null


def m_onUpGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "PlayerGameInput" this "onUpGameKeyEvent_1" #[l_gameKeyEvent])
    let _ := (<- JR.callInherited this "HighScoresCanvasInputProcessor" "update_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_getHighScoresCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "highScoresCanvas")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "PlayerGameInput" this #[(<- JR.new "BasicArrayListD" #[]), (<- JR.new "BasicArrayListD" #[]), (JV.int (-1))]
    let _ <- jfields this
    JR.setField this "highScoresCanvas" l_highScoresCanvas
    pure this

initialize JR.registerClass {
    name := "HighScoresCanvasInputProcessor",
    javaName := "org.allbinary.game.score.HighScoresCanvasInputProcessor",
    super := "PlayerGameInput",
    interfaces := #[],
    isInterface := false,
    fields := #[("highScoresCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("onPressGameKeyEvent_1", #["GameKeyEvent"], false, m_onPressGameKeyEvent_1), 
        ("onDownGameKeyEvent_1", #["GameKeyEvent"], false, m_onDownGameKeyEvent_1), 
        ("onUpGameKeyEvent_1", #["GameKeyEvent"], false, m_onUpGameKeyEvent_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("getHighScoresCanvas_0", #[], false, m_getHighScoresCanvas_0), 
        ("jinit_1", #["HighScoresCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresCanvasInputProcessor


