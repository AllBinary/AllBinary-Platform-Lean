-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FileWrapperUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_wrapFiles_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_files : JV := (JR.arg jargs 0)
    try
        let mut l_abFileArray : JV := (<- JR.newArray "L" 1 #[(<- JR.alen l_files)])
        if true then
            let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen l_files) (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
                JR.aset l_abFileArray l_index (<- JR.new "AbFile" #[(<- JR.aget l_files l_index)])
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        return l_abFileArray
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "putSE_4" #[(JV.str "Exception Wrapping Files"), (JV.str "FileWrapperUtil"), (JV.str "wrapFiles"), l_e])
            return (<- JR.newArray "L" 1 #[(JV.int 0)])
        else
            throw jex0
    pure JV.null


def m_wrapFile_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    try
        return (<- JR.new "AbFile" #[l_file])
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.callStatic "PreLogUtil" "putSE_4" #[(JV.str "Exception Wrapping File"), (JV.str "FileWrapperUtil"), (JV.str "wrapFile"), l_e])
            return (<- JR.getStatic "AbFile" "NULL_FILE")
        else
            throw jex1
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FileWrapperUtil",
    javaName := "org.allbinary.logic.io.file.FileWrapperUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("wrapFiles_1", #["AnyArr"], true, m_wrapFiles_1), 
        ("wrapFile_1", #["File"], true, m_wrapFile_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FileWrapperUtil


