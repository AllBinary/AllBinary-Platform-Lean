-- Generated Code Do Not Modify
-- package org.allbinary.logic.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StringValidationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "stringUtil" (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "StringValidationUtil" "instance" (<- JR.new "StringValidationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "StringValidationUtil" "instance")


def m_containsSpaces_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ge (<- JR.call l_value "indexOf_1" #[(JV.char 32)]) (JV.int 0)) then
        return (JV.bool true)
    return (JV.bool false)


def m_isNumber_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let mut l_numberOfDecimalPoints : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.call l_value "length_0" #[]))) then break
            let mut l_digit : JV := (JR.asC (<- JR.call l_value "charAt_1" #[l_index]))
            if JR.truth (<- JR.cand (JR.not (<- JR.call this "isNumberFromChar_1" #[l_digit])) (do pure (<- JR.ne l_digit (JV.char 46)))) then
                return (JV.bool false)
            if JR.truth (<- JR.eq l_digit (JV.char 46)) then
                l_numberOfDecimalPoints := (JR.inc l_numberOfDecimalPoints)
                if JR.truth (<- JR.gt l_numberOfDecimalPoints (JV.int 1)) then
                    return (JV.bool false)
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JV.bool true)


def m_isNumberFromChar_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_digit : JV := (JR.asC (JR.arg jargs 0))
    if JR.truth (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.ne l_digit (JV.char 48)) (do pure (<- JR.ne l_digit (JV.char 49)))) (do pure (<- JR.ne l_digit (JV.char 50)))) (do pure (<- JR.ne l_digit (JV.char 51)))) (do pure (<- JR.ne l_digit (JV.char 52)))) (do pure (<- JR.ne l_digit (JV.char 53)))) (do pure (<- JR.ne l_digit (JV.char 54)))) (do pure (<- JR.ne l_digit (JV.char 55)))) (do pure (<- JR.ne l_digit (JV.char 56)))) (do pure (<- JR.ne l_digit (JV.char 57)))) then
        return (JV.bool false)
    return (JV.bool true)


def m_isValidRequired_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let mut l_min : JV := (JR.asI (JR.arg jargs 1))
    let mut l_max : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.cor (<- JR.lt (<- JR.call l_value "length_0" #[]) l_min) (do pure (<- JR.gt (<- JR.call l_value "length_0" #[]) l_max))) then
        return (JV.bool false)
    return (JV.bool true)


def m_isValidRequiredNumber_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let mut l_min : JV := (JR.asI (JR.arg jargs 1))
    let mut l_max : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.call this "isEmpty_1" #[l_value]) (do pure (<- JR.lt (<- JR.call l_value "length_0" #[]) l_min))) (do pure (<- JR.gt (<- JR.call l_value "length_0" #[]) l_max))) then
        return (JV.bool false)
    if JR.truth (JR.not (<- JR.call this "isNumber_1" #[l_value])) then
        return (JV.bool false)
    return (JV.bool true)


def m_isValidNotRequired_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let mut l_min : JV := (JR.asI (JR.arg jargs 1))
    let mut l_max : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.gt (<- JR.call l_value "length_0" #[]) (JV.int 0)) then
        if JR.truth (<- JR.cor (<- JR.lt (<- JR.call l_value "length_0" #[]) l_min) (do pure (<- JR.gt (<- JR.call l_value "length_0" #[]) l_max))) then
            return (JV.bool false)
        pure ()
    return (JV.bool true)


def m_isValidNotRequiredNumber_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    let mut l_min : JV := (JR.asI (JR.arg jargs 1))
    let mut l_max : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.gt (<- JR.call l_value "length_0" #[]) (JV.int 0)) then
        if JR.truth (<- JR.cor (<- JR.cor (<- JR.eq (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[l_value, (<- JR.getField (<- JR.getField this "stringUtil") "NULL_STRING")]) (JV.int 0)) (do pure (<- JR.lt (<- JR.call l_value "length_0" #[]) l_min))) (do pure (<- JR.gt (<- JR.call l_value "length_0" #[]) l_max))) then
            return (JV.bool false)
        if JR.truth (JR.not (<- JR.call this "isNumber_1" #[l_value])) then
            return (JV.bool false)
        pure ()
    return (JV.bool true)


def m_isEmpty_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.cand (<- JR.ne (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[l_string, (<- JR.getField (<- JR.getField this "stringUtil") "NULL_STRING")]) (JV.int 0)) (do pure (<- JR.ne (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[l_string, (<- JR.getField (<- JR.getField this "stringUtil") "EMPTY_STRING")]) (JV.int 0)))) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StringValidationUtil",
    javaName := "org.allbinary.logic.string.StringValidationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("stringUtil", JV.null), ("tsUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("containsSpaces_1", #["String"], false, m_containsSpaces_1), 
        ("isNumber_1", #["String"], false, m_isNumber_1), 
        ("isNumberFromChar_1", #["char"], false, m_isNumberFromChar_1), 
        ("isValidRequired_3", #["String", "int", "int"], false, m_isValidRequired_3), 
        ("isValidRequiredNumber_3", #["String", "int", "int"], false, m_isValidRequiredNumber_3), 
        ("isValidNotRequired_3", #["String", "int", "int"], false, m_isValidNotRequired_3), 
        ("isValidNotRequiredNumber_3", #["String", "int", "int"], false, m_isValidNotRequiredNumber_3), 
        ("isEmpty_1", #["String"], false, m_isEmpty_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StringValidationUtil


