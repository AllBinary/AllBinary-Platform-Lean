-- Generated Code Do Not Modify
-- package org.allbinary.animation.text
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomTextBoxIndexedAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "lastText" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "INIT_STRING")
    JR.setField this "hasChanged" (JV.bool true)
    JR.setField this "textChangeListener" (<- JR.callStatic "TextChangeListener" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "customTextBox") "getTextFieldItem_0" #[]) "setForegroundBasicColorP_1" #[l_basicColor])
    pure JV.null


def m_setBackgroundBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "customTextBox") "getTextFieldItem_0" #[]) "setBackgroundBasicColorP_1" #[l_basicColor])
    pure JV.null


def m_setTextWithOnMeasure_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_textChangeListener : JV := (JR.arg jargs 1)
    let _ := (<- JR.call this "setText_1" #[l_text])
    JR.setField this "textChangeListener" l_textChangeListener
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    let _ := (<- JR.call (<- JR.getField this "textChangeListener") "onMeasure_0" #[])
    JR.setField this "textChangeListener" (<- JR.callStatic "TextChangeListener" "getInstance_0" #[])
    pure JV.null


def m_setText_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne (<- JR.getField this "lastText") l_text) then
        JR.setField this "hasChanged" (JV.bool true)
        JR.setField this "lastText" l_text
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "customTextBox") "getTextFieldItem_0" #[]) "setString_1" #[l_text])
        pure ()
    pure JV.null


def m_getText_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.getField this "customTextBox") "getTextFieldItem_0" #[]) "getString_0" #[])


def m_onEventRaw_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_repeated : JV := (JR.arg jargs 2)
    let _ := (<- JR.call (<- JR.getField this "customTextBox") "onEventRaw_3" #[l_keyCode, l_deviceId, l_repeated])
    pure JV.null


def m_getFontHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.call (<- JR.getField this "customTextBox") "getTextFieldItem_0" #[]) "getFontHeight_0" #[]))


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "customTextBox") "paintXY_3" #[l_graphics, l_x, l_y])
    pure JV.null


def m_paintThreedXYZ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "IndexedAnimation" this "getWidth_0" #[]))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_customTextBox : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "IndexedAnimation" this #[(<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])]
    let _ <- jfields this
    JR.setField this "customTextBox" l_customTextBox
    pure this

initialize JR.registerClass {
    name := "CustomTextBoxIndexedAnimation",
    javaName := "org.allbinary.animation.text.CustomTextBoxIndexedAnimation",
    super := "IndexedAnimation",
    interfaces := #["RawKeyEventListener", "UpdateMyFontInterface", "TextInterface"],
    isInterface := false,
    fields := #[("customTextBox", JV.null), ("lastText", JV.null), ("hasChanged", (JV.bool false)), ("textChangeListener", JV.null)],
    statics := #[],
    methods := #[
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("setBackgroundBasicColorP_1", #["BasicColor"], false, m_setBackgroundBasicColorP_1), 
        ("setTextWithOnMeasure_2", #["String", "TextChangeListener"], false, m_setTextWithOnMeasure_2), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("setText_1", #["String"], false, m_setText_1), 
        ("getText_0", #[], false, m_getText_0), 
        ("onEventRaw_3", #["int", "int", "boolean"], false, m_onEventRaw_3), 
        ("getFontHeight_0", #[], false, m_getFontHeight_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintThreedXYZ_4", #["Graphics", "int", "int", "int"], false, m_paintThreedXYZ_4), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("jinit_1", #["CustomTextBox"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomTextBoxIndexedAnimation


