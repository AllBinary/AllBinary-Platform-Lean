-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ItemPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_currentIndex : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ItemPaintable",
    javaName := "org.allbinary.graphics.form.ItemPaintable",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("paint_4", #["Graphics", "int", "int", "int"], false, m_paint_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ItemPaintable


