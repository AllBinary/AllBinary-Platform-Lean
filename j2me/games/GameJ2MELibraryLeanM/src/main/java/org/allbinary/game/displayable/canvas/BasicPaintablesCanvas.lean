-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicPaintablesCanvas

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "colorFillPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getInherited this "BasicPaintablesCanvas" "foregroundColor")])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "paintableArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "paintableArray") l_index) "paint_1" #[l_graphics])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    let _ := (<- JR.callSuper "GameCommandCanvas" this "paint_1" #[l_graphics])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_allBinaryGameLayerManager : JV := (JR.arg jargs 2)
    let mut l_paintableArray : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "GameCommandCanvas" this #[l_cmdListener, l_name, (<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (<- JR.call l_allBinaryGameLayerManager "getForegroundBasicColor_0" #[])]
    let _ <- jfields this
    JR.setField this "paintableArray" l_paintableArray
    JR.setField this "colorFillPaintable" (<- JR.call (<- JR.callStatic "ColorFillPaintableFactory" "getInstance_0" #[]) "getInstance_2" #[(<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (JV.bool false)])
    pure this

initialize JR.registerClass {
    name := "BasicPaintablesCanvas",
    javaName := "org.allbinary.game.displayable.canvas.BasicPaintablesCanvas",
    super := "GameCommandCanvas",
    interfaces := #[],
    isInterface := false,
    fields := #[("paintableArray", JV.null), ("colorFillPaintable", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_4", #["CommandListener", "String", "AllBinaryGameLayerManager", "PaintableArr"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicPaintablesCanvas


