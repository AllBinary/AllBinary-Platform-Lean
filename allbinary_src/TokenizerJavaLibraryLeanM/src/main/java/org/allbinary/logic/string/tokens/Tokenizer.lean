-- Generated Code Do Not Modify
-- package org.allbinary.logic.string.tokens
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Tokenizer

def jfields (this : JV) : JM JV := do
    JR.setField this "endSep" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setSep_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sep : JV := (JR.arg jargs 0)
    JR.setField this "sep" l_sep
    pure JV.null


def m_setEndSep_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_endSep : JV := (JR.arg jargs 0)
    JR.setField this "endSep" l_endSep
    pure JV.null


def m_getInsideSep_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_tokenList : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    repeat
        if !(JR.truth (<- JR.lt l_index l_size)) then break
        l_index := (JR.asI (<- JR.call l_string "indexOf_2" #[(<- JR.getField this "sep"), l_index]))
        if JR.truth (<- JR.ne l_index (JV.int (-1))) then
            let mut l_end : JV := (JR.asI (<- JR.call l_string "indexOf_2" #[(<- JR.getField this "endSep"), (<- JR.add l_index (<- JR.call (<- JR.getField this "sep") "length_0" #[]))]))
            if JR.truth (<- JR.ne l_end (JV.int (-1))) then
                let _ := (<- JR.call l_tokenList "add_1" #[(<- JR.call l_string "substring_2" #[(<- JR.add l_index (<- JR.call (<- JR.getField this "sep") "length_0" #[])), (<- JR.sub l_end ((<- JR.sub (<- JR.call (<- JR.getField this "endSep") "length_0" #[]) (JV.int 1))))])])
                l_index := (JR.asI (<- JR.add l_end (<- JR.call (<- JR.getField this "endSep") "length_0" #[])))
                pure ()
            else
                pure ()
            pure ()
        else
            break
        pure ()
    return l_tokenList


def m_getTokensFromString_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_tokenVector : JV := (JR.arg jargs 1)
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_end : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.lt l_index (<- JR.call l_string "length_0" #[]))) then break
        l_end := (JR.asI (<- JR.call l_string "indexOf_2" #[(<- JR.getField this "sep"), l_index]))
        if JR.truth (<- JR.ne l_end (JV.int (-1))) then
            let _ := (<- JR.call l_tokenVector "add_1" #[(<- JR.call l_string "substring_2" #[l_index, l_end])])
            l_index := (JR.asI (<- JR.add l_end (<- JR.call (<- JR.getField this "sep") "length_0" #[])))
            pure ()
        else
            let _ := (<- JR.call l_tokenVector "add_1" #[(<- JR.call l_string "substring_2" #[l_index, (<- JR.call l_string "length_0" #[])])])
            break
        pure ()
    return l_tokenVector


def m_getTokens_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringVector : JV := (JR.arg jargs 0)
    let mut l_tokenHashtable : JV := (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    let mut l_string : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    let mut l_end : JV := (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.call l_stringVector "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_string := (<- JR.aget (<- JR.getField l_stringVector "objectArray") l_index)
            l_end := (JR.asI (<- JR.call l_string "indexOf_1" #[(<- JR.getField this "sep")]))
            if JR.truth (<- JR.ge l_end (JV.int 0)) then
                let _ := (<- JR.call l_tokenHashtable "put_2" #[(<- JR.call l_string "substring_2" #[(JV.int 0), l_end]), (<- JR.call l_string "substring_2" #[(<- JR.add l_end (JV.int 1)), (<- JR.call l_string "length_0" #[])])])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_tokenHashtable


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sep : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    if JR.truth (<- JR.eq (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "compareTo_2" #[l_sep, (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")]) (JV.int 0)) then
        throw (<- JR.new "Exception" #[(JV.str "Sep provided is not valid")])
    JR.setField this "sep" l_sep
    pure this

initialize JR.registerClass {
    name := "Tokenizer",
    javaName := "org.allbinary.logic.string.tokens.Tokenizer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("sep", JV.null), ("endSep", JV.null)],
    statics := #[],
    methods := #[
        ("setSep_1", #["String"], false, m_setSep_1), 
        ("setEndSep_1", #["String"], false, m_setEndSep_1), 
        ("getInsideSep_1", #["String"], false, m_getInsideSep_1), 
        ("getTokensFromString_2", #["String", "BasicArrayList"], false, m_getTokensFromString_2), 
        ("getTokens_1", #["BasicArrayList"], false, m_getTokens_1), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Tokenizer


