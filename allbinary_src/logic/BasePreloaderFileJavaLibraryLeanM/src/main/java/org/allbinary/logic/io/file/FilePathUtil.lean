-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FilePathUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_adjust_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_abPathData : JV := (<- JR.callStatic "AbPathData" "getInstance_0" #[])
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    let mut l_filePathData : JV := (<- JR.callStatic "FilePathData" "getInstance_0" #[])
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_path]) then
        return (<- JR.getField l_filePathData "PATH_START")
    l_path := (<- JR.call l_path "replace_2" #[(<- JR.getField l_abPathData "SEPARATORCHAR"), (<- JR.getField l_filePathData "SEPARATORCHAR")])
    return l_path


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FilePathUtil",
    javaName := "org.allbinary.logic.io.file.FilePathUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("adjust_1", #["String"], true, m_adjust_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FilePathUtil


