-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FileStreamFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FileStreamFactory" "SINGLETON" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "FileStreamFactory" "SINGLETON") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "FileStreamFactory" "SINGLETON" (<- JR.new "FileStreamFactory" #[])
        pure ()
    return (<- JR.getStatic "FileStreamFactory" "SINGLETON")


def m_getFileInputStreamInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_fileName : JV := (JR.arg jargs 1)
    let mut l_FILEABPATH : JV := (<- JR.new "AbPath" #[l_path, l_fileName])
    let mut l_file : JV := (<- JR.callStatic "AbFile" "createAbFileFromAbPath_1" #[l_FILEABPATH])
    return (<- JR.callStatic "AbFileInputStream" "createFromAbFile_1" #[l_file])


def m_getFileOutputStreamInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_fileName : JV := (JR.arg jargs 1)
    let mut l_FILEABPATH : JV := (<- JR.new "AbPath" #[l_path, l_fileName])
    let mut l_file : JV := (<- JR.callStatic "AbFile" "createAbFileFromAbPath_1" #[l_FILEABPATH])
    if JR.truth (<- JR.call l_file "exists_0" #[]) then
        let _ := (<- JR.call l_file "delete_0" #[])
        let _ := (<- JR.call l_file "createNewFile_0" #[])
        pure ()
    return (<- JR.callStatic "AbFileOutputStream" "createFromAbFile_1" #[l_file])


def m_delete_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_fileName : JV := (JR.arg jargs 1)
    let mut l_FILEABPATH : JV := (<- JR.new "AbPath" #[l_path, l_fileName])
    let mut l_file : JV := (<- JR.callStatic "AbFile" "createAbFileFromAbPath_1" #[l_FILEABPATH])
    let _ := (<- JR.call l_file "delete_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FileStreamFactory",
    javaName := "org.allbinary.logic.io.FileStreamFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getFileInputStreamInstance_2", #["String", "String"], false, m_getFileInputStreamInstance_2), 
        ("getFileOutputStreamInstance_2", #["String", "String"], false, m_getFileOutputStreamInstance_2), 
        ("delete_2", #["String", "String"], false, m_delete_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FileStreamFactory


