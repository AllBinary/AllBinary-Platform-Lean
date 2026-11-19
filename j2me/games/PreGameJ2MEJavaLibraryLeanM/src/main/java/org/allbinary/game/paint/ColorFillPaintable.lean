-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ColorFillPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getInherited this "ColorFillPaintable" "colorP")])
    let _ := (<- JR.call l_graphics "fillRect_4" #[(JV.int 0), (JV.int 0), (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]), (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHeight_0" #[])])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ColorFillBasePaintable" this #[l_basicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ColorFillPaintable",
    javaName := "org.allbinary.game.paint.ColorFillPaintable",
    super := "ColorFillBasePaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["BasicColor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ColorFillPaintable


