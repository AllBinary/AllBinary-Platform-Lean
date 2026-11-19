-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HashtableUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "enumerationUtil" (<- JR.callStatic "EnumerationUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HashtableUtil" "instance" (<- JR.new "HashtableUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HashtableUtil" "instance")


def m_putAll_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fromHashtable : JV := (JR.arg jargs 0)
    let mut l_hashtable : JV := (JR.arg jargs 1)
    let mut l_enumeration : JV := (<- JR.call l_fromHashtable "keys_0" #[])
    let mut l_keyCanBeNull : JV := JV.null
    let mut l_valueCanBeNull : JV := JV.null
    repeat
        if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
        l_keyCanBeNull := (<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])
        l_valueCanBeNull := (<- JR.call l_hashtable "get_1" #[l_keyCanBeNull])
        if JR.truth (<- JR.eq l_valueCanBeNull JV.null) then
            pure ()
        else
            let _ := (<- JR.call l_hashtable "put_2" #[l_keyCanBeNull, l_valueCanBeNull])
            pure ()
        pure ()
    pure JV.null


def m_getKeysAsArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_objectArray : JV := (<- JR.newArray "L" 1 #[(<- JR.call l_hashtable "size_0" #[])])
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_enumeration : JV := (<- JR.call l_hashtable "keys_0" #[])
    repeat
        if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
        let jtemp1 : JV := l_index
        l_index := (JR.inc jtemp1)
        JR.aset l_objectArray jtemp1 (<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])
        pure ()
    return l_objectArray


def m_getKeysAsList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_list : JV := (<- JR.new "BasicArrayListS" #[(<- JR.call l_hashtable "size_0" #[])])
    let mut l_enumeration : JV := (<- JR.call l_hashtable "keys_0" #[])
    repeat
        if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
        let _ := (<- JR.call l_list "add_1" #[(<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])])
        pure ()
    return l_list


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HashtableUtil",
    javaName := "org.allbinary.util.HashtableUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("enumerationUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("putAll_2", #["ABHashtable", "ABHashtable"], false, m_putAll_2), 
        ("getKeysAsArray_1", #["ABHashtable"], false, m_getKeysAsArray_1), 
        ("getKeysAsList_1", #["ABHashtable"], false, m_getKeysAsList_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HashtableUtil


