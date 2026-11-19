-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PartnerIdentifierFileUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "FILE_NAME" (JV.str "partner.txt")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PartnerIdentifierFileUtil" "instance" (<- JR.new "PartnerIdentifierFileUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PartnerIdentifierFileUtil" "instance")


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_resourceUtil : JV := (<- JR.callStatic "ResourceUtil" "getInstance_0" #[])
        let mut l_inputStream : JV := (<- JR.call l_resourceUtil "getResourceAsStream_1" #[(<- JR.getField this "FILE_NAME")])
        let mut l_inputStreamReader : JV := (<- JR.new "InputStreamReader" #[l_inputStream])
        let mut l_chars : JV := (<- JR.newArray "C" 1 #[(JV.int 30)])
        let mut l_size : JV := (JR.asI (<- JR.call l_inputStreamReader "read_1" #[l_chars]))
        let mut l_partnerString : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
        if JR.truth (<- JR.gt l_size (JV.int 0)) then
            l_partnerString := (<- JR.new "String" #[l_chars, (JV.int 0), l_size])
            pure ()
        let _ := (<- JR.call l_inputStreamReader "close_0" #[])
        return l_partnerString
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "GET"), l_e])
            return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PartnerIdentifierFileUtil",
    javaName := "org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("FILE_NAME", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("get_0", #[], false, m_get_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PartnerIdentifierFileUtil


