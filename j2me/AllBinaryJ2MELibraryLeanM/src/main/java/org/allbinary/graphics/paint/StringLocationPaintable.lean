-- Generated Code Do Not Modify
-- package org.allbinary.graphics.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StringLocationPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "value"), l_x, l_y, (JV.int 0)])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "LocationPaintable" this #[]
    let _ <- jfields this
    JR.setField this "value" l_value
    pure this

initialize JR.registerClass {
    name := "StringLocationPaintable",
    javaName := "org.allbinary.graphics.paint.StringLocationPaintable",
    super := "LocationPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("value", JV.null)],
    statics := #[],
    methods := #[
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StringLocationPaintable


