-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FileFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FileFactory" "instance" (<- JR.new "FileFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FileFactory" "instance")


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    return (<- JR.callStatic "AbFile" "createAbFileFromRawPath_1" #[l_filePath])


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    let mut l_childFilePath : JV := (JR.arg jargs 1)
    return (<- JR.callStatic "AbFile" "createAbFileWithChild_2" #[l_file, l_childFilePath])


def m_isFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_file : JV := (<- JR.callStatic "AbFile" "createAbFile_1" #[l_path])
    if JR.truth (<- JR.call l_file "exists_0" #[]) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FileFactory",
    javaName := "org.allbinary.logic.io.file.FileFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_1", #["String"], false, m_getInstance_1), 
        ("getInstance_2", #["AbFile", "String"], false, m_getInstance_2), 
        ("isFile_1", #["String"], false, m_isFile_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FileFactory


