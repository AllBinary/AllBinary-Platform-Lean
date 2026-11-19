-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FormPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "form") "paint_1" #[l_graphics])
    pure JV.null


def m_getForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "form")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_form : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "form" l_form
    pure this

initialize JR.registerClass {
    name := "FormPaintable",
    javaName := "org.allbinary.graphics.form.FormPaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("form", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("getForm_0", #[], false, m_getForm_0), 
        ("jinit_1", #["PaintableForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FormPaintable


