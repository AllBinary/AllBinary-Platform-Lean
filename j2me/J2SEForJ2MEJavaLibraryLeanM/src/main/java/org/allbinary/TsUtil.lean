-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TsUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TsUtil" "instance" (<- JR.new "TsUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TsUtil" "instance")


def m_longBitsToDouble_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bits : JV := (JR.asJ (JR.arg jargs 0))
    return (JR.asD (<- JR.callStatic "Double" "longBitsToDouble_1" #[l_bits]))


def m_intBitsToFloat_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bits : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asF (<- JR.callStatic "Float" "intBitsToFloat_1" #[l_bits]))


def m_hashCode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    return (JR.asI (<- JR.call l_anyType "hashCode_0" #[]))


def m_waitFor_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_any : JV := (JR.arg jargs 0)
    let mut l_timeoutMillis : JV := (JR.asJ (JR.arg jargs 1))
    let mut l_anyType : JV := l_any
    let _ := (<- JR.call l_anyType "wait_1" #[l_timeoutMillis])
    pure JV.null


def m_getRecord_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_recordId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_recordStore : JV := l_anyType
    let mut l_data : JV := JV.null
    if true then
        l_data := (<- JR.newArray "B" 1 #[(<- JR.call l_recordStore "getRecordSize_1" #[l_recordId])])
        let _ := (<- JR.call l_recordStore "getRecord_3" #[l_recordId, l_data, (JV.int 0)])
        pure ()
    return (<- JR.cond (<- JR.lt (<- JR.alen l_data) (JV.int 1)) (do pure (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")) (do pure l_data))


def m_compareTo_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_a : JV := (JR.arg jargs 0)
    let mut l_b : JV := (JR.arg jargs 1)
    return (JR.asI (<- JR.call l_a "compareTo_1" #[l_b]))


def m_equalIgnoreCase_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_a : JV := (JR.arg jargs 0)
    let mut l_b : JV := (JR.arg jargs 1)
    return (<- JR.call l_a "equalsIgnoreCase_1" #[l_b])


def m_equalsNotstring_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_object2 : JV := (JR.arg jargs 1)
    return (<- JR.call l_anyType "equals_1" #[l_object2])


def m_getClassClassLoader_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.call l_anyType "getClass_0" #[]) "getClassLoader_0" #[])


def m_toNumberFromChar_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asC (JR.arg jargs 0))
    return (JR.asI (JR.toI l_value))


def m_toNumber_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI l_value)


def m_getByteArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    return (<- JR.call l_string "getBytes_0" #[])


def m_isItemListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_owner : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.instanceOf l_owner "Form") then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_gc_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "System" "gc_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TsUtil",
    javaName := "org.allbinary.TsUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("longBitsToDouble_1", #["long"], false, m_longBitsToDouble_1), 
        ("intBitsToFloat_1", #["int"], false, m_intBitsToFloat_1), 
        ("hashCode_1", #["Any"], false, m_hashCode_1), 
        ("waitFor_2", #["Any", "long"], false, m_waitFor_2), 
        ("getRecord_2", #["Any", "int"], false, m_getRecord_2), 
        ("compareTo_2", #["String", "String"], false, m_compareTo_2), 
        ("equalIgnoreCase_2", #["String", "String"], false, m_equalIgnoreCase_2), 
        ("equalsNotstring_2", #["Any", "Any"], false, m_equalsNotstring_2), 
        ("getClassClassLoader_1", #["Any"], false, m_getClassClassLoader_1), 
        ("toNumberFromChar_1", #["char"], false, m_toNumberFromChar_1), 
        ("toNumber_1", #["int"], false, m_toNumber_1), 
        ("getByteArray_1", #["String"], false, m_getByteArray_1), 
        ("isItemListener_1", #["Displayable"], false, m_isItemListener_1), 
        ("gc_0", #[], false, m_gc_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TsUtil


