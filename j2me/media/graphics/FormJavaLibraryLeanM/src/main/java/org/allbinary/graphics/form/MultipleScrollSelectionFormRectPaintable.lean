-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MultipleScrollSelectionFormRectPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "multipleScrollSelectionForm") "fillRect_1" #[l_graphics])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_multipleScrollSelectionForm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "multipleScrollSelectionForm" l_multipleScrollSelectionForm
    pure this

initialize JR.registerClass {
    name := "MultipleScrollSelectionFormRectPaintable",
    javaName := "org.allbinary.graphics.form.MultipleScrollSelectionFormRectPaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("multipleScrollSelectionForm", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["MultipleScrollSelectionHorizontalForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MultipleScrollSelectionFormRectPaintable


