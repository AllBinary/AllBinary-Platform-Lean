-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item.validation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberTextFieldItemValidator

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isNumberValid_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")


def m_toNumberVector_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    return (<- JR.new "BasicArrayListD" #[])


def m_isValid_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_result : JV := (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")
    let mut l_string : JV := (<- JR.call (<- JR.getField this "textFieldItem") "getString_0" #[])
    let mut l_textLength : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    if JR.truth (<- JR.cand (<- JR.gt l_textLength (JV.int 0)) (do pure (<- JR.lt l_textLength (<- JR.getField this "maxChars")))) then
        try
            let _ := (<- JR.callStatic "Integer" "parseInt_1" #[(<- JR.call (<- JR.getField this "textFieldItem") "getString_0" #[])])
            pure ()
        catch jex0 =>
            if (<- JR.isInstanceOfAny jex0 #["NumberFormatException"]) then
                let mut l_e : JV := jex0
                l_result := (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")
                pure ()
            else
                throw jex0
        pure ()
    else
        if JR.truth (<- JR.lt l_textLength (JV.int 1)) then
            l_result := (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")
            pure ()
        else
            if JR.truth (<- JR.gt l_textLength (<- JR.getField this "maxChars")) then
                l_result := (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")
                pure ()
        pure ()
    return l_result


def m_toList_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_string : JV := (<- JR.call (<- JR.getField this "textFieldItem") "getString_0" #[])
    let mut l_textLength : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    let mut l_label : JV := (<- JR.call (<- JR.getField this "textFieldItem") "getLabel_0" #[])
    let mut l_name : JV := (<- JR.call l_label "substring_2" #[(JV.int 0), (<- JR.sub (<- JR.call l_label "length_0" #[]) (JV.int 2))])
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    if JR.truth (<- JR.cand (<- JR.gt l_textLength (JV.int 0)) (do pure (<- JR.lt l_textLength (<- JR.getField this "maxChars")))) then
        try
            let mut l_number : JV := (<- JR.call l_smallIntegerSingletonFactory "createInstance_1" #[(<- JR.callStatic "Integer" "parseInt_1" #[(<- JR.call (<- JR.getField this "textFieldItem") "getString_0" #[])])])
            if JR.truth (<- JR.gt (<- JR.call l_number "intValue_0" #[]) (<- JR.getField this "min")) then
                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_name]) "append_1" #[(JV.str " is to small")]) "toString_0" #[])])
                pure ()
            else
                if JR.truth (<- JR.gt (<- JR.call l_number "intValue_0" #[]) (<- JR.getField this "max")) then
                    let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                    let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_name]) "append_1" #[(JV.str " is to large")]) "toString_0" #[])])
                    pure ()
            pure ()
        catch jex1 =>
            if (<- JR.isInstanceOfAny jex1 #["NumberFormatException"]) then
                let mut l_e : JV := jex1
                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_name]) "append_1" #[(JV.str " is not a number")]) "toString_0" #[])])
                pure ()
            else
                throw jex1
        pure ()
    else
        if JR.truth (<- JR.lt l_textLength (JV.int 1)) then
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_name]) "append_1" #[(JV.str " is to short")]) "toString_0" #[])])
            pure ()
        else
            if JR.truth (<- JR.gt l_textLength (<- JR.getField this "maxChars")) then
                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_name]) "append_1" #[(JV.str " is to long")]) "toString_0" #[])])
                pure ()
        pure ()
    return l_list


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_textFieldItem : JV := (JR.arg jargs 0)
    let mut l_maxChars : JV := (JR.asI (JR.arg jargs 1))
    let mut l_min : JV := (JR.asI (JR.arg jargs 2))
    let mut l_max : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "ValidatorBase" this #[]
    let _ <- jfields this
    JR.setField this "textFieldItem" l_textFieldItem
    JR.setField this "min" (JR.asI l_min)
    JR.setField this "max" (JR.asI l_max)
    JR.setField this "maxChars" (JR.asI l_maxChars)
    pure this

initialize JR.registerClass {
    name := "NumberTextFieldItemValidator",
    javaName := "org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator",
    super := "ValidatorBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("textFieldItem", JV.null), ("min", (JV.int 0)), ("max", (JV.int 0)), ("maxChars", (JV.int 0))],
    statics := #[],
    methods := #[
        ("isNumberValid_1", #["Integer"], false, m_isNumberValid_1), 
        ("toNumberVector_1", #["Integer"], false, m_toNumberVector_1), 
        ("isValid_0", #[], false, m_isValid_0), 
        ("toList_0", #[], false, m_toList_0), 
        ("jinit_4", #["ABTextFieldItem", "int", "int", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberTextFieldItemValidator


