-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABTextItem

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_keyPressed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_paintUnselected_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_getLabelStringComponent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ABStringComponent" "NULL_STRING_COMPONENT")


def m_getMinimumWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "CustomCustomItem" this "getMinimumWidth_0" #[]))


def m_getMinimumHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "CustomCustomItem" this "getMinimumHeight_0" #[]))


def m_getLabel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "CustomCustomItem" this "getLabel_0" #[])


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "CustomCustomItem" this "paintXY_3" #[l_graphics, l_x, l_y])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_layout : JV := (JR.asI (JR.arg jargs 1))
    let mut l_altText : JV := (JR.arg jargs 2)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 3)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "CustomCustomItem" this #[l_label, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABTextItem",
    javaName := "org.allbinary.graphics.form.item.ABTextItem",
    super := "CustomCustomItem",
    interfaces := #["ABCustomItemInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("keyPressed_1", #["int"], false, m_keyPressed_1), 
        ("paintUnselected_3", #["Graphics", "int", "int"], false, m_paintUnselected_3), 
        ("getLabelStringComponent_0", #[], false, m_getLabelStringComponent_0), 
        ("getMinimumWidth_0", #[], false, m_getMinimumWidth_0), 
        ("getMinimumHeight_0", #[], false, m_getMinimumHeight_0), 
        ("getLabel_0", #[], false, m_getLabel_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_5", #["String", "int", "String", "BasicColor", "BasicColor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABTextItem


