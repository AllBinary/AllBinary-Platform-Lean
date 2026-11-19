-- Generated Code Do Not Modify
-- package org.allbinary.animation.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RectangleFilledAdjustedAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "RectangleFilledAdjustedAnimation" "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[]), (<- JR.callInherited this "RectangleFilledAdjustedAnimation" "getColor_0" #[])])
    let _ := (<- JR.callSuper "RectangleFilledAnimation" this "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "offsetX")), (<- JR.add l_y (<- JR.getField this "offsetY"))])
    pure JV.null


def m_setOffsetX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_offsetX : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "offsetX" (JR.asI l_offsetX)
    pure JV.null


def m_setOffsetY_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_offsetY : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "offsetY" (JR.asI l_offsetY)
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "RectangleFilledAnimation" this "getBasicColorP_0" #[])


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "RectangleFilledAnimation" this "setBasicColorP_1" #[l_basicColor])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_offsetX : JV := (JR.asI (JR.arg jargs 2))
    let mut l_offsetY : JV := (JR.asI (JR.arg jargs 3))
    let mut l_basicColor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "RectangleFilledAnimation" this #[l_width, l_height, l_basicColor]
    let _ <- jfields this
    JR.setField this "offsetX" (JR.asI l_offsetX)
    JR.setField this "offsetY" (JR.asI l_offsetY)
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "RectangleFilledAdjustedAnimation",
    javaName := "org.allbinary.animation.vector.RectangleFilledAdjustedAnimation",
    super := "RectangleFilledAnimation",
    interfaces := #["ColorCompositeInterface"],
    isInterface := false,
    fields := #[("offsetX", (JV.int 0)), ("offsetY", (JV.int 0))],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("setOffsetX_1", #["int"], false, m_setOffsetX_1), 
        ("setOffsetY_1", #["int"], false, m_setOffsetY_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("jinit_5", #["int", "int", "int", "int", "BasicColor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RectangleFilledAdjustedAnimation


