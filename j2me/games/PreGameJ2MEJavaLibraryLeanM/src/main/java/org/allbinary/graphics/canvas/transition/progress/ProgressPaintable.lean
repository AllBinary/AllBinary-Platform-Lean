-- Generated Code Do Not Modify
-- package org.allbinary.graphics.canvas.transition.progress
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ProgressPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "progressCanvas") "paint2_1" #[l_graphics])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_progressCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "progressCanvas" l_progressCanvas
    pure this

initialize JR.registerClass {
    name := "ProgressPaintable",
    javaName := "org.allbinary.graphics.canvas.transition.progress.ProgressPaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("progressCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["ProgressCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ProgressPaintable


