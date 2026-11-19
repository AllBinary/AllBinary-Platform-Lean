-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.crypt.jcehelper
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeySpecFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "DES" (JV.str "DES")
    JR.setField this "DESEDE" (JV.str "DESede")
    JR.setField this "BLOWFISH" (JV.str "Blowfish")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "KeySpecFactory" "instance" (<- JR.new "KeySpecFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "KeySpecFactory" "instance")


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_algorithm : JV := (JR.arg jargs 0)
    let mut l_keyData : JV := (JR.arg jargs 1)
    try
        let mut l_tsUtil : JV := (<- JR.callStatic "TsUtil" "getInstance_0" #[])
        if JR.truth (<- JR.eq (<- JR.call l_tsUtil "compareTo_2" #[l_algorithm, (<- JR.getField this "DES")]) (JV.int 0)) then
            return (<- JR.new "DESKeySpec" #[l_keyData])
        else
            if JR.truth (<- JR.eq (<- JR.call l_tsUtil "compareTo_2" #[l_algorithm, (<- JR.getField this "DESEDE")]) (JV.int 0)) then
                return (<- JR.new "DESedeKeySpec" #[l_keyData])
            else
                throw (<- JR.new "RuntimeException" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "GET_INSTANCE"), l_e])
            throw (<- JR.new "RuntimeException" #[])
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "KeySpecFactory",
    javaName := "org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("DES", JV.null), ("DESEDE", JV.null), ("BLOWFISH", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_2", #["String", "byteArr"], false, m_getInstance_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeySpecFactory


