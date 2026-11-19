-- Generated Code Do Not Modify
-- package org.allbinary.graphics.draw
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DrawVerticalStringUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "EMPTY_STRING" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    JR.setField this "offsetXArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DrawVerticalStringUtil" "instance" (<- JR.new "DrawVerticalStringUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DrawVerticalStringUtil" "instance")


def m_updateMeasurement_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let mut l_openGLFeatureUtil : JV := (<- JR.callStatic "OpenGLFeatureUtil" "getInstance_0" #[])
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "charHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "offsetY" (JR.asI (JV.int 0))
    if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
        JR.setField this "charHeight" (JR.castLike (<- JR.getField this "charHeight") (<- JR.add (<- JR.getField this "charHeight") (JV.int 1)))
        pure ()
    else
        if JR.truth (<- JR.call l_openGLFeatureUtil "isAnyThreed_0" #[]) then
            JR.setField this "charHeight" (JR.castLike (<- JR.getField this "charHeight") (<- JR.add (<- JR.getField this "charHeight") (JV.int 2)))
            if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
                pure ()
            else
                JR.setField this "offsetY" (JR.asI (<- JR.add (JV.int 2) ((<- JR.div (<- JR.mul (<- JR.getField this "charHeight") (JV.int 2)) (JV.int 3)))))
                pure ()
            pure ()
    let mut l_size : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    let mut l_aChar : JV := (JR.asC (JV.char 0))
    let mut l_offsetXArray : JV := (<- JR.newArray "I" 1 #[l_size])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_aChar := (JR.asC (<- JR.call l_string "charAt_1" #[l_index]))
            if JR.truth (<- JR.call l_openGLFeatureUtil "isAnyThreed_0" #[]) then
                JR.aset l_offsetXArray l_index (JR.asI (<- JR.div (<- JR.call l_font "charWidth_1" #[l_aChar]) (JV.int 2)))
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    JR.setField this "offsetXArray" l_offsetXArray
    pure JV.null


def m_paintVerticle_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let mut l_x : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y : JV := (JR.asI (JR.arg jargs 3))
    let mut l_anchor : JV := (JR.asI (JR.arg jargs 4))
    let mut l_size : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    let mut l_aChar : JV := (JR.asC (JV.char 0))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_aChar := (JR.asC (<- JR.call l_string "charAt_1" #[l_index]))
            let _ := (<- JR.call l_graphics "drawChar_4" #[l_aChar, (<- JR.add l_x (<- JR.aget (<- JR.getField this "offsetXArray") l_index)), (<- JR.add (<- JR.add l_y ((<- JR.mul (<- JR.getField this "charHeight") l_index))) (<- JR.getField this "offsetY")), l_anchor])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_drawCenterString_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_length : JV := (JR.asI (JR.arg jargs 3))
    let mut l_x : JV := (JR.asI (JR.arg jargs 4))
    let mut l_y : JV := (JR.asI (JR.arg jargs 5))
    let mut l_width : JV := (JR.asI ((<- JR.shr (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "substringWidth_3" #[l_string, l_offset, l_length]) (JV.int 1))))
    try
        let _ := (<- JR.call l_graphics "drawSubstring_6" #[l_string, l_offset, l_length, (<- JR.sub l_x l_width), l_y, (<- JR.getField this "anchor")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Exception: stringLength: ")]) "appendint_1" #[(<- JR.call l_string "length_0" #[])]) "append_1" #[(JV.str " offset: ")]) "appendint_1" #[l_offset]) "append_1" #[(JV.str " currentLength: ")]) "appendint_1" #[l_length]) "toString_0" #[]), this, (JV.str "drawCenterString")])
            pure ()
        else
            throw jex0
    pure JV.null


def m_drawCenterStrings_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_stringArray : JV := (JR.arg jargs 1)
    let mut l_maxWidth : JV := (JR.asI (JR.arg jargs 2))
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_extraLines : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_stringArray))) then break
            let mut l_string : JV := (<- JR.aget l_stringArray l_index)
            if JR.truth (<- JR.ne l_string (<- JR.getField this "EMPTY_STRING")) then
                let mut l_width : JV := (JR.asI (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[l_string]))
                let mut l_minTotalLines : JV := (JR.asI (JV.int 1))
                if JR.truth (<- JR.gt l_width l_maxWidth) then
                    l_minTotalLines := (JR.asI (<- JR.add ((<- JR.div l_width l_maxWidth)) (JV.int 1)))
                    pure ()
                let mut l_linePortion : JV := (JR.asI (<- JR.div (<- JR.call l_string "length_0" #[]) l_minTotalLines))
                let mut l_offset : JV := (JR.asI (JV.int 0))
                let mut l_currentLength : JV := (JR.asI l_linePortion)
                let mut l_size : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
                repeat
                    if !(JR.truth (<- JR.lt l_offset l_size)) then break
                    if JR.truth (<- JR.gt (<- JR.add l_offset l_currentLength) l_size) then
                        l_currentLength := (JR.asI (<- JR.sub l_size l_offset))
                        pure ()
                    if JR.truth (<- JR.ne (<- JR.add l_offset l_currentLength) l_size) then
                        repeat
                            if !(JR.truth (<- JR.cand (<- JR.gt l_currentLength (JV.int 0)) (do pure (<- JR.ne (<- JR.call (<- JR.aget l_stringArray l_index) "charAt_1" #[(<- JR.add l_offset l_currentLength)]) (JV.char 32))))) then break
                            l_currentLength := (JR.dec l_currentLength)
                            pure ()
                        if JR.truth (<- JR.le l_currentLength (JV.int 4)) then
                            l_currentLength := (JR.asI l_linePortion)
                            pure ()
                        pure ()
                    let jtemp12 : JV := l_extraLines
                    l_extraLines := (JR.inc jtemp12)
                    let _ := (<- JR.call this "drawCenterString_6" #[l_graphics, l_string, l_offset, l_currentLength, l_x, (<- JR.add l_y ((<- JR.mul ((<- JR.add l_index jtemp12)) (<- JR.getField this "charHeight"))))])
                    l_offset := (JR.asI (<- JR.add l_offset l_currentLength))
                    l_currentLength := (JR.asI l_linePortion)
                    pure ()
                l_extraLines := (JR.dec l_extraLines)
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DrawVerticalStringUtil",
    javaName := "org.allbinary.graphics.draw.DrawVerticalStringUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EMPTY_STRING", JV.null), ("anchor", (JV.int 0)), ("charHeight", (JV.int 0)), ("offsetY", (JV.int 0)), ("offsetXArray", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("updateMeasurement_2", #["Graphics", "String"], false, m_updateMeasurement_2), 
        ("paintVerticle_5", #["Graphics", "String", "int", "int", "int"], false, m_paintVerticle_5), 
        ("drawCenterString_6", #["Graphics", "String", "int", "int", "int", "int"], false, m_drawCenterString_6), 
        ("drawCenterStrings_5", #["Graphics", "StringArr", "int", "int", "int"], false, m_drawCenterStrings_5), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DrawVerticalStringUtil


