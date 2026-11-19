-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item.validation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TextFieldItemValidator

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isValid_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_booleanFactory : JV := (<- JR.callStatic "BooleanFactory" "getInstance_0" #[])
    let mut l_result : JV := (<- JR.getField l_booleanFactory "TRUE")
    let mut l_string : JV := (<- JR.call (<- JR.getField this "textFieldItem") "getString_0" #[])
    let mut l_textLength : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    if JR.truth (<- JR.cor ((<- JR.cand (<- JR.eq l_textLength (JV.int 0)) (do pure (<- JR.getField this "allowOnEmpty")))) (do pure (<- JR.cand (<- JR.gt l_textLength (<- JR.getField this "min")) (do pure (<- JR.lt l_textLength (<- JR.getField this "max")))))) then
        pure ()
    else
        if JR.truth (<- JR.lt l_textLength (<- JR.getField this "min")) then
            l_result := (<- JR.getField l_booleanFactory "FALSE")
            pure ()
        else
            if JR.truth (<- JR.gt l_textLength (<- JR.getField this "max")) then
                l_result := (<- JR.getField l_booleanFactory "FALSE")
                pure ()
        pure ()
    return l_result


def m_toList_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_string : JV := (<- JR.call (<- JR.getField this "textFieldItem") "getString_0" #[])
    let mut l_textLength : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    if JR.truth (<- JR.cand (<- JR.gt l_textLength (<- JR.getField this "min")) (do pure (<- JR.lt l_textLength (<- JR.getField this "max")))) then
        pure ()
    else
        let mut l_label : JV := (<- JR.call (<- JR.getField this "textFieldItem") "getLabel_0" #[])
        let mut l_name : JV := (<- JR.call l_label "substring_2" #[(JV.int 0), (<- JR.sub (<- JR.call l_label "length_0" #[]) (JV.int 2))])
        if JR.truth (<- JR.lt l_textLength (<- JR.getField this "min")) then
            let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_name]) "append_1" #[(JV.str " is to short")]) "toString_0" #[])])
            pure ()
        else
            if JR.truth (<- JR.gt l_textLength (<- JR.getField this "max")) then
                let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_name]) "append_1" #[(JV.str " is to long")]) "toString_0" #[])])
                pure ()
        pure ()
    return l_list


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_textFieldItem : JV := (JR.arg jargs 0)
    let mut l_min : JV := (JR.asI (JR.arg jargs 1))
    let mut l_max : JV := (JR.asI (JR.arg jargs 2))
    let mut l_allowOnEmpty : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "ValidatorBase" this #[]
    let _ <- jfields this
    JR.setField this "textFieldItem" l_textFieldItem
    JR.setField this "min" (JR.asI l_min)
    JR.setField this "max" (JR.asI l_max)
    JR.setField this "allowOnEmpty" l_allowOnEmpty
    pure this

initialize JR.registerClass {
    name := "TextFieldItemValidator",
    javaName := "org.allbinary.graphics.form.item.validation.TextFieldItemValidator",
    super := "ValidatorBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("textFieldItem", JV.null), ("min", (JV.int 0)), ("max", (JV.int 0)), ("allowOnEmpty", (JV.bool false))],
    statics := #[],
    methods := #[
        ("isValid_0", #[], false, m_isValid_0), 
        ("toList_0", #[], false, m_toList_0), 
        ("jinit_4", #["ABTextFieldItem", "int", "int", "boolean"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TextFieldItemValidator


