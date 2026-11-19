-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StreamUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "StreamUtil" "instance" (<- JR.new "StreamUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "StreamUtil" "instance")


def m_get_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    let mut l_outputStream : JV := (JR.arg jargs 1)
    let mut l_buffer : JV := (JR.arg jargs 2)
    let mut l_len : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (JV.bool true)) then break
        l_len := (JR.asI (<- JR.call l_inputStream "read_3" #[l_buffer, (JV.int 0), (<- JR.alen l_buffer)]))
        if JR.truth (<- JR.ne l_len (JV.int (-1))) then
            pure ()
        else
            break
        let _ := (<- JR.call l_outputStream "write_3" #[l_buffer, (JV.int 0), l_len])
        pure ()
    return l_outputStream


def m_getByteArray_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputStream : JV := (JR.arg jargs 0)
    let mut l_outputStream2 : JV := (JR.arg jargs 1)
    let mut l_byteArray : JV := (JR.arg jargs 2)
    let mut l_outputStream : JV := l_outputStream2
    try
        let _ := (<- JR.call this "get_3" #[l_inputStream, l_outputStream, l_byteArray])
        return (<- JR.call l_outputStream "toByteArray_0" #[])
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            throw l_e
        else
            throw jex0
    finally
        let _ := (<- JR.call this "close_1" #[l_outputStream])
        pure ()
    pure JV.null


def m_close_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_closeable : JV := (JR.arg jargs 0)
    try
        if JR.truth (<- JR.ne l_closeable JV.null) then
            let _ := (<- JR.call l_closeable "close_0" #[])
            pure ()
        return (JV.bool true)
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CLOSE"), l_e])
            return (JV.bool false)
        else
            throw jex1
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StreamUtil",
    javaName := "org.allbinary.logic.io.StreamUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("get_3", #["InputStream", "OutputStream", "byteArr"], false, m_get_3), 
        ("getByteArray_3", #["InputStream", "ByteArrayOutputStream", "byteArr"], false, m_getByteArray_3), 
        ("close_1", #["Closeable"], false, m_close_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StreamUtil


