-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_EndGamePaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "gameCanvas") "paintGameOver_1" #[l_graphics])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "gameCanvas" l_gameCanvas
    pure this

initialize JR.registerClass {
    name := "EndGamePaintable",
    javaName := "org.allbinary.game.displayable.canvas.EndGamePaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_EndGamePaintable


