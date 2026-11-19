-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbFile

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AbFile" "NULL_FILE" (<- JR.callStatic "AbFile" "createAbFileFromRawPath_1" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    pure JV.null


def m_createAbFileWithChild_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    let mut l_childPathName : JV := (JR.arg jargs 1)
    return (<- JR.new "AbFile" #[(<- JR.new "File" #[(<- JR.call l_file "getFile_0" #[]), l_childPathName])])


def m_createAbFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    return (<- JR.new "AbFile" #[(<- JR.new "File" #[(<- JR.call (<- JR.new "AbPath" #[l_filePath, (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")]) "toFileSystemString_0" #[])])])


def m_createAbFilePathAndName_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    let mut l_fileName : JV := (JR.arg jargs 1)
    return (<- JR.new "AbFile" #[(<- JR.new "File" #[(<- JR.call (<- JR.new "AbPath" #[l_filePath, (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")]) "toFileSystemString_0" #[]), l_fileName])])


def m_createAbFileFromAbPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abPath : JV := (JR.arg jargs 0)
    return (<- JR.new "AbFile" #[(<- JR.new "File" #[(<- JR.call l_abPath "toFileSystemString_0" #[])])])


def m_createAbFileFromRawPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    return (<- JR.new "AbFile" #[(<- JR.new "File" #[l_filePath])])


def m_getFile_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "file")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getName_0" #[])


def m_getParent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getParent_0" #[])


def m_getParentFile_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getParentFile_0" #[])


def m_getPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getPath_0" #[])


def m_isAbsolute_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "isAbsolute_0" #[])


def m_getAbsolutePath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getAbsolutePath_0" #[])


def m_getAbsoluteFile_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getAbsoluteFile_0" #[])


def m_getCanonicalPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getCanonicalPath_0" #[])


def m_getCanonicalFile_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "getCanonicalFile_0" #[])


def m_toURI_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "toURI_0" #[])


def m_canRead_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "canRead_0" #[])


def m_canWrite_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "canWrite_0" #[])


def m_exists_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "exists_0" #[])


def m_isDirectory_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "isDirectory_0" #[])


def m_isFile_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "isFile_0" #[])


def m_isHidden_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "isHidden_0" #[])


def m_lastModified_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.call (<- JR.getField this "file") "lastModified_0" #[]))


def m_length_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JR.toJ (<- JR.call (<- JR.getField this "file") "length_0" #[])))


def m_createNewFile_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "createNewFile_0" #[])


def m_delete_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "delete_0" #[])


def m_deleteOnExit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "file") "deleteOnExit_0" #[])
    pure JV.null


def m_list_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "list_0" #[])


def m_listWithFilter_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filter : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "file") "list_1" #[l_filter])


def m_listFiles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "listFiles_0" #[])


def m_listFilesFileNameFilter_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filter : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "file") "listFiles_1" #[l_filter])


def m_listFilesFileFilter_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filter : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "file") "listFiles_1" #[l_filter])


def m_mkdir_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "mkdir_0" #[])


def m_mkdirs_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "mkdirs_0" #[])


def m_renameTo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dest : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "file") "renameTo_1" #[(<- JR.call l_dest "getFile_0" #[])])


def m_setLastModified_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_time : JV := (JR.asJ (JR.arg jargs 0))
    return (<- JR.call (<- JR.getField this "file") "setLastModified_1" #[l_time])


def m_setReadOnly_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "setReadOnly_0" #[])


def m_setWritable_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_writable : JV := (JR.arg jargs 0)
    let mut l_ownerOnly : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.getField this "file") "setExecutable_2" #[l_writable, l_ownerOnly])


def m_setWritable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_writable : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "file") "setWritable_1" #[l_writable])


def m_setReadable_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_readable : JV := (JR.arg jargs 0)
    let mut l_ownerOnly : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.getField this "file") "setReadable_2" #[l_readable, l_ownerOnly])


def m_setReadable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_readable : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "file") "setReadable_1" #[l_readable])


def m_setExecutable_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_executable : JV := (JR.arg jargs 0)
    let mut l_ownerOnly : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.getField this "file") "setExecutable_2" #[l_executable, l_ownerOnly])


def m_setExecutable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_executable : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "file") "setExecutable_1" #[l_executable])


def m_canExecute_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "canExecute_0" #[])


def m_getTotalSpace_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.call (<- JR.getField this "file") "getTotalSpace_0" #[]))


def m_getFreeSpace_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.call (<- JR.getField this "file") "getFreeSpace_0" #[]))


