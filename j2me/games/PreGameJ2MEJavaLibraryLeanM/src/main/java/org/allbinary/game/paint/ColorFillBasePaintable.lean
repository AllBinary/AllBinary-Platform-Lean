-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ColorFillBasePaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    let _ := (<- JR.call this "setColor_1" #[(<- JR.call (<- JR.call this "getBasicColorP_0" #[]) "intValue_0" #[])])
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_getColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "colorP"))


def m_setColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_color : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "colorP" (JR.asI l_color)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "ColorFillBasePaintable",
    javaName := "org.allbinary.game.paint.ColorFillBasePaintable",
    super := "Paintable",
    interfaces := #["ColorCompositeInterface"],
    isInterface := false,
    fields := #[("basicColor", JV.null), ("colorP", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("getColor_0", #[], false, m_getColor_0), 
        ("setColor_1", #["int"], false, m_setColor_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["BasicColor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ColorFillBasePaintable


