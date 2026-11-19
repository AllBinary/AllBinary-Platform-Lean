-- Generated Code Do Not Modify
-- package org.allbinary.animation.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LineAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "newLine" (<- JR.newArray "I" 2 #[(JV.int 2), (JV.int 2)])
    JR.setField this "tempLine" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY")
    JR.setField this "line" (<- JR.newArray "I" 2 #[(JV.int 2), (JV.int 2)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 0)) (JV.int 0) l_x
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 0)) (JV.int 1) l_y
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 1)) (JV.int 0) l_x
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 1)) (JV.int 1) l_y
    JR.setField this "tempLine" (<- JR.getField this "line")
    JR.setField this "line" (<- JR.getField this "newLine")
    JR.setField this "newLine" (<- JR.getField this "tempLine")
    pure JV.null


def m_setPosition_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 0)) (JV.int 0) (<- JR.aget (<- JR.aget (<- JR.getField this "line") (JV.int 1)) (JV.int 0))
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 0)) (JV.int 1) (<- JR.aget (<- JR.aget (<- JR.getField this "line") (JV.int 1)) (JV.int 1))
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 1)) (JV.int 0) l_x
    JR.aset (<- JR.aget (<- JR.getField this "newLine") (JV.int 1)) (JV.int 1) l_y
    JR.setField this "tempLine" (<- JR.getField this "line")
    JR.setField this "line" (<- JR.getField this "newLine")
    JR.setField this "newLine" (<- JR.getField this "tempLine")
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_currentLine : JV := (<- JR.getField this "line")
    let _ := (<- JR.call (<- JR.getInherited this "LineAnimation" "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[]), (<- JR.callInherited this "LineAnimation" "getColor_0" #[])])
    let _ := (<- JR.call l_graphics "drawLine_4" #[(<- JR.aget (<- JR.aget l_currentLine (JV.int 0)) (JV.int 0)), (<- JR.aget (<- JR.aget l_currentLine (JV.int 0)) (JV.int 1)), (<- JR.aget (<- JR.aget l_currentLine (JV.int 1)) (JV.int 0)), (<- JR.aget (<- JR.aget l_currentLine (JV.int 1)) (JV.int 1))])
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "Animation" this "getBasicColorP_0" #[])


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "Animation" this "setBasicColorP_1" #[l_basicColor])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Animation" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "LineAnimation",
    javaName := "org.allbinary.animation.vector.LineAnimation",
    super := "Animation",
    interfaces := #["ColorCompositeInterface", "PositionInterface"],
    isInterface := false,
    fields := #[("newLine", JV.null), ("tempLine", JV.null), ("line", JV.null)],
    statics := #[],
    methods := #[
        ("init_2", #["int", "int"], false, m_init_2), 
        ("setPosition_3", #["int", "int", "int"], false, m_setPosition_3), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("jinit_1", #["BasicColor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LineAnimation


