-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ArrayUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "mathUtil" (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ArrayUtil" "instance" (<- JR.new "ArrayUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ArrayUtil" "instance")


def m_copyOf_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.call this "copyOfType_3" #[l_original, l_newLength, (<- JR.call l_original "getClass_0" #[])])


def m_copyOfType_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_newType : JV := (JR.arg jargs 2)
    let mut l_copy : JV := (<- JR.newArray "L" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOfbyte_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "B" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOfshort_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "S" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOfint_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "I" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOflong_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "J" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOfchar_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "C" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOffloat_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "F" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOfdouble_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "D" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_copyOfboolean_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_original : JV := (JR.arg jargs 0)
    let mut l_newLength : JV := (JR.asI (JR.arg jargs 1))
    let mut l_copy : JV := (<- JR.newArray "Z" 1 #[l_newLength])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_original, (JV.int 0), l_copy, (JV.int 0), (<- JR.call (<- JR.getField this "mathUtil") "min_2" #[(<- JR.alen l_original), l_newLength])])
    return l_copy


def m_reverse_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_intArray : JV := (JR.arg jargs 0)
    let mut l_length : JV := (JR.asI (<- JR.sub (<- JR.alen l_intArray) (JV.int 1)))
    let mut l_temp : JV := (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.div l_length (JV.int 2)))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.le l_index l_size)) then break
            l_temp := (JR.asI (<- JR.aget l_intArray l_index))
            JR.aset l_intArray l_index (JR.asI (<- JR.aget l_intArray (<- JR.sub l_length l_index)))
            JR.aset l_intArray (<- JR.sub l_length l_index) (JR.asI l_temp)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_flip_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_intArray : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_length : JV := (JR.asI (<- JR.sub l_height (JV.int 1)))
    let mut l_temp : JV := (JR.asI (JV.int 0))
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_rowIndex : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_y : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.le l_y (<- JR.div l_length (JV.int 2)))) then break
            if true then
                let mut l_x : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_x l_width)) then break
                    l_rowIndex := (JR.asI ((<- JR.mul ((<- JR.sub l_length l_y)) l_width)))
                    l_index := (JR.asI (<- JR.add l_x ((<- JR.mul l_y l_width))))
                    l_temp := (JR.asI (<- JR.aget l_intArray l_index))
                    JR.aset l_intArray l_index (JR.asI (<- JR.aget l_intArray (<- JR.add l_rowIndex l_x)))
                    JR.aset l_intArray (<- JR.add l_rowIndex l_x) (JR.asI l_temp)
                    l_x := (JR.inc l_x)
                    pure ()
                pure ()
            l_y := (JR.inc l_y)
            pure ()
        pure ()
    pure JV.null


def m_toStringFromTwoDimensionaArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_twoDimensionalIntArray : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_endIndex : JV := (JR.asI (<- JR.alen l_twoDimensionalIntArray))
    let mut l_endIndex2 : JV := (JR.asI (<- JR.alen (<- JR.aget l_twoDimensionalIntArray (JV.int 0))))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_endIndex)) then break
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "BRACE_OPEN")])
            if true then
                let mut l_index2 : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index2 l_endIndex2)) then break
                    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.aget (<- JR.aget l_twoDimensionalIntArray l_index) l_index2))])
                    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "BRACE_CLOSE")])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "NEW_LINE")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_toStringFromObjectArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_objectArray : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_objectArray))) then break
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.aget l_objectArray l_index)])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_toStringFromByteArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_byteArray : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_byteArray))) then break
            let _ := (<- JR.call l_stringBuffer "appendbyte_1" #[(<- JR.aget l_byteArray l_index)])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ArrayUtil",
    javaName := "org.allbinary.util.ArrayUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("mathUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("copyOf_2", #["AnyArr", "int"], false, m_copyOf_2), 
        ("copyOfType_3", #["AnyArr", "int", "Class"], false, m_copyOfType_3), 
        ("copyOfbyte_2", #["byteArr", "int"], false, m_copyOfbyte_2), 
        ("copyOfshort_2", #["shortArr", "int"], false, m_copyOfshort_2), 
        ("copyOfint_2", #["intArr", "int"], false, m_copyOfint_2), 
        ("copyOflong_2", #["longArr", "int"], false, m_copyOflong_2), 
        ("copyOfchar_2", #["charArr", "int"], false, m_copyOfchar_2), 
        ("copyOffloat_2", #["floatArr", "int"], false, m_copyOffloat_2), 
        ("copyOfdouble_2", #["doubleArr", "int"], false, m_copyOfdouble_2), 
        ("copyOfboolean_2", #["booleanArr", "int"], false, m_copyOfboolean_2), 
        ("reverse_1", #["intArr"], false, m_reverse_1), 
        ("flip_3", #["intArr", "int", "int"], false, m_flip_3), 
        ("toStringFromTwoDimensionaArray_1", #["intArrArr"], false, m_toStringFromTwoDimensionaArray_1), 
        ("toStringFromObjectArray_1", #["AnyArr"], false, m_toStringFromObjectArray_1), 
        ("toStringFromByteArray_1", #["byteArr"], false, m_toStringFromByteArray_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ArrayUtil


