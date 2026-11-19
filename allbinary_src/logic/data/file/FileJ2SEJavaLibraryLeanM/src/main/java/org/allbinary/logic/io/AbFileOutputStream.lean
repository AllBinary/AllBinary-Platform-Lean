-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbFileOutputStream

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFromAbFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    return (<- JR.new "AbFileOutputStream" #[(<- JR.call l_file "getPath_0" #[]), (JV.bool false)])


def m_createFromAbFileAppend_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    let mut l_append : JV := (JR.arg jargs 1)
    return (<- JR.new "AbFileOutputStream" #[(<- JR.call l_file "getPath_0" #[]), l_append])


def m_createFromFilePath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    return (<- JR.new "AbFileOutputStream" #[l_name, (JV.bool false)])


def m_createFromFilePathAppend_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_append : JV := (JR.arg jargs 1)
    return (<- JR.new "AbFileOutputStream" #[l_name, l_append])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_append : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "FileOutputStream" this #[l_name, l_append]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbFileOutputStream",
    javaName := "org.allbinary.logic.io.AbFileOutputStream",
    super := "FileOutputStream",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createFromAbFile_1", #["AbFile"], true, m_createFromAbFile_1), 
        ("createFromAbFileAppend_2", #["AbFile", "boolean"], true, m_createFromAbFileAppend_2), 
        ("createFromFilePath_1", #["String"], true, m_createFromFilePath_1), 
        ("createFromFilePathAppend_2", #["String", "boolean"], true, m_createFromFilePathAppend_2), 
        ("jinit_2", #["String", "boolean"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbFileOutputStream


