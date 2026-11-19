-- Generated Code Do Not Modify
-- package org.allbinary.animation.text
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomTextAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "fontDebugFactory" (<- JR.callStatic "FontDebugFactory" "getInstance_0" #[])
    JR.setField this "lastText" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "INIT_STRING")
    JR.setField this "hasChanged" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "CustomTextAnimation" "myFontProcessor") "process_1" #[l_graphics])
    let mut l_existingFont : JV := (<- JR.call l_graphics "getFont_0" #[])
    let _ := (<- JR.call (<- JR.getField this "fontDebugFactory") "setFont_2" #[(<- JR.getField this "font"), l_graphics])
    let _ := (<- JR.callSuper "TextAnimation" this "paintXYNoUpdate_3" #[l_graphics, l_x, l_y])
    let _ := (<- JR.call (<- JR.getField this "fontDebugFactory") "setFont_2" #[l_existingFont, l_graphics])
    pure JV.null


def m_setScale_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleX : JV := (JR.asF (JR.arg jargs 0))
    let mut l_scaleY : JV := (JR.asF (JR.arg jargs 1))
    if JR.truth (<- JR.ne l_scaleX l_scaleY) then
        throw (<- JR.new "RuntimeException" #[])
    JR.setField this "hasChanged" (JV.bool true)
    JR.setField this "font" (<- JR.callStatic "Font" "getFont_3" #[(<- JR.getStatic "Font" "FACE_SYSTEM"), (<- JR.getStatic "Font" "STYLE_PLAIN"), (JR.toI ((<- JR.mul (JR.toF (<- JR.getField this "fontSize")) l_scaleX)))])
    pure JV.null


def m_setTextWithOnMeasure_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_textChangeListener : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "TextAnimation" this "setTextWithOnMeasure_2" #[l_text, l_textChangeListener])
    pure JV.null


def m_setText_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne (<- JR.getField this "lastText") l_text) then
        JR.setField this "hasChanged" (JV.bool true)
        JR.setField this "lastText" l_text
        let _ := (<- JR.callSuper "TextAnimation" this "setText_1" #[l_text])
        pure ()
    pure JV.null


def m_getText_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "lastText")


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.getField this "hasChanged") then
        JR.setField this "textWidth" (JR.asI (<- JR.call (<- JR.getField this "font") "stringWidth_1" #[(<- JR.aget (<- JR.getInherited this "CustomTextAnimation" "textArrayP") (JV.int 0))]))
        JR.setField this "hasChanged" (JV.bool false)
        pure ()
    return (JR.asI (<- JR.getField this "textWidth"))


def m_getFontHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "font") "getHeight_0" #[]))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_fontSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "TextAnimation" this #[l_text, l_animationBehavior]
    let _ <- jfields this
    JR.setField this "fontSize" (JR.asI l_fontSize)
    JR.setField this "font" (<- JR.callStatic "Font" "getFont_3" #[(<- JR.getStatic "Font" "FACE_SYSTEM"), (<- JR.getStatic "Font" "STYLE_PLAIN"), l_fontSize])
    pure this

initialize JR.registerClass {
    name := "CustomTextAnimation",
    javaName := "org.allbinary.animation.text.CustomTextAnimation",
    super := "TextAnimation",
    interfaces := #["TextInterface"],
    isInterface := false,
    fields := #[("fontDebugFactory", JV.null), ("fontSize", (JV.int 0)), ("font", JV.null), ("lastText", JV.null), ("hasChanged", (JV.bool false)), ("textWidth", (JV.int 0))],
    statics := #[],
    methods := #[
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("setScale_2", #["float", "float"], false, m_setScale_2), 
        ("setTextWithOnMeasure_2", #["String", "TextChangeListener"], false, m_setTextWithOnMeasure_2), 
        ("setText_1", #["String"], false, m_setText_1), 
        ("getText_0", #[], false, m_getText_0), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getFontHeight_0", #[], false, m_getFontHeight_0), 
        ("jinit_3", #["String", "int", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomTextAnimation


