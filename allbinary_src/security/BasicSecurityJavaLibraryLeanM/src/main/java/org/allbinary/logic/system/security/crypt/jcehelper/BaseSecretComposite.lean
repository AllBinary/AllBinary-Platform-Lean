-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.crypt.jcehelper
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseSecretComposite

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BaseSecretComposite" "NULL_SECRET_COMPOSITE" (<- JR.new "BaseSecretComposite" #[])
    pure JV.null


def m_encrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")


def m_decrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseSecretComposite",
    javaName := "org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_SECRET_COMPOSITE", JV.null)],
    methods := #[
        ("encrypt_1", #["byteArr"], false, m_encrypt_1), 
        ("decrypt_1", #["byteArr"], false, m_decrypt_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseSecretComposite


