-- Generated Code Do Not Modify
-- package org.allbinary.logic.java.byteutil
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ByteUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ByteUtil" "instance" (<- JR.new "ByteUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ByteUtil" "instance")


def m_xor_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    let mut l_mask : JV := (JR.asB (JR.arg jargs 1))
    let mut l_bytes : JV := (<- JR.newArray "B" 1 #[(<- JR.alen l_array)])
    let mut l_size : JV := (JR.asI (<- JR.alen l_array))
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_currentByte : JV := (JR.asB (JV.byte 0))
    repeat
        if !(JR.truth (<- JR.lt l_index l_size)) then break
        l_currentByte := (JR.asB (<- JR.aget l_array l_index))
        JR.aset l_bytes l_index (JR.asB (JR.toB ((<- JR.bxor l_currentByte l_mask))))
        l_index := (JR.inc l_index)
        pure ()
    return l_bytes


def m_not_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    let mut l_bytes : JV := (<- JR.newArray "B" 1 #[(<- JR.alen l_array)])
    let mut l_size : JV := (JR.asI (<- JR.alen l_array))
    let mut l_index : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.lt l_index l_size)) then break
        JR.aset l_bytes l_index (JR.asB (JR.toB (JR.bnot (<- JR.aget l_array l_index))))
        l_index := (JR.inc l_index)
        pure ()
    return l_bytes


def m_xorByte_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_mask : JV := (JR.asB (JV.int 0))
    if JR.truth (<- JR.eq l_index (JV.int 0)) then
        l_mask := (JR.asB (JV.int 1))
        pure ()
    if JR.truth (<- JR.eq l_index (JV.int 1)) then
        l_mask := (JR.asB (JV.int 2))
        pure ()
    if JR.truth (<- JR.eq l_index (JV.int 2)) then
        l_mask := (JR.asB (JV.int 4))
        pure ()
    if JR.truth (<- JR.eq l_index (JV.int 3)) then
        l_mask := (JR.asB (JV.int 8))
        pure ()
    if JR.truth (<- JR.eq l_index (JV.int 4)) then
        l_mask := (JR.asB (JV.int 16))
        pure ()
    if JR.truth (<- JR.eq l_index (JV.int 5)) then
        l_mask := (JR.asB (JV.int 32))
        pure ()
    if JR.truth (<- JR.eq l_index (JV.int 6)) then
        l_mask := (JR.asB (JV.int 64))
        pure ()
    if JR.truth (<- JR.eq l_index (JV.int 7)) then
        l_mask := (JR.asB (JR.toB (JV.int (-127))))
        pure ()
    return (<- JR.call this "xor_2" #[l_array, l_mask])


def m_compare_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newByteArray : JV := (JR.arg jargs 0)
    let mut l_oldByteArray : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.ne (<- JR.alen l_newByteArray) (<- JR.alen l_oldByteArray)) then
        return (JV.bool false)
    else
        pure ()
    let mut l_size : JV := (JR.asI (<- JR.alen l_newByteArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            if JR.truth (<- JR.ne (<- JR.aget l_newByteArray l_index) (<- JR.aget l_oldByteArray l_index)) then
                return (JV.bool false)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JV.bool true)


def m_compareWithStats_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newByteArray : JV := (JR.arg jargs 0)
    let mut l_newSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_oldByteArray : JV := (JR.arg jargs 2)
    let mut l_stats : JV := (JR.arg jargs 3)
    if JR.truth (<- JR.ne l_newSize (<- JR.alen l_oldByteArray)) then
        JR.aset l_stats (JV.int 0) (JR.asI (JV.int (-1)))
        JR.aset l_stats (JV.int 2) (JR.asI l_newSize)
        JR.aset l_stats (JV.int 3) (JR.asI (<- JR.alen l_oldByteArray))
        return (JV.bool false)
    else
        JR.aset l_stats (JV.int 0) (JR.asI l_newSize)
        pure ()
    JR.aset l_stats (JV.int 1) (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI l_newSize)
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            if JR.truth (<- JR.ne (<- JR.aget l_newByteArray l_index) (<- JR.aget l_oldByteArray l_index)) then
                return (JV.bool false)
            JR.aset l_stats (JV.int 1) (JR.inc (<- JR.aget l_stats (JV.int 1)))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ByteUtil",
    javaName := "org.allbinary.logic.java.byteutil.ByteUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("xor_2", #["byteArr", "byte"], false, m_xor_2), 
        ("not_1", #["byteArr"], false, m_not_1), 
        ("xorByte_2", #["byteArr", "int"], false, m_xorByte_2), 
        ("compare_2", #["byteArr", "byteArr"], false, m_compare_2), 
        ("compareWithStats_4", #["byteArr", "int", "byteArr", "intArr"], false, m_compareWithStats_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ByteUtil