def m_getUsableSpace_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.call (<- JR.getField this "file") "getUsableSpace_0" #[]))


def m_compareTo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pathname : JV := (JR.arg jargs 0)
    return (JR.asI (<- JR.call (<- JR.getField this "file") "compareTo_1" #[l_pathname]))


def m_equals_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_obj : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "equalsNotstring_2" #[(<- JR.getField this "file"), l_obj])


def m_hashCode_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "file") "hashCode_0" #[]))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "file") "toString_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "file" l_file
    pure this

initialize JR.registerClass {
    name := "AbFile",
    javaName := "org.allbinary.logic.io.file.AbFile",
    super := "Object",
    interfaces := #["AbFileInterface"],
    isInterface := false,
    fields := #[("file", JV.null)],
    statics := #[("NULL_FILE", JV.null)],
    methods := #[
        ("createAbFileWithChild_2", #["AbFile", "String"], true, m_createAbFileWithChild_2), 
        ("createAbFile_1", #["String"], true, m_createAbFile_1), 
        ("createAbFilePathAndName_2", #["String", "String"], true, m_createAbFilePathAndName_2), 
        ("createAbFileFromAbPath_1", #["AbPath"], true, m_createAbFileFromAbPath_1), 
        ("createAbFileFromRawPath_1", #["String"], true, m_createAbFileFromRawPath_1), 
        ("getFile_0", #[], false, m_getFile_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("getParent_0", #[], false, m_getParent_0), 
        ("getParentFile_0", #[], false, m_getParentFile_0), 
        ("getPath_0", #[], false, m_getPath_0), 
        ("isAbsolute_0", #[], false, m_isAbsolute_0), 
        ("getAbsolutePath_0", #[], false, m_getAbsolutePath_0), 
        ("getAbsoluteFile_0", #[], false, m_getAbsoluteFile_0), 
        ("getCanonicalPath_0", #[], false, m_getCanonicalPath_0), 
        ("getCanonicalFile_0", #[], false, m_getCanonicalFile_0), 
        ("toURI_0", #[], false, m_toURI_0), 
        ("canRead_0", #[], false, m_canRead_0), 
        ("canWrite_0", #[], false, m_canWrite_0), 
        ("exists_0", #[], false, m_exists_0), 
        ("isDirectory_0", #[], false, m_isDirectory_0), 
        ("isFile_0", #[], false, m_isFile_0), 
        ("isHidden_0", #[], false, m_isHidden_0), 
        ("lastModified_0", #[], false, m_lastModified_0), 
        ("length_0", #[], false, m_length_0), 
        ("createNewFile_0", #[], false, m_createNewFile_0), 
        ("delete_0", #[], false, m_delete_0), 
        ("deleteOnExit_0", #[], false, m_deleteOnExit_0), 
        ("list_0", #[], false, m_list_0), 
        ("listWithFilter_1", #["FilenameFilter"], false, m_listWithFilter_1), 
        ("listFiles_0", #[], false, m_listFiles_0), 
        ("listFilesFileNameFilter_1", #["FilenameFilter"], false, m_listFilesFileNameFilter_1), 
        ("listFilesFileFilter_1", #["FileFilter"], false, m_listFilesFileFilter_1), 
        ("mkdir_0", #[], false, m_mkdir_0), 
        ("mkdirs_0", #[], false, m_mkdirs_0), 
        ("renameTo_1", #["AbFile"], false, m_renameTo_1), 
        ("setLastModified_1", #["long"], false, m_setLastModified_1), 
        ("setReadOnly_0", #[], false, m_setReadOnly_0), 
        ("setWritable_2", #["boolean", "boolean"], false, m_setWritable_2), 
        ("setWritable_1", #["boolean"], false, m_setWritable_1), 
        ("setReadable_2", #["boolean", "boolean"], false, m_setReadable_2), 
        ("setReadable_1", #["boolean"], false, m_setReadable_1), 
        ("setExecutable_2", #["boolean", "boolean"], false, m_setExecutable_2), 
        ("setExecutable_1", #["boolean"], false, m_setExecutable_1), 
        ("canExecute_0", #[], false, m_canExecute_0), 
        ("getTotalSpace_0", #[], false, m_getTotalSpace_0), 
        ("getFreeSpace_0", #[], false, m_getFreeSpace_0), 
        ("getUsableSpace_0", #[], false, m_getUsableSpace_0), 
        ("compareTo_1", #["File"], false, m_compareTo_1), 
        ("equals_1", #["Any"], false, m_equals_1), 
        ("hashCode_0", #[], false, m_hashCode_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["File"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbFile


