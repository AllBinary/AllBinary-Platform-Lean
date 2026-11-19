-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.crypt.jcehelper
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicCrypt

def jfields (this : JV) : JM JV := do
    JR.setField this "byteUtil" (<- JR.callStatic "ByteUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_encrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    try
        return (<- JR.call this "mutilate_1" #[l_array])
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(JV.str "Encrypt Failed"), this, (JV.str "encrypt"), l_e])
            return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")
        else
            throw jex1
    pure JV.null


def m_decrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    try
        return (<- JR.call this "mutilate_1" #[l_array])
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(JV.str "decrypt Failed"), this, (JV.str "decrypt"), l_e])
            return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")
        else
            throw jex2
    pure JV.null


def m_mutilate_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    let mut l_value : JV := (JR.asB (JV.byte 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "key")))) then break
            l_value := (JR.asB (<- JR.aget (<- JR.getField this "key") l_index))
            l_array := (<- JR.call (<- JR.getField this "byteUtil") "xor_2" #[l_array, l_value])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_array


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyAsString : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_key : JV := (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")
    try
        l_key := (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "getByteArray_1" #[l_keyAsString])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "AbCrypt(alg,key)"), l_e])
            pure ()
        else
            throw jex0
    JR.setField this "key" l_key
    pure this

initialize JR.registerClass {
    name := "BasicCrypt",
    javaName := "org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt",
    super := "Object",
    interfaces := #["CryptInterface"],
    isInterface := false,
    fields := #[("byteUtil", JV.null), ("key", JV.null)],
    statics := #[],
    methods := #[
        ("encrypt_1", #["byteArr"], false, m_encrypt_1), 
        ("decrypt_1", #["byteArr"], false, m_decrypt_1), 
        ("mutilate_1", #["byteArr"], false, m_mutilate_1), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicCrypt


