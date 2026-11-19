-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HorizontalItemIndexDx

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getDx_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.call (<- JR.getField this "scrollCurrentSelectionForm") "getXHorizontalForm_4" #[l_index, l_item, l_dx, l_dy]))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scrollCurrentSelectionForm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ItemIndexDx" this #[]
    let _ <- jfields this
    JR.setField this "scrollCurrentSelectionForm" l_scrollCurrentSelectionForm
    pure this

initialize JR.registerClass {
    name := "HorizontalItemIndexDx",
    javaName := "org.allbinary.graphics.form.HorizontalItemIndexDx",
    super := "ItemIndexDx",
    interfaces := #[],
    isInterface := false,
    fields := #[("scrollCurrentSelectionForm", JV.null)],
    statics := #[],
    methods := #[
        ("getDx_4", #["int", "ABCustomItem", "int", "int"], false, m_getDx_4), 
        ("jinit_1", #["ScrollCurrentSelectionForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HorizontalItemIndexDx


