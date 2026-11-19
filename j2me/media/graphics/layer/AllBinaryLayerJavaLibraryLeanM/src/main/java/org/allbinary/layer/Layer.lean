-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Layer

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "z" (JR.asI (JV.int 3))
    JR.setField this "visible" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Layer" "ID" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 0)])
    pure JV.null


def m_setPosition_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    JR.setField this "x" (JR.asI l_x)
    JR.setField this "y" (JR.asI l_y)
    JR.setField this "z" (JR.asI l_z)
    pure JV.null


def m_moveDXY_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "x" (JR.castLike (<- JR.getField this "x") (<- JR.add (<- JR.getField this "x") l_dx))
    JR.setField this "y" (JR.castLike (<- JR.getField this "y") (<- JR.add (<- JR.getField this "y") l_dy))
    pure JV.null


def m_moveDXYZ_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dz : JV := (JR.asI (JR.arg jargs 2))
    JR.setField this "x" (JR.castLike (<- JR.getField this "x") (<- JR.add (<- JR.getField this "x") l_dx))
    JR.setField this "y" (JR.castLike (<- JR.getField this "y") (<- JR.add (<- JR.getField this "y") l_dy))
    JR.setField this "z" (JR.castLike (<- JR.getField this "z") (<- JR.add (<- JR.getField this "z") l_dz))
    pure JV.null


def m_getXP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "x"))


def m_getYP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "y"))


def m_getZP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "z"))


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "width"))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "height"))


def m_getDepth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JV.long 0))


def m_setVisible_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_visible : JV := (JR.arg jargs 0)
    JR.setField this "visible" l_visible
    pure JV.null


def m_isVisible_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "visible")


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let mut l_canvasStrings : JV := (<- JR.callStatic "CanvasStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField l_commonStrings "NOT_IMPLEMENTED"), this, (<- JR.getField l_canvasStrings "PAINT")])
    pure JV.null


def m_setLayerWidth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.lt l_width (JV.int 0)) then
        throw (<- JR.new "IllegalArgumentException" #[])
    JR.setField this "width" (JR.asI l_width)
    pure JV.null


def m_setLayerHeight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_height : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.lt l_height (JV.int 0)) then
        throw (<- JR.new "IllegalArgumentException" #[])
    JR.setField this "height" (JR.asI l_height)
    pure JV.null


def m_toStringAppend_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setLayerWidth_1" #[l_width])
    let _ := (<- JR.call this "setLayerHeight_1" #[l_height])
    pure this

initialize JR.registerClass {
    name := "Layer",
    javaName := "org.allbinary.layer.Layer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("x", (JV.int 0)), ("y", (JV.int 0)), ("z", (JV.int 0)), ("width", (JV.int 0)), ("height", (JV.int 0)), ("visible", (JV.bool false))],
    statics := #[("ID", JV.null)],
    methods := #[
        ("setPosition_3", #["int", "int", "int"], false, m_setPosition_3), 
        ("moveDXY_2", #["int", "int"], false, m_moveDXY_2), 
        ("moveDXYZ_3", #["int", "int", "int"], false, m_moveDXYZ_3), 
        ("getXP_0", #[], false, m_getXP_0), 
        ("getYP_0", #[], false, m_getYP_0), 
        ("getZP_0", #[], false, m_getZP_0), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("getDepth_0", #[], false, m_getDepth_0), 
        ("setVisible_1", #["boolean"], false, m_setVisible_1), 
        ("isVisible_0", #[], false, m_isVisible_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("setLayerWidth_1", #["int"], false, m_setLayerWidth_1), 
        ("setLayerHeight_1", #["int"], false, m_setLayerHeight_1), 
        ("toStringAppend_1", #["StringMaker"], false, m_toStringAppend_1), 
        ("jinit_2", #["int", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Layer


