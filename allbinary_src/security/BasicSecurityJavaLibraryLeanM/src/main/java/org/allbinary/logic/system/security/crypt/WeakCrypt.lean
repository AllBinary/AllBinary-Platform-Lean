-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.crypt
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WeakCrypt

def jfields (this : JV) : JM JV := do
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "abCrypt" (<- JR.new "AbCrypt" #[(<- JR.getField (<- JR.callStatic "KeySpecFactory" "getInstance_0" #[]) "DES")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "WeakCrypt" "keys" (<- JR.arrayOf "L" #[(JV.str "qwres6qewrupoi1132790jfahleavi89398"), (JV.str "143uk32lngf8675gt1tv9214uvt924ut9u9"), (JV.str "12kvjlvlkv11445v12951v512v9m51295v1"), (JV.str "gampipoiupg4g43y5u238tu2485u20u0932"), (JV.str "a93u5uu02s2d2g3259u4395u409u093u9vu"), (JV.str "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j"), (JV.str "2lk5fn5j23nr8f0233vq35n23jn58vhy843"), (JV.str "9q24334m598t092tkn2iv0982456n425j9g"), (JV.str "5m9uvmt9436243m5v34g09d43i52ki35g99"), (JV.str "n123lr1iubiu2br32lv32rbu23b32ub2rlb"), (JV.str "va0u0iovji2ojpvj2oij22poiu4ov2uv28v"), (JV.str "bkk80gn2v9uc902340ut209pcup0u09utc9"), (JV.str "mn32m32neee23c42fn32nf3mf2n3fn2m3fm"), (JV.str "zcxpozo3423voizupovsijevnv3n33o33n3"), (JV.str "v0345324thv93h03893893vh893v8h3vhzz"), (JV.str "v8na898v8wyef9ty39yv98yaw39yeeyf8ye"), (JV.str "45zd36d34jg09434hfshp8uj9sy8s7cyr78"), (JV.str "b098yy0908vdvh983b2lb327980a76s5e5e"), (JV.str "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh"), (JV.str "vblkzhhzp8yvzi8u4t9856456zy3rv8a388"), (JV.str "da7696023rgf28dssfa98asd879hg32hewe"), (JV.str "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf"), (JV.str "4gijvqo8vq984hv984hj5j3511h832hf833")])
    JR.setStatic "WeakCrypt" "KEYMAX" (JR.asI (<- JR.alen (<- JR.getStatic "WeakCrypt" "keys")))
    pure JV.null


def m_encrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    try
        let mut l_crypted : JV := (<- JR.call (<- JR.getField this "abCrypt") "encrypt_1" #[(<- JR.call (<- JR.getField this "tsUtil") "getByteArray_1" #[l_value])])
        return (<- JR.callStatic "DatabaseEncoder" "encode_1" #[l_crypted])
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(JV.str "Encrypt Failed"), this, (JV.str "encrypt"), l_e])
            return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
        else
            throw jex1
    pure JV.null


def m_decrypt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    try
        let mut l_decrypted : JV := (<- JR.call (<- JR.getField this "abCrypt") "decrypt_1" #[(<- JR.callStatic "DatabaseEncoder" "decode_1" #[l_value])])
        return (<- JR.new "String" #[l_decrypted])
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(JV.str "decrypt Failed"), this, (JV.str "decrypt"), l_e])
            return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
        else
            throw jex2
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    try
        let _ := (<- JR.call (<- JR.getField this "abCrypt") "init_1" #[(<- JR.aget (<- JR.getStatic "WeakCrypt" "keys") l_key)])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "SuperCrypt(key)"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "WeakCrypt",
    javaName := "org.allbinary.logic.system.security.crypt.WeakCrypt",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("tsUtil", JV.null), ("abCrypt", JV.null)],
    statics := #[("keys", JV.null), ("KEYMAX", (JV.int 0))],
    methods := #[
        ("encrypt_1", #["String"], false, m_encrypt_1), 
        ("decrypt_1", #["String"], false, m_decrypt_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WeakCrypt


