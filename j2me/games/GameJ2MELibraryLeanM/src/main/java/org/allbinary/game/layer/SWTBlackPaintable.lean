-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SWTBlackPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "BLACK" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.getField this "BLACK")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SWTBlackPaintable",
    javaName := "org.allbinary.game.layer.SWTBlackPaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicSetColorUtil", JV.null), ("BLACK", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SWTBlackPaintable


