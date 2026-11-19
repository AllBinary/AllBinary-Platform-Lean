-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseServerInitFileUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "NULL_OUTPUT_STREAM" (<- JR.callStatic "SimpleFileUtil" "nullOutputStream_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_filePath : JV := (<- JR.getField (<- JR.callStatic "LicenseInitInfoUtil" "getInstance_0" #[]) "INITFILENAME")
        let _ := (<- JR.call (<- JR.callStatic "LicenseInitInfoUtil" "getInstance_0" #[]) "setFilePath_1" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
        if JR.truth (<- JR.call (<- JR.callStatic "FileFactory" "getInstance_0" #[]) "isFile_1" #[l_filePath]) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Using Existing License File"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
            pure ()
        else
            let _ := (<- JR.call this "write_0" #[])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_write_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fileOutputStream : JV := (<- JR.getField this "NULL_OUTPUT_STREAM")
    try
        let mut l_resourceUtil : JV := (<- JR.callStatic "ResourceUtil" "getInstance_0" #[])
        let mut l_filePath : JV := (<- JR.getField (<- JR.callStatic "LicenseInitInfoUtil" "getInstance_0" #[]) "INITFILENAME")
        let mut l_inputStream : JV := (<- JR.call l_resourceUtil "getResourceAsStream_1" #[l_filePath])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Writing Default License File"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
        let mut l_fileStreamFactory : JV := (<- JR.callStatic "FileStreamFactory" "getInstance_0" #[])
        l_fileOutputStream := (<- JR.call l_fileStreamFactory "getFileOutputStreamInstance_2" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), l_filePath])
        let mut l_b : JV := (JR.asI (JV.int 0))
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (JV.bool true)) then break
            l_b := (JR.asI (<- JR.call l_inputStream "read_0" #[]))
            if JR.truth (<- JR.eq l_b (JV.int (-1))) then
                break
            let _ := (<- JR.call l_fileOutputStream "write_1" #[l_b])
            l_index := (JR.inc l_index)
            pure ()
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat (JV.str "Wrote Bytes: ") l_index), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
        let _ := (<- JR.call l_fileOutputStream "flush_0" #[])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT"), l_e])
            pure ()
        else
            throw jex1
    finally
        let _ := (<- JR.call (<- JR.callStatic "StreamUtil" "getInstance_0" #[]) "close_1" #[l_fileOutputStream])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseServerInitFileUtil",
    javaName := "org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("NULL_OUTPUT_STREAM", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("write_0", #[], false, m_write_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseServerInitFileUtil


