-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomTextBox

def jfields (this : JV) : JM JV := do
    JR.setField this "inputFactory" (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_submit_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onEventRaw_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_repeated : JV := (JR.arg jargs 2)
    let _ := (<- JR.call (<- JR.getInherited this "CustomTextBox" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "CustomTextBox" "commonStrings") "START")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (JV.str "onEvent")])
    let _ := (<- JR.call this "keyPressedByDevice_2" #[l_keyCode, l_deviceId])
    pure JV.null


def m_keyPressed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "keyPressedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyReleased_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "keyReleasedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyRepeated_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callInherited this "CustomTextBox" "keyRepeatedByDevice_2" #[l_keyCode, (JV.int 0)])
    pure JV.null


def m_keyPressedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    try
        let _ := (<- JR.call (<- JR.getInherited this "CustomTextBox" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "CustomTextBox" "gameInputStrings") "KEY_PRESSED")])
        let mut l_platformKeyFactory : JV := (<- JR.callStatic "PlatformKeyFactory" "getInstance_0" #[])
        let mut l_input : JV := (<- JR.call (<- JR.getField this "inputFactory") "getInstanceById_1" #[l_keyCode])
        if JR.truth (<- JR.call l_platformKeyFactory "isSubmission_1" #[l_input]) then
            let _ := (<- JR.call this "submit_0" #[])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "textFieldItem") "keyPressed_1" #[l_keyCode])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "CustomTextBox" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "CustomTextBox" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "CustomTextBox" "gameInputStrings") "KEY_PRESSED"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_keyReleasedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getInherited this "CustomTextBox" "backgroundColor")])
    let _ := (<- JR.call l_graphics "fillRect_4" #[(JV.int 0), (JV.int 0), (<- JR.call (<- JR.getInherited this "CustomTextBox" "displayInfo") "getLastWidth_0" #[]), (<- JR.call (<- JR.getInherited this "CustomTextBox" "displayInfo") "getLastHeight_0" #[])])
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getInherited this "CustomTextBox" "foregroundColor")])
    if JR.truth (JR.not (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[])) then
        let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.callInherited this "CustomTextBox" "getTitle_0" #[]), (JV.int 8), (JV.int 1), (JV.int 0)])
        pure ()
    let _ := (<- JR.call this "paintXY_3" #[l_graphics, (JV.int 8), (<- JR.add (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "getHeight_0" #[]) (JV.int 2))])
    let _ := (<- JR.callSuper "GameCommandCanvas" this "paint_1" #[l_graphics])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "textFieldItem") "paintXY_3" #[l_graphics, l_x, l_y])
    pure JV.null


def m_getTextFieldItem_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "textFieldItem")


def jinit_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_label : JV := (JR.arg jargs 1)
    let mut l_text : JV := (JR.arg jargs 2)
    let mut l_maxSize : JV := (JR.asI (JR.arg jargs 3))
    let mut l_constraints : JV := (JR.asI (JR.arg jargs 4))
    let mut l_font : JV := (JR.arg jargs 5)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 6)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 7)
    let _ <- JR.superInit "GameCommandCanvas" this #[l_cmdListener, l_label, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    let mut l_textFieldItem : JV := (<- JR.new "ABTextFieldItem" #[this, (<- JR.new "TextItemVisitor" #[]), (<- JR.getField l_stringUtil "EMPTY_STRING"), (<- JR.getField l_stringUtil "EMPTY_STRING"), l_maxSize, (JV.int 0), (<- JR.getField l_stringUtil "EMPTY_STRING"), l_font, l_backgroundBasicColor, l_foregroundBasicColor])
    let _ := (<- JR.call l_textFieldItem "setString_1" #[l_text])
    JR.setField this "textFieldItem" l_textFieldItem
    let _ := (<- JR.callInherited this "CustomTextBox" "setTitle_1" #[l_label])
    pure this

initialize JR.registerClass {
    name := "CustomTextBox",
    javaName := "org.allbinary.graphics.form.item.CustomTextBox",
    super := "GameCommandCanvas",
    interfaces := #["RawKeyEventListener"],
    isInterface := false,
    fields := #[("textFieldItem", JV.null), ("inputFactory", JV.null)],
    statics := #[],
    methods := #[
        ("submit_0", #[], false, m_submit_0), 
        ("onEventRaw_3", #["int", "int", "boolean"], false, m_onEventRaw_3), 
        ("keyPressed_1", #["int"], false, m_keyPressed_1), 
        ("keyReleased_1", #["int"], false, m_keyReleased_1), 
        ("keyRepeated_1", #["int"], false, m_keyRepeated_1), 
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyReleasedByDevice_2", #["int", "int"], false, m_keyReleasedByDevice_2), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("getTextFieldItem_0", #[], false, m_getTextFieldItem_0), 
        ("jinit_8", #["CommandListener", "String", "String", "int", "int", "Font", "BasicColor", "BasicColor"], false, jinit_8)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomTextBox


