-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScrollSelectionFormHorizontalDx

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getDx_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.call (<- JR.getField this "scrollSelectionForm") "getSelectedIndexForPointHorizontalDx_4" #[l_index, l_item, l_dx, l_dy]))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scrollSelectionForm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ItemIndexDx" this #[]
    let _ <- jfields this
    JR.setField this "scrollSelectionForm" l_scrollSelectionForm
    pure this

initialize JR.registerClass {
    name := "ScrollSelectionFormHorizontalDx",
    javaName := "org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx",
    super := "ItemIndexDx",
    interfaces := #[],
    isInterface := false,
    fields := #[("scrollSelectionForm", JV.null)],
    statics := #[],
    methods := #[
        ("getDx_4", #["int", "ABCustomItem", "int", "int"], false, m_getDx_4), 
        ("jinit_1", #["ScrollSelectionForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScrollSelectionFormHorizontalDx


