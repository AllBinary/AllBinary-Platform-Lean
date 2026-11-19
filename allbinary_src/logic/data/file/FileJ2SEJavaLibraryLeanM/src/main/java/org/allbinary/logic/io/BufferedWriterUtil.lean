-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BufferedWriterUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "commonLabels" (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    JR.setField this "REMOVING_OLD" (JV.str "Remove old for overwriting: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BufferedWriterUtil" "instance" (<- JR.new "BufferedWriterUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BufferedWriterUtil" "instance")


def m_overwrite_2_String_String (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_data : JV := (JR.arg jargs 1)
    let mut l_abFile : JV := (<- JR.callStatic "AbFile" "createAbFile_1" #[l_path])
    if JR.truth (<- JR.call l_abFile "exists_0" #[]) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat (<- JR.getField this "REMOVING_OLD") l_path), this, (<- JR.getField (<- JR.getField this "commonStrings") "CREATE")])
        let _ := (<- JR.call l_abFile "delete_0" #[])
        pure ()
    else
        let mut l_name : JV := (<- JR.call (<- JR.callStatic "AbPathData" "getInstance_0" #[]) "removeNameFromPath_1" #[l_path])
        let mut l_abFileDirectory : JV := (<- JR.callStatic "AbFile" "createAbFile_1" #[l_name])
        if JR.truth (<- JR.call l_abFileDirectory "exists_0" #[]) then
            pure ()
        else
            let mut l_stringBuilder : JV := (<- JR.new "StringMaker" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringBuilder "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "CREATE")]) "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "COLON_SEP")]) "append_1" #[l_name]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "CREATE")])
            let mut l_result : JV := (<- JR.call l_abFileDirectory "mkdirs_0" #[])
            let _ := (<- JR.call l_stringBuilder "delete_2" #[(JV.int 0), (<- JR.call l_stringBuilder "length_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringBuilder "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "RESULT_")]) "appendboolean_1" #[l_result]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "CREATE")])
            pure ()
        pure ()
    let _ := (<- JR.call this "write_2" #[l_abFile, l_data])
    pure JV.null


def m_overwrite_2_AbFile_String (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abFile : JV := (JR.arg jargs 0)
    let mut l_data : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.call l_abFile "exists_0" #[]) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat (<- JR.getField this "REMOVING_OLD") (<- JR.call l_abFile "getPath_0" #[])), this, (<- JR.getField (<- JR.getField this "commonStrings") "CREATE")])
        let _ := (<- JR.call l_abFile "delete_0" #[])
        pure ()
    else
        let mut l_name : JV := (<- JR.call (<- JR.callStatic "AbPathData" "getInstance_0" #[]) "removeNameFromPath_1" #[(<- JR.call l_abFile "getAbsolutePath_0" #[])])
        let mut l_abFileDirectory : JV := (<- JR.callStatic "AbFile" "createAbFile_1" #[l_name])
        if JR.truth (<- JR.call l_abFileDirectory "exists_0" #[]) then
            pure ()
        else
            let mut l_stringBuilder : JV := (<- JR.new "StringMaker" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringBuilder "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "CREATE")]) "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "COLON_SEP")]) "append_1" #[l_name]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "CREATE")])
            let mut l_result : JV := (<- JR.call l_abFileDirectory "mkdirs_0" #[])
            let _ := (<- JR.call l_stringBuilder "delete_2" #[(JV.int 0), (<- JR.call l_stringBuilder "length_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringBuilder "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "RESULT_")]) "appendboolean_1" #[l_result]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "CREATE")])
            pure ()
        pure ()
    let _ := (<- JR.call this "write_2" #[l_abFile, l_data])
    pure JV.null


def m_write_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abFile : JV := (JR.arg jargs 0)
    let mut l_data : JV := (JR.arg jargs 1)
    let mut l_fileOut : JV := (<- JR.new "BufferedWriter" #[(<- JR.new "FileWriter" #[(<- JR.callStatic "AbFileNativeUtil" "get_1" #[l_abFile])])])
    let _ := (<- JR.call l_fileOut "write_3" #[l_data, (JV.int 0), (<- JR.call l_data "length_0" #[])])
    let _ := (<- JR.call l_fileOut "newLine_0" #[])
    let _ := (<- JR.call l_fileOut "flush_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BufferedWriterUtil",
    javaName := "org.allbinary.logic.io.BufferedWriterUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("commonLabels", JV.null), ("REMOVING_OLD", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("overwrite_2", #["String", "String"], false, m_overwrite_2_String_String), 
        ("overwrite_2", #["AbFile", "String"], false, m_overwrite_2_AbFile_String), 
        ("write_2", #["AbFile", "String"], false, m_write_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BufferedWriterUtil


