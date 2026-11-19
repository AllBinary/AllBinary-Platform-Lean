-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbFileInputStream

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFromAbFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    return (<- JR.new "AbFileInputStream" #[(<- JR.call (<- JR.callStatic "AbFileNativeUtil" "get_1" #[l_file]) "getPath_0" #[])])


def m_createFromFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    return (<- JR.new "AbFileInputStream" #[(<- JR.call l_file "getPath_0" #[])])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "FileInputStream" this #[l_name]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbFileInputStream",
    javaName := "org.allbinary.logic.io.AbFileInputStream",
    super := "FileInputStream",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createFromAbFile_1", #["AbFile"], true, m_createFromAbFile_1), 
        ("createFromFile_1", #["File"], true, m_createFromFile_1), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbFileInputStream


