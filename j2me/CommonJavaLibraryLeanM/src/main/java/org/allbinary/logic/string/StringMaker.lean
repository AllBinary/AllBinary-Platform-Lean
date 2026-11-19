-- Generated Code Do Not Modify
-- package org.allbinary.logic.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StringMaker

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_stringLength : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentLength") l_stringLength)])
    let _ := (<- JR.call l_string "getChars_4" #[(JV.int 0), l_stringLength, (<- JR.getField this "charArray"), (<- JR.getField this "currentLength")])
    JR.setField this "currentLength" (JR.castLike (<- JR.getField this "currentLength") (<- JR.add (<- JR.getField this "currentLength") l_stringLength))
    return this


def m_appendchar_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_c : JV := (JR.asC (JR.arg jargs 0))
    let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentLength") (JV.int 1))])
    let jtemp1 : JV := (<- JR.getField this "currentLength")
    JR.setField this "currentLength" (JR.inc jtemp1)
    JR.aset (<- JR.getField this "charArray") jtemp1 (JR.asC l_c)
    return this


def m_appendCharArray_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_charArray : JV := (JR.arg jargs 0)
    let mut l_start : JV := (JR.asI (JR.arg jargs 1))
    let mut l_end : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentLength") ((<- JR.sub l_end l_start)))])
    if true then
        let mut l_index : JV := (JR.asI l_start)
        repeat
            if !(JR.truth (<- JR.lt l_index l_end)) then break
            let jtemp2 : JV := (<- JR.getField this "currentLength")
            JR.setField this "currentLength" (JR.inc jtemp2)
            JR.aset (<- JR.getField this "charArray") jtemp2 (JR.asC (<- JR.aget l_charArray l_index))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return this


def m_appendbyte_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_b : JV := (JR.asB (JR.arg jargs 0))
    let _ := (<- JR.call this "append_1" #[(<- JR.callStatic "Integer" "toString_1" #[l_b])])
    return this


def m_appendshort_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_b : JV := (JR.asS (JR.arg jargs 0))
    let _ := (<- JR.call this "append_1" #[(<- JR.callStatic "Integer" "toString_1" #[l_b])])
    return this


def m_appendint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_i : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "append_1" #[(<- JR.callStatic "Integer" "toString_1" #[l_i])])
    return this


def m_appendlong_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_l : JV := (JR.asJ (JR.arg jargs 0))
    let _ := (<- JR.call this "append_1" #[(<- JR.callStatic "Long" "toString_1" #[l_l])])
    return this


def m_appendfloat_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_f : JV := (JR.asF (JR.arg jargs 0))
    let _ := (<- JR.call this "append_1" #[(<- JR.callStatic "Float" "toString_1" #[l_f])])
    return this


def m_appendboolean_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bool : JV := (JR.arg jargs 0)
    if JR.truth l_bool then
        let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentLength") (JV.int 4))])
        let jtemp8 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp8)
        JR.aset (<- JR.getField this "charArray") jtemp8 (JR.asC (JV.char 116))
        let jtemp9 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp9)
        JR.aset (<- JR.getField this "charArray") jtemp9 (JR.asC (JV.char 114))
        let jtemp10 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp10)
        JR.aset (<- JR.getField this "charArray") jtemp10 (JR.asC (JV.char 117))
        let jtemp11 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp11)
        JR.aset (<- JR.getField this "charArray") jtemp11 (JR.asC (JV.char 101))
        pure ()
    else
        let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentLength") (JV.int 5))])
        let jtemp3 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp3)
        JR.aset (<- JR.getField this "charArray") jtemp3 (JR.asC (JV.char 102))
        let jtemp4 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp4)
        JR.aset (<- JR.getField this "charArray") jtemp4 (JR.asC (JV.char 97))
        let jtemp5 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp5)
        JR.aset (<- JR.getField this "charArray") jtemp5 (JR.asC (JV.char 108))
        let jtemp6 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp6)
        JR.aset (<- JR.getField this "charArray") jtemp6 (JR.asC (JV.char 115))
        let jtemp7 : JV := (<- JR.getField this "currentLength")
        JR.setField this "currentLength" (JR.inc jtemp7)
        JR.aset (<- JR.getField this "charArray") jtemp7 (JR.asC (JV.char 101))
        pure ()
    return this


def m_ensureCapacity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_minSize : JV := (JR.asI (JR.arg jargs 0))
    let mut l_oldCapacity : JV := (JR.asI (<- JR.alen (<- JR.getField this "charArray")))
    if JR.truth (<- JR.gt l_minSize l_oldCapacity) then
        let mut l_newCapacity : JV := (JR.asI (<- JR.mul l_oldCapacity (JV.int 3)))
        if JR.truth (<- JR.lt l_newCapacity l_minSize) then
            l_newCapacity := (JR.asI l_minSize)
            pure ()
        let mut l_copy : JV := (<- JR.newArray "C" 1 #[l_newCapacity])
        let mut l_min : JV := (JR.asI (<- JR.call this "min_2" #[(<- JR.alen (<- JR.getField this "charArray")), l_newCapacity]))
        let _ := (<- JR.callStatic "System" "arraycopy_5" #[(<- JR.getField this "charArray"), (JV.int 0), l_copy, (JV.int 0), l_min])
        JR.setField this "charArray" l_copy
        pure ()
    pure JV.null


def m_min_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_value2 : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI (<- JR.cond ((<- JR.le l_value l_value2)) (do pure l_value) (do pure l_value2)))


def m_delete_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_start : JV := (JR.asI (JR.arg jargs 0))
    let mut l_end : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "currentLength" (JR.castLike (<- JR.getField this "currentLength") (<- JR.sub (<- JR.getField this "currentLength") ((<- JR.sub l_end l_start))))
    return this


def m_length_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "currentLength"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "String" #[(<- JR.getField this "charArray"), (JV.int 0), (<- JR.getField this "currentLength")])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "charArray" (<- JR.newArray "C" 1 #[(JV.int 20)])
    pure this

initialize JR.registerClass {
    name := "StringMaker",
    javaName := "org.allbinary.logic.string.StringMaker",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("charArray", JV.null), ("currentLength", (JV.int 0))],
    statics := #[],
    methods := #[
        ("append_1", #["String"], false, m_append_1), 
        ("appendchar_1", #["char"], false, m_appendchar_1), 
        ("appendCharArray_3", #["charArr", "int", "int"], false, m_appendCharArray_3), 
        ("appendbyte_1", #["byte"], false, m_appendbyte_1), 
        ("appendshort_1", #["short"], false, m_appendshort_1), 
        ("appendint_1", #["int"], false, m_appendint_1), 
        ("appendlong_1", #["long"], false, m_appendlong_1), 
        ("appendfloat_1", #["float"], false, m_appendfloat_1), 
        ("appendboolean_1", #["boolean"], false, m_appendboolean_1), 
        ("ensureCapacity_1", #["int"], false, m_ensureCapacity_1), 
        ("min_2", #["int", "int"], false, m_min_2), 
        ("delete_2", #["int", "int"], false, m_delete_2), 
        ("length_0", #[], false, m_length_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StringMaker


