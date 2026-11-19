-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScrollSelectionFormVerticalPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    return (JR.asI (<- JR.call (<- JR.getField this "scrollSelectionForm") "paintItemVertical_5" #[l_graphics, l_index, l_item, l_dx, l_dy]))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scrollSelectionForm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ItemIndexPaintable" this #[]
    let _ <- jfields this
    JR.setField this "scrollSelectionForm" l_scrollSelectionForm
    pure this

initialize JR.registerClass {
    name := "ScrollSelectionFormVerticalPaintable",
    javaName := "org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable",
    super := "ItemIndexPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("scrollSelectionForm", JV.null)],
    statics := #[],
    methods := #[
        ("paint_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paint_5), 
        ("jinit_1", #["ScrollSelectionForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScrollSelectionFormVerticalPaintable


