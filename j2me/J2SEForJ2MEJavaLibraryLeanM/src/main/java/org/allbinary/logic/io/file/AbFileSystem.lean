-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbFileSystem

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AbFileSystem" "instance" (<- JR.new "AbFileSystem" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AbFileSystem" "instance")


def m_isDirectoryOrFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_file : JV := (<- JR.new "File" #[l_path])
    return (<- JR.cor (<- JR.call l_file "isDirectory_0" #[]) (do pure (<- JR.call l_file "isFile_0" #[])))


def m_isDirectory_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.new "File" #[l_path]) "isDirectory_0" #[])


def m_getFilesAsStringArrayForPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentDirPath : JV := (JR.arg jargs 0)
    let mut l_file : JV := (<- JR.new "File" #[l_currentDirPath])
    if JR.truth (<- JR.call l_file "exists_0" #[]) then
        return (<- JR.call l_file "list_0" #[])
    else
        return (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[])
    pure JV.null


def m_readAsString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fileName : JV := (JR.arg jargs 0)
    let mut l_bytes : JV := (<- JR.newArray "B" 1 #[(JV.int 1000000)])
    return (<- JR.call this "readAsString_2" #[l_fileName, l_bytes])


def m_readAsString_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fileName : JV := (JR.arg jargs 0)
    let mut l_bytes : JV := (JR.arg jargs 1)
    let mut l_closeable : JV := (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    try
        let mut l_idFile : JV := (<- JR.new "FileInputStream" #[l_fileName])
        l_closeable := l_idFile
        let mut l_size : JV := (JR.asI (<- JR.call l_idFile "read_1" #[l_bytes]))
        if JR.truth (<- JR.gt l_size (JV.int 0)) then
            return (<- JR.new "String" #[l_bytes, (JV.int 0), l_size])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "readAsString"), l_e])
            pure ()
        else
            throw jex0
    finally
        let _ := (<- JR.call this "close_1" #[l_closeable])
        pure ()
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_close_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_closeable : JV := (JR.arg jargs 0)
    try
        if JR.truth (<- JR.ne l_closeable JV.null) then
            let mut l_inputStream : JV := (l_closeable)
            let _ := (<- JR.call l_inputStream "close_0" #[])
            pure ()
        return (JV.bool true)
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CLOSE"), l_e])
            return (JV.bool false)
        else
            throw jex1
    pure JV.null


def m_main_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_args : JV := (JR.arg jargs 0)
    let mut l_isDirectory : JV := (<- JR.call (<- JR.callStatic "AbFileSystem" "getInstance_0" #[]) "isDirectory_1" #[(JV.str "c:")])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.concat (JV.str "isDirectory: ") l_isDirectory)])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbFileSystem",
    javaName := "org.allbinary.logic.io.file.AbFileSystem",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isDirectoryOrFile_1", #["String"], false, m_isDirectoryOrFile_1), 
        ("isDirectory_1", #["String"], false, m_isDirectory_1), 
        ("getFilesAsStringArrayForPath_1", #["String"], false, m_getFilesAsStringArrayForPath_1), 
        ("readAsString_1", #["String"], false, m_readAsString_1), 
        ("readAsString_2", #["String", "byteArr"], false, m_readAsString_2), 
        ("close_1", #["Any"], false, m_close_1), 
        ("main_1", #["StringArr"], true, m_main_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbFileSystem


