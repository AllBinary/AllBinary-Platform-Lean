-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DataOutputStreamFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DataOutputStreamFactory" "instance" (<- JR.new "DataOutputStreamFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DataOutputStreamFactory" "instance")


def m_getInstanceForAbFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    let mut l_idFileOutputStream : JV := (<- JR.callStatic "AbFileOutputStream" "createFromAbFile_1" #[l_file])
    let mut l_idOutData : JV := (<- JR.new "AbDataOutputStream" #[l_idFileOutputStream])
    return l_idOutData


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    let mut l_fileName : JV := (JR.arg jargs 1)
    let mut l_fileStreamFactory : JV := (<- JR.callStatic "FileStreamFactory" "getInstance_0" #[])
    let mut l_fileOutputStream : JV := (<- JR.call l_fileStreamFactory "getFileOutputStreamInstance_2" #[l_filePath, l_fileName])
    let mut l_idOutData : JV := (<- JR.new "AbDataOutputStream" #[l_fileOutputStream])
    return l_idOutData


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DataOutputStreamFactory",
    javaName := "org.allbinary.logic.io.DataOutputStreamFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceForAbFile_1", #["AbFile"], false, m_getInstanceForAbFile_1), 
        ("getInstance_2", #["String", "String"], false, m_getInstance_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DataOutputStreamFactory


