-- Generated Code Do Not Modify
-- package org.allbinary.logic.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StringUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "INIT_STRING" (<- JR.new "String" #[(JV.str "")])
    JR.setField this "NULL_STRING" (JV.str "null")
    JR.setField this "EMPTY_STRING" (JV.str "")
    JR.setField this "ONE_EMPTY_STRING_ARRAY" (<- JR.arrayOf "L" #[(<- JR.getField this "EMPTY_STRING")])
    JR.setField this "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS" (<- JR.newArray "L" 2 #[(JV.int 0), (JV.int 0)])
    JR.setField this "stringArray" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "StringUtil" "instance" (<- JR.new "StringUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "StringUtil" "instance")


def m_getNonNull_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    return l_string


def m_getArrayInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "stringArray")


def m_count_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_aChar : JV := (JR.asC (JR.arg jargs 1))
    let mut l_count : JV := (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            if JR.truth (<- JR.eq (<- JR.call l_string "charAt_1" #[l_index]) l_aChar) then
                l_count := (JR.inc l_count)
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JR.asI l_count)


def m_toString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne l_anyType JV.null) then
        return (<- JR.call l_anyType "toString_0" #[])
    else
        return (<- JR.getField this "NULL_STRING")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StringUtil",
    javaName := "org.allbinary.logic.string.StringUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("INIT_STRING", JV.null), ("NULL_STRING", JV.null), ("EMPTY_STRING", JV.null), ("ONE_EMPTY_STRING_ARRAY", JV.null), ("ONE_EMPTY_STRING_ARRAY_OF_ARRAYS", JV.null), ("stringArray", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getNonNull_1", #["String"], false, m_getNonNull_1), 
        ("getArrayInstance_0", #[], false, m_getArrayInstance_0), 
        ("count_2", #["String", "char"], false, m_count_2), 
        ("toString_1", #["Any"], false, m_toString_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StringUtil


