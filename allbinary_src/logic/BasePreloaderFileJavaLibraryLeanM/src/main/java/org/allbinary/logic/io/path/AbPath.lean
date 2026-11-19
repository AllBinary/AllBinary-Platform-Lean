-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.path
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbPath

def jfields (this : JV) : JM JV := do
    JR.setField this "commonSeps" (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    JR.setField this "abPathData" (<- JR.callStatic "AbPathData" "getInstance_0" #[])
    JR.setField this "abPathUtil" (<- JR.callStatic "PathUtil" "getInstance_0" #[])
    JR.setField this "EMPTY_STRING" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "schema" (<- JR.getField this "EMPTY_STRING")
    JR.setField this "path" (<- JR.getField this "EMPTY_STRING")
    JR.setField this "nameP" (<- JR.getField this "EMPTY_STRING")
    JR.setField this "hasSchemaP" (JV.bool false)
    JR.setField this "numberOfSeps" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createAbPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_EMPTY_STRING : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
        return (<- JR.new "AbPath" #[l_EMPTY_STRING, l_EMPTY_STRING])
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_ex : JV := jex0
            throw (<- JR.new "RuntimeException" #[])
        else
            throw jex0
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "schema" (<- JR.getField this "EMPTY_STRING")
    let _ := (<- JR.call this "setPath_1" #[(<- JR.getField (<- JR.getField this "abPathData") "SEPARATOR")])
    JR.setField this "nameP" (<- JR.getField this "EMPTY_STRING")
    pure JV.null


def m_getSchema_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aPath : JV := (JR.arg jargs 0)
    let mut l_beginIndex : JV := (JR.asI (<- JR.call l_aPath "indexOf_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "COLON")]))
    if JR.truth (<- JR.ge l_beginIndex (JV.int 0)) then
        JR.setField this "hasSchemaP" (JV.bool true)
        return (<- JR.call l_aPath "substring_2" #[(JV.int 0), l_beginIndex])
    JR.setField this "hasSchemaP" (JV.bool false)
    return (<- JR.getField this "EMPTY_STRING")


def m_hasSchema_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hasSchemaP")


def m_getPathFromPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aPath : JV := (JR.arg jargs 0)
    let mut l_filePathData : JV := (<- JR.callStatic "FilePathData" "getInstance_0" #[])
    let mut l_tempPath : JV := l_aPath
    if JR.truth (JR.not (<- JR.call this "hasSchema_0" #[])) then
        l_tempPath := (<- JR.call (<- JR.getField this "abPathUtil") "adjustStart_1" #[l_tempPath])
        pure ()
    else
        let mut l_beginIndex : JV := (JR.asI (<- JR.call l_tempPath "indexOf_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "COLON")]))
        if JR.truth (<- JR.ge l_beginIndex (JV.int 0)) then
            l_beginIndex := (JR.inc l_beginIndex)
            repeat
                if !(JR.truth (<- JR.cor (<- JR.eq (<- JR.call l_tempPath "charAt_1" #[l_beginIndex]) (<- JR.getField (<- JR.getField this "abPathData") "SEPARATORCHAR")) (do pure (<- JR.eq (<- JR.call l_tempPath "charAt_1" #[l_beginIndex]) (<- JR.getField l_filePathData "SEPARATORCHAR"))))) then break
                l_beginIndex := (JR.inc l_beginIndex)
                JR.setField this "numberOfSeps" (JR.inc (<- JR.getField this "numberOfSeps"))
                if JR.truth (<- JR.gt (<- JR.getField this "numberOfSeps") (JV.int 2)) then
                    throw (<- JR.new "Exception" #[(JV.str "Should Not Have More Than Two Seps")])
                pure ()
            l_tempPath := (<- JR.call l_tempPath "substring_2" #[l_beginIndex, (<- JR.call l_tempPath "length_0" #[])])
            pure ()
        pure ()
    return l_tempPath


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    JR.setField this "nameP" l_name
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "nameP")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    if JR.truth (<- JR.call this "hasSchema_0" #[]) then
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "schema")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "AbPath" "NETWORK_SEP")])
        pure ()
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getPath_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "nameP")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_toFileSystemString_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call this "hasSchema_0" #[]) then
        let mut l_filePathData : JV := (<- JR.callStatic "FilePathData" "getInstance_0" #[])
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "schema")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "COLON")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_filePathData "PATH_START")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callStatic "FilePathUtil" "adjust_1" #[(<- JR.call this "getPath_0" #[])])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "nameP")])
        return (<- JR.call l_stringBuffer "toString_0" #[])
    else
        return (<- JR.concat (<- JR.callStatic "FilePathUtil" "adjust_1" #[(<- JR.call this "getPath_0" #[])]) (<- JR.getField this "nameP"))
    pure JV.null


def m_getPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "path")


def m_setPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    JR.setField this "path" l_path
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aPath : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    if JR.truth (JR.not (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_aPath])) then
        JR.setField this "schema" (<- JR.call this "getSchema_1" #[l_aPath])
        JR.setField this "nameP" l_name
        JR.setField this "path" (<- JR.call (<- JR.getField this "abPathUtil") "adjustEnd_1" #[(<- JR.call (<- JR.getField this "abPathUtil") "adjust_1" #[(<- JR.call this "getPathFromPath_1" #[l_aPath])])])
        pure ()
    else
        let _ := (<- JR.call this "init_0" #[])
        if JR.truth (JR.not (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_name])) then
            JR.setField this "nameP" l_name
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "AbPath",
    javaName := "org.allbinary.logic.io.path.AbPath",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonSeps", JV.null), ("abPathData", JV.null), ("abPathUtil", JV.null), ("EMPTY_STRING", JV.null), ("schema", JV.null), ("path", JV.null), ("nameP", JV.null), ("hasSchemaP", (JV.bool false)), ("numberOfSeps", (JV.int 0))],
    statics := #[("NETWORK_SEP", (JV.str ":/"))],
    methods := #[
        ("createAbPath_0", #[], true, m_createAbPath_0), 
        ("init_0", #[], false, m_init_0), 
        ("getSchema_1", #["String"], false, m_getSchema_1), 
        ("hasSchema_0", #[], false, m_hasSchema_0), 
        ("getPathFromPath_1", #["String"], false, m_getPathFromPath_1), 
        ("setName_1", #["String"], false, m_setName_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("toFileSystemString_0", #[], false, m_toFileSystemString_0), 
        ("getPath_0", #[], false, m_getPath_0), 
        ("setPath_1", #["String"], false, m_setPath_1), 
        ("jinit_2", #["String", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbPath


