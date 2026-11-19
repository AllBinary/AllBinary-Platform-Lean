-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.crypt.jcehelper
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbCrypt

def jfields (this : JV) : JM JV := do
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "secretComposite" (<- JR.getStatic "BaseSecretComposite" "NULL_SECRET_COMPOSITE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyAsString : JV := (JR.arg jargs 0)
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    try
        try
            let _ := (<- JR.callStatic "Security" "addProvider_1" #[(<- JR.new "BouncyCastleProvider" #[])])
            pure ()
        catch jex1 =>
            if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
                let mut l_e : JV := jex1
                let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "INIT"), l_e])
                pure ()
            else
                throw jex1
        let mut l_key : JV := (<- JR.call (<- JR.getField this "tsUtil") "getByteArray_1" #[l_keyAsString])
        let mut l_keySpec : JV := (<- JR.call (<- JR.callStatic "KeySpecFactory" "getInstance_0" #[]) "getInstance_2" #[(<- JR.getField this "algorithm"), l_key])
        let mut l_keyFactory : JV := (<- JR.callStatic "SecretKeyFactory" "getInstance_1" #[(<- JR.getField this "algorithm")])
        let mut l_secretKey : JV := (<- JR.call l_keyFactory "generateSecret_1" #[l_keySpec])
        let mut l_cipher : JV := (<- JR.callStatic "Cipher" "getInstance_1" #[(<- JR.getField this "algorithm")])
        JR.setField this "secretComposite" (<- JR.new "SecretComposite" #[l_secretKey, l_cipher, l_key])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(JV.str "init Failed"), this, (<- JR.getField l_commonStrings "INIT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_encrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    try
        return (<- JR.call (<- JR.getField this "secretComposite") "encrypt_1" #[l_array])
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(JV.str "Encrypt Failed"), this, (JV.str "encrypt"), l_e])
            return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")
        else
            throw jex2
    pure JV.null


def m_decrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    try
        return (<- JR.call (<- JR.getField this "secretComposite") "decrypt_1" #[l_array])
    catch jex3 =>
        if (<- JR.isInstanceOfAny jex3 #["Exception"]) then
            let mut l_e : JV := jex3
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(JV.str "decrypt Failed"), this, (JV.str "decrypt"), l_e])
            return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")
        else
            throw jex3
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_algorithm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "algorithm" l_algorithm
    pure this

initialize JR.registerClass {
    name := "AbCrypt",
    javaName := "org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt",
    super := "Object",
    interfaces := #["CryptInterface"],
    isInterface := false,
    fields := #[("tsUtil", JV.null), ("secretComposite", JV.null), ("algorithm", JV.null)],
    statics := #[],
    methods := #[
        ("init_1", #["String"], false, m_init_1), 
        ("encrypt_1", #["byteArr"], false, m_encrypt_1), 
        ("decrypt_1", #["byteArr"], false, m_decrypt_1), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbCrypt


