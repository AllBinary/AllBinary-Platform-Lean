-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimpleFileUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "NULL_WRITER" (<- JR.callStatic "SimpleFileUtil" "nullWriter_0" #[])
    JR.setField this "NULL_READER" (<- JR.callStatic "SimpleFileUtil" "nullReader_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "nullUtil" (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    JR.setField this "streamUtil" (<- JR.callStatic "StreamUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SimpleFileUtil" "instance" (<- JR.new "SimpleFileUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SimpleFileUtil" "instance")


def m_nullOutputStream_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullOutputStream" "NULL_OUTPUT_STREAM")


def m_nullWriter_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullWriter" "NULL_WRITER")


def m_nullReader_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullReader" "NULL_READER")


def m_loadFileAsList_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    let mut l_max : JV := (JR.asI (JR.arg jargs 1))
    let mut l_byteArray1 : JV := (JR.arg jargs 2)
    return (<- JR.call this "loadFileAsListReturnLine_4" #[l_inputStream, l_max, l_byteArray1, (JV.int 0)])


def m_loadFileAsListReturnLine_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    let mut l_max : JV := (JR.asI (JR.arg jargs 1))
    let mut l_byteArray1 : JV := (JR.arg jargs 2)
    let mut l_includeReturnLine : JV := (JR.asI (JR.arg jargs 3))
    let mut l_stringList : JV := (<- JR.new "BasicArrayListD" #[])
    if JR.truth (<- JR.eq l_inputStream JV.null) then
        return l_stringList
    let mut l_byteArray : JV := (<- JR.getField (<- JR.getField this "nullUtil") "NULL_BYTE_ARRAY")
    try
        let mut l_outputStream2 : JV := (<- JR.new "ByteArrayOutputStream" #[l_max])
        l_byteArray := (<- JR.call (<- JR.getField this "streamUtil") "getByteArray_3" #[l_inputStream, l_outputStream2, l_byteArray1])
        let _ := (<- JR.call (<- JR.getField this "streamUtil") "close_1" #[l_inputStream])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "streamUtil") "close_1" #[l_inputStream])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD"), l_e])
            pure ()
        else
            throw jex0
    if JR.truth (<- JR.eq l_byteArray JV.null) then
        return l_stringList
    let mut l_size : JV := (JR.asI (<- JR.alen l_byteArray))
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_startIndex : JV := (JR.asI (JV.int 0))
    let mut l_returnLine : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.lt l_index l_size)) then break
        l_startIndex := (JR.asI l_index)
        repeat
            if !(JR.truth (<- JR.cand (<- JR.lt l_index (<- JR.sub l_size (JV.int 1))) (do pure (<- JR.ne (<- JR.aget l_byteArray l_index) (JR.toB (JV.char 10)))))) then break
            l_index := (JR.inc l_index)
            pure ()
        if JR.truth (<- JR.eq l_includeReturnLine (JV.int 0)) then
            if JR.truth (<- JR.cand (<- JR.gt l_index (JV.int 0)) (do pure (<- JR.eq (<- JR.aget l_byteArray (<- JR.sub l_index (JV.int 1))) (JR.toB (JV.char 13))))) then
                l_returnLine := (JR.asI (JV.int 1))
                pure ()
            else
                l_returnLine := (JR.asI (JV.int 0))
                pure ()
            pure ()
        let mut l_s : JV := (<- JR.new "String" #[l_byteArray, l_startIndex, ((<- JR.sub (<- JR.sub (<- JR.add l_index l_includeReturnLine) l_returnLine) l_startIndex))])
        let _ := (<- JR.call l_stringList "add_1" #[l_s])
        l_index := (JR.inc l_index)
        pure ()
    return l_stringList


def m_createStringFromArrayOfStrings_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringArray : JV := (JR.arg jargs 0)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_stringArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_stringMaker "append_1" #[(<- JR.aget l_stringArray l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringMaker "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SimpleFileUtil",
    javaName := "org.allbinary.logic.io.file.SimpleFileUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("NULL_WRITER", JV.null), ("NULL_READER", JV.null), ("commonStrings", JV.null), ("nullUtil", JV.null), ("streamUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("nullOutputStream_0", #[], true, m_nullOutputStream_0), 
        ("nullWriter_0", #[], true, m_nullWriter_0), 
        ("nullReader_0", #[], true, m_nullReader_0), 
        ("loadFileAsList_3", #["InputStream", "int", "byteArr"], false, m_loadFileAsList_3), 
        ("loadFileAsListReturnLine_4", #["InputStream", "int", "byteArr", "int"], false, m_loadFileAsListReturnLine_4), 
        ("createStringFromArrayOfStrings_1", #["StringArr"], false, m_createStringFromArrayOfStrings_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimpleFileUtil


