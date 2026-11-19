-- Generated Code Do Not Modify
-- package org.allbinary.data
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CamelCaseUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "commonSeps" (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CamelCaseUtil" "instance" (<- JR.new "CamelCaseUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CamelCaseUtil" "instance")


def m_getAsCamelCase_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_stringBuilder : JV := (JR.arg jargs 1)
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuilder "delete_2" #[(JV.int 0), (<- JR.call l_stringBuilder "length_0" #[])])
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_tokenizer : JV := (<- JR.new "Tokenizer" #[(<- JR.getField (<- JR.getField this "commonSeps") "UNDERSCORE")])
    let _ := (<- JR.call l_tokenizer "getTokensFromString_2" #[l_string, l_list])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_word : JV := JV.null
    if true then
        let mut l_i : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_i l_size)) then break
            l_word := (<- JR.call l_list "get_1" #[l_i])
            l_word := (<- JR.cond (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_word]) (do pure l_word) (do pure (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "appendchar_1" #[(<- JR.callStatic "Character" "toUpperCase_1" #[(<- JR.call l_word "charAt_1" #[(JV.int 0)])])]) "append_1" #[(<- JR.call (<- JR.call l_word "substring_1" #[(JV.int 1)]) "toLowerCase_0" #[])]) "toString_0" #[])))
            let _ := (<- JR.call l_stringBuilder "append_1" #[l_word])
            l_i := (JR.inc l_i)
            pure ()
        pure ()
    return (<- JR.call l_stringBuilder "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CamelCaseUtil",
    javaName := "org.allbinary.data.CamelCaseUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonSeps", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getAsCamelCase_2", #["String", "StringMaker"], false, m_getAsCamelCase_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CamelCaseUtil


