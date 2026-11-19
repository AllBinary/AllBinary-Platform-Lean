-- Generated Code Do Not Modify
-- package org.allbinary.animation.text
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomTextBoxIndexedAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_abToGBUtil : JV := (<- JR.callStatic "ABToGBUtil" "getInstance_0" #[])
    let mut l_abCanvas : JV := (<- JR.getField l_abToGBUtil "abCanvas")
    let mut l_font : JV := (<- JR.callStatic "Font" "getFont_3" #[(<- JR.getStatic "Font" "FACE_SYSTEM"), (<- JR.getStatic "Font" "STYLE_PLAIN"), (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight")])
    let mut l_customTextBox : JV := (<- JR.new "CustomTextBox2" #[(<- JR.call l_abCanvas "getCustomCommandListener_0" #[]), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField this "maxLength"), (<- JR.getStatic "TextField" "ANY"), l_font, (<- JR.call (<- JR.call l_abCanvas "getLayerManager_0" #[]) "getBackgroundBasicColor_0" #[]), (<- JR.call (<- JR.call l_abCanvas "getLayerManager_0" #[]) "getForegroundBasicColor_0" #[])])
    return (<- JR.new "CustomTextBoxIndexedAnimation" #[l_customTextBox])


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    let mut l_fontSize : JV := (JR.asI (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight"))
    JR.setField this "scaleProperties" l_scaleProperties
    if JR.truth (<- JR.lt (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight") (JV.int 6)) then
        JR.setField (<- JR.getField this "scaleProperties") "scaleHeight" (JR.asI l_fontSize)
        pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fontSize : JV := (JR.asI (JR.arg jargs 0))
    let mut l_maxLength : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "scaleProperties" (<- JR.new "ScaleProperties" #[])
    JR.setField (<- JR.getField this "scaleProperties") "scaleHeight" (JR.asI l_fontSize)
    JR.setField this "maxLength" (JR.asI l_maxLength)
    pure this

initialize JR.registerClass {
    name := "CustomTextBoxIndexedAnimationFactory",
    javaName := "org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("scaleProperties", JV.null), ("maxLength", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_2", #["int", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomTextBoxIndexedAnimationFactory


