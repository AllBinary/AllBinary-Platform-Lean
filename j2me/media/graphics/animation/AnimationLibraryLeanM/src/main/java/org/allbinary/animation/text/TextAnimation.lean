-- Generated Code Do Not Modify
-- package org.allbinary.animation.text
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TextAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "textArrayP" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "ONE_EMPTY_STRING_ARRAY")
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    JR.setField this "fontHeight" (JR.asI (JV.int 0))
    JR.setField this "offsetY" (JR.asI (JV.int 0))
    JR.setField this "textChangeListener" (<- JR.callStatic "TextChangeListener" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "fontHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    let mut l_adjustedFontHeight : JV := (JR.asI (JR.toI (JR.neg ((<- JR.mul (JR.toD (<- JR.getField this "fontHeight")) (JV.double 2.00))))))
    JR.setField this "offsetY" (JR.asI (<- JR.cond (<- JR.call (<- JR.callStatic "SWTJOGLProcessor" "getInstance_0" #[]) "isJOGL_0" #[]) (do pure l_adjustedFontHeight) (do pure (JV.int 0))))
    let _ := (<- JR.call (<- JR.getField this "textChangeListener") "onMeasure_0" #[])
    JR.setField this "textChangeListener" (<- JR.callStatic "TextChangeListener" "getInstance_0" #[])
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call this "paintXYNoUpdate_3" #[l_graphics, l_x, l_y])
    pure JV.null


def m_paintXYNoUpdate_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "TextAnimation" "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.callInherited this "TextAnimation" "getBasicColorP_0" #[]), (<- JR.callInherited this "TextAnimation" "getColor_0" #[])])
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "textArrayP")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.aget (<- JR.getField this "textArrayP") l_index), l_x, (<- JR.add (<- JR.add l_y (<- JR.getField this "offsetY")) ((<- JR.mul l_index (<- JR.getField this "fontHeight")))), (<- JR.getField this "anchor")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_setTextWithOnMeasure_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_textChangeListener : JV := (JR.arg jargs 1)
    let _ := (<- JR.call this "setText_1" #[l_text])
    JR.setField this "textChangeListener" l_textChangeListener
    pure JV.null


def m_setText_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    if JR.truth (<- JR.gt (<- JR.call l_text "length_0" #[]) (JV.int 0)) then
        let mut l_index : JV := (JR.asI (JV.int 0))
        let mut l_startIndex : JV := (JR.asI (JV.int 0))
        let mut l_endIndex : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_startIndex := (JR.asI l_index)
            l_index := (JR.asI (<- JR.call l_text "indexOf_2" #[(JV.char 10), l_startIndex]))
            l_endIndex := (JR.asI l_index)
            if JR.truth (<- JR.lt l_index (JV.int 0)) then
                l_endIndex := (JR.asI (<- JR.call l_text "length_0" #[]))
                pure ()
            let _ := (<- JR.call l_list "add_1" #[(<- JR.call l_text "substring_2" #[l_startIndex, l_endIndex])])
            if JR.truth (<- JR.lt l_index (JV.int 0)) then
                break
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    if JR.truth (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 0)) then
        let mut l_textArray : JV := (<- JR.newArray "L" 1 #[(<- JR.call l_list "size_0" #[])])
        let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                JR.aset l_textArray l_index (<- JR.call l_list "get_1" #[l_index])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        JR.setField this "textArrayP" l_textArray
        pure ()
    else
        JR.setField this "textArrayP" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "ONE_EMPTY_STRING_ARRAY")
        pure ()
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_getTextArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "textArrayP")


def m_getFontHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "fontHeight"))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "setText_1" #[l_text])
    pure this

initialize JR.registerClass {
    name := "TextAnimation",
    javaName := "org.allbinary.animation.text.TextAnimation",
    super := "IndexedAnimation",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("textArrayP", JV.null), ("anchor", (JV.int 0)), ("fontHeight", (JV.int 0)), ("offsetY", (JV.int 0)), ("textChangeListener", JV.null)],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintXYNoUpdate_3", #["Graphics", "int", "int"], false, m_paintXYNoUpdate_3), 
        ("setTextWithOnMeasure_2", #["String", "TextChangeListener"], false, m_setTextWithOnMeasure_2), 
        ("setText_1", #["String"], false, m_setText_1), 
        ("getTextArray_0", #[], false, m_getTextArray_0), 
        ("getFontHeight_0", #[], false, m_getFontHeight_0), 
        ("jinit_2", #["String", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TextAnimation


