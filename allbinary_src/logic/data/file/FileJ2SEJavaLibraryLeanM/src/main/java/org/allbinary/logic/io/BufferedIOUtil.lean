-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BufferedIOUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_copy_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_backupFile : JV := (JR.arg jargs 0)
    let mut l_backupFileBak : JV := (JR.arg jargs 1)
    let mut l_line : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    let mut l_tmpOut : JV := (<- JR.new "BufferedWriter" #[(<- JR.new "FileWriter" #[(<- JR.callStatic "AbFileNativeUtil" "get_1" #[l_backupFileBak])])])
    let mut l_tmpIn : JV := (<- JR.new "BufferedReader" #[(<- JR.new "FileReader" #[(<- JR.callStatic "AbFileNativeUtil" "get_1" #[l_backupFile])])])
    repeat
        if !(JR.truth (<- JR.call l_tmpIn "ready_0" #[])) then break
        l_line := (<- JR.call l_tmpIn "readLine_0" #[])
        let _ := (<- JR.call l_tmpOut "write_3" #[l_line, (JV.int 0), (<- JR.call l_line "length_0" #[])])
        let _ := (<- JR.call l_tmpOut "newLine_0" #[])
        pure ()
    let _ := (<- JR.call l_tmpOut "flush_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BufferedIOUtil",
    javaName := "org.allbinary.logic.io.BufferedIOUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("copy_2", #["AbFile", "AbFile"], true, m_copy_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BufferedIOUtil


