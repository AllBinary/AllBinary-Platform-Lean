-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.crypt.jcehelper
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SecretComposite

def jfields (this : JV) : JM JV := do
    JR.setField this "byteUtil" (<- JR.callStatic "ByteUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_encrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    l_array := (<- JR.call this "mutilate_1" #[l_array])
    let _ := (<- JR.call (<- JR.getField this "cipher") "init_2" #[(<- JR.getStatic "Cipher" "ENCRYPT_MODE"), (<- JR.getField this "secretKey")])
    return (<- JR.call (<- JR.getField this "cipher") "doFinal_1" #[l_array])


def m_decrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "cipher") "init_2" #[(<- JR.getStatic "Cipher" "DECRYPT_MODE"), (<- JR.getField this "secretKey")])
    return (<- JR.call this "mutilate_1" #[(<- JR.call (<- JR.getField this "cipher") "doFinal_1" #[l_array])])


def m_mutilate_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "key")))) then break
            let mut l_value : JV := (JR.asB (<- JR.aget (<- JR.getField this "key") l_index))
            if JR.truth (<- JR.cand (<- JR.lt (JR.toI l_value) (JV.int 8)) (do pure (<- JR.gt (JR.toI l_value) (JV.int 0)))) then
                l_array := (<- JR.call (<- JR.getField this "byteUtil") "xorByte_2" #[l_array, (JR.toI l_value)])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_array


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_secretKey : JV := (JR.arg jargs 0)
    let mut l_cipher : JV := (JR.arg jargs 1)
    let mut l_key : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BaseSecretComposite" this #[]
    let _ <- jfields this
    JR.setField this "secretKey" l_secretKey
    JR.setField this "cipher" l_cipher
    JR.setField this "key" l_key
    pure this

initialize JR.registerClass {
    name := "SecretComposite",
    javaName := "org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite",
    super := "BaseSecretComposite",
    interfaces := #[],
    isInterface := false,
    fields := #[("byteUtil", JV.null), ("cipher", JV.null), ("secretKey", JV.null), ("key", JV.null)],
    statics := #[],
    methods := #[
        ("encrypt_1", #["byteArr"], false, m_encrypt_1), 
        ("decrypt_1", #["byteArr"], false, m_decrypt_1), 
        ("mutilate_1", #["byteArr"], false, m_mutilate_1), 
        ("jinit_3", #["SecretKey", "Cipher", "byteArr"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SecretComposite


