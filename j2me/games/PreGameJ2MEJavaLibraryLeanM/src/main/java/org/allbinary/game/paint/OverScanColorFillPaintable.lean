-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OverScanColorFillPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getInherited this "OverScanColorFillPaintable" "colorP")])
    let _ := (<- JR.call l_graphics "fillRect_4" #[(JR.neg (<- JR.call l_graphics "getClipX_0" #[])), (JR.neg (<- JR.call l_graphics "getClipY_0" #[])), (<- JR.add (<- JR.call (<- JR.getInherited this "OverScanColorFillPaintable" "displayInfoSingleton") "getLastWidth_0" #[]) ((<- JR.mul (<- JR.call l_graphics "getClipX_0" #[]) (JV.int 2)))), (<- JR.add (<- JR.call (<- JR.getInherited this "OverScanColorFillPaintable" "displayInfoSingleton") "getLastHeight_0" #[]) ((<- JR.mul (<- JR.call l_graphics "getClipY_0" #[]) (JV.int 2))))])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ColorFillPaintable" this #[l_basicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OverScanColorFillPaintable",
    javaName := "org.allbinary.game.paint.OverScanColorFillPaintable",
    super := "ColorFillPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["BasicColor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OverScanColorFillPaintable


