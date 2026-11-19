-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.crypt
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DatabaseEncoder

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_encode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    try
        let mut l_array : JV := l_value
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index (<- JR.alen l_array))) then break
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.new "Byte" #[(<- JR.aget l_array l_index)]) "toString_0" #[])])
                if JR.truth (<- JR.lt l_index (<- JR.sub (<- JR.alen l_array) (JV.int 1))) then
                    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        return (<- JR.call l_stringBuffer "toString_0" #[])
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), (JV.str "DatabaseEncoder"), (JV.str "decode"), l_e])
            return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
        else
            throw jex0
    pure JV.null


def m_decode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    try
        let mut l_tokenizer : JV := (<- JR.new "Tokenizer" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
        let mut l_vector : JV := (<- JR.call l_tokenizer "getTokensFromString_2" #[l_value, (<- JR.new "BasicArrayListD" #[])])
        let mut l_size : JV := (JR.asI (<- JR.call l_vector "size_0" #[]))
        let mut l_decode : JV := (<- JR.newArray "B" 1 #[l_size])
        let mut l_byteOfData : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_byteOfData := (<- JR.aget (<- JR.getField l_vector "objectArray") l_index)
                JR.aset l_decode l_index (JR.asB (<- JR.callStatic "Byte" "parseByte_1" #[l_byteOfData]))
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        return l_decode
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.callStatic "PreLogUtil" "putSE_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), (JV.str "DatabaseEncoder"), (JV.str "decode"), l_e])
            return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_BYTE_ARRAY")
        else
            throw jex1
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DatabaseEncoder",
    javaName := "org.allbinary.logic.system.security.crypt.DatabaseEncoder",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("encode_1", #["byteArr"], true, m_encode_1), 
        ("decode_1", #["String"], true, m_decode_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DatabaseEncoder


