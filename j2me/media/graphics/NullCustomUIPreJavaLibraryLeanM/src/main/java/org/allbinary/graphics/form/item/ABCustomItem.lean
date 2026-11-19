-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABCustomItem

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ABCustomItem" "NULL_CUSTOM_ITEM" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "ABCustomItem" "NULL_CUSTOM_ITEM") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "ABCustomItem" "NULL_CUSTOM_ITEM" (<- JR.new "ABCustomItem" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
        pure ()
    return (<- JR.getStatic "ABCustomItem" "NULL_CUSTOM_ITEM")


def m_setOwner_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_owner : JV := (JR.arg jargs 0)
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_paintUnselected_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_isFocusable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getLabel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_setLabel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    pure JV.null


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_setHeight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_height : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_getValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (JV.float 0.0))


def m_setValue_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asF (JR.arg jargs 0))
    pure JV.null


def m_getMinimumWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getMinimumHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_preMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABCustomItem",
    javaName := "org.allbinary.graphics.form.item.ABCustomItem",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_CUSTOM_ITEM", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("setOwner_1", #["Screen"], false, m_setOwner_1), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintUnselected_3", #["Graphics", "int", "int"], false, m_paintUnselected_3), 
        ("isFocusable_0", #[], false, m_isFocusable_0), 
        ("getLabel_0", #[], false, m_getLabel_0), 
        ("setLabel_1", #["String"], false, m_setLabel_1), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("setHeight_1", #["int"], false, m_setHeight_1), 
        ("getValue_0", #[], false, m_getValue_0), 
        ("setValue_1", #["float"], false, m_setValue_1), 
        ("getMinimumWidth_0", #[], false, m_getMinimumWidth_0), 
        ("getMinimumHeight_0", #[], false, m_getMinimumHeight_0), 
        ("preMeasurement_1", #["Graphics"], false, m_preMeasurement_1), 
        ("jinit_3", #["String", "BasicColor", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABCustomItem


