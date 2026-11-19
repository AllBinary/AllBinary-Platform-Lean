-- Generated Code Do Not Modify
-- package org.allbinary.init.crypt.jcehelper
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicCryptUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "XML_START" (JV.str "<?xml")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicCryptUtil" "instance" (<- JR.new "BasicCryptUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicCryptUtil" "instance")


def m_getDecryptedInputStream_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    let mut l_cryptInterface : JV := (JR.arg jargs 1)
    let mut l_buffer : JV := (<- JR.new "ByteArrayOutputStream" #[])
    let mut l_ch : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (JV.bool true)) then break
        l_ch := (JR.asI (<- JR.call l_inputStream "read_0" #[]))
        if JR.truth (<- JR.eq l_ch (JV.int (-1))) then
            break
        let _ := (<- JR.call l_buffer "write_1" #[l_ch])
        pure ()
    let mut l_decrypted : JV := (<- JR.call l_cryptInterface "decrypt_1" #[(<- JR.call l_buffer "toByteArray_0" #[])])
    let mut l_decryptedString : JV := (<- JR.new "String" #[l_decrypted])
    let mut l_index : JV := (JR.asI (<- JR.call l_decryptedString "indexOf_1" #[(<- JR.getField this "XML_START")]))
    if JR.truth (<- JR.gt l_index (JV.int 0)) then
        l_decryptedString := (<- JR.call l_decryptedString "substring_1" #[l_index])
        pure ()
    return (<- JR.new "ByteArrayInputStream" #[(<- JR.call (<- JR.getField this "tsUtil") "getByteArray_1" #[l_decryptedString])])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicCryptUtil",
    javaName := "org.allbinary.init.crypt.jcehelper.BasicCryptUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("tsUtil", JV.null), ("XML_START", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getDecryptedInputStream_2", #["InputStream", "CryptInterface"], false, m_getDecryptedInputStream_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicCryptUtil


