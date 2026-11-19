-- Generated Code Do Not Modify
-- package org.allbinary.graphics.draw
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DrawStringUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "EMPTY_STRING" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DrawStringUtil" "instance" (<- JR.new "DrawStringUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DrawStringUtil" "instance")


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


def m_drawCenterStrings_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_stringArray : JV := (JR.arg jargs 1)
    let mut l_maxWidth : JV := (JR.asI (JR.arg jargs 2))
    let mut l_charHeight : JV := (JR.asI (JR.arg jargs 3))
    let mut l_x : JV := (JR.asI (JR.arg jargs 4))
    let mut l_y : JV := (JR.asI (JR.arg jargs 5))
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
                    let jtemp11 : JV := l_extraLines
                    l_extraLines := (JR.inc jtemp11)
                    let _ := (<- JR.call this "drawCenterString_6" #[l_graphics, l_string, l_offset, l_currentLength, l_x, (<- JR.add l_y ((<- JR.mul ((<- JR.add l_index jtemp11)) l_charHeight)))])
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
    name := "DrawStringUtil",
    javaName := "org.allbinary.graphics.draw.DrawStringUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EMPTY_STRING", JV.null), ("anchor", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("drawCenterString_6", #["Graphics", "String", "int", "int", "int", "int"], false, m_drawCenterString_6), 
        ("drawCenterStrings_6", #["Graphics", "StringArr", "int", "int", "int", "int"], false, m_drawCenterStrings_6), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DrawStringUtil


