-- Generated Code Do Not Modify
-- package org.allbinary.animation.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CircleAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "TOTAL_ANGLE" (JR.asI (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "CircleAnimation" "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[]), (<- JR.callInherited this "CircleAnimation" "getColor_0" #[])])
    let _ := (<- JR.call l_graphics "drawArc_6" #[l_x, l_y, (<- JR.getField this "width"), (<- JR.getField this "height"), (JV.int 0), (<- JR.getField this "TOTAL_ANGLE")])
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "Animation" this "getBasicColorP_0" #[])


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "Animation" this "setBasicColorP_1" #[l_basicColor])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Animation" this #[]
    let _ <- jfields this
    JR.setField this "width" (JR.asI l_width)
    JR.setField this "height" (JR.asI l_height)
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "CircleAnimation",
    javaName := "org.allbinary.animation.vector.CircleAnimation",
    super := "Animation",
    interfaces := #["ColorCompositeInterface"],
    isInterface := false,
    fields := #[("TOTAL_ANGLE", (JV.int 0)), ("width", (JV.int 0)), ("height", (JV.int 0))],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("jinit_3", #["int", "int", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CircleAnimation


