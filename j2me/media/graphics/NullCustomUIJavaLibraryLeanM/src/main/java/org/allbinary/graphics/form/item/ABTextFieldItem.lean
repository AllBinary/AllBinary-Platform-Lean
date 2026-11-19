-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABTextFieldItem

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getLabel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_setLabel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    pure JV.null


def m_getString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_setString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    pure JV.null


def m_setFocus_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.arg jargs 0)
    pure JV.null


def m_getFontHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "font") "getHeight_0" #[]))


def m_setBackgroundBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    pure JV.null


def m_setForegroundBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_10 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_visitor : JV := (JR.arg jargs 1)
    let mut l_label : JV := (JR.arg jargs 2)
    let mut l_value : JV := (JR.arg jargs 3)
    let mut l_maxSize : JV := (JR.asI (JR.arg jargs 4))
    let mut l_layout : JV := (JR.asI (JR.arg jargs 5))
    let mut l_altText : JV := (JR.arg jargs 6)
    let mut l_font : JV := (JR.arg jargs 7)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 8)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 9)
    let _ <- JR.superInit "ABTextItem" this #[l_label, l_layout, l_altText, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    JR.setField this "font" l_font
    pure this

initialize JR.registerClass {
    name := "ABTextFieldItem",
    javaName := "org.allbinary.graphics.form.item.ABTextFieldItem",
    super := "ABTextItem",
    interfaces := #[],
    isInterface := false,
    fields := #[("font", JV.null)],
    statics := #[],
    methods := #[
        ("getLabel_0", #[], false, m_getLabel_0), 
        ("setLabel_1", #["String"], false, m_setLabel_1), 
        ("getString_0", #[], false, m_getString_0), 
        ("setString_1", #["String"], false, m_setString_1), 
        ("setFocus_1", #["boolean"], false, m_setFocus_1), 
        ("getFontHeight_0", #[], false, m_getFontHeight_0), 
        ("setBackgroundBasicColorP_1", #["BasicColor"], false, m_setBackgroundBasicColorP_1), 
        ("setForegroundBasicColorP_1", #["BasicColor"], false, m_setForegroundBasicColorP_1), 
        ("jinit_10", #["Canvas", "Visitor", "String", "String", "int", "int", "String", "Font", "BasicColor", "BasicColor"], false, jinit_10)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABTextFieldItem


