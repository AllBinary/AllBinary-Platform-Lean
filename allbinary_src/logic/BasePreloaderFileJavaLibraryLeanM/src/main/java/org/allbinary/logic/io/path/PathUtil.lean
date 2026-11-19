-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.path
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PathUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "abPathData" (<- JR.callStatic "AbPathData" "getInstance_0" #[])
    JR.setField this "filePathData" (<- JR.callStatic "FilePathData" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PathUtil" "instance" (<- JR.new "PathUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PathUtil" "instance")


def m_getExtensionWithAbFilePath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abFilePath : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "abPathData") "getExtension_1" #[(<- JR.call l_abFilePath "toString_0" #[])])


def m_getExtensionWithAbPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abPath : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "abPathData") "getExtension_1" #[(<- JR.call l_abPath "toString_0" #[])])


def m_getWithoutExtensionWithAbFilePath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abFilePath : JV := (JR.arg jargs 0)
    return (<- JR.call this "getWithoutExtension_1" #[(<- JR.call l_abFilePath "toString_0" #[])])


def m_getWithoutExtensionWithAbPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abPath : JV := (JR.arg jargs 0)
    return (<- JR.call this "getWithoutExtension_1" #[(<- JR.call l_abPath "toString_0" #[])])


def m_getWithoutExtension_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    let mut l_indexOfFileExtensionDelmiter : JV := (JR.asI (<- JR.call (<- JR.getField this "abPathData") "getExtensionIndex_1" #[l_filePath]))
    let mut l_pathWithoutExtension : JV := l_filePath
    if JR.truth (<- JR.ge l_indexOfFileExtensionDelmiter (JV.int 0)) then
        l_pathWithoutExtension := (<- JR.call l_filePath "substring_2" #[(JV.int 0), l_indexOfFileExtensionDelmiter])
        pure ()
    return l_pathWithoutExtension


def m_isValid_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call this "isValidStart_1" #[l_path]) then
        if JR.truth (<- JR.call this "isValidEnd_1" #[l_path]) then
            return (JV.bool true)
        pure ()
    return (JV.bool false)


def m_isValidStart_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.call l_path "charAt_1" #[(JV.int 0)]) (<- JR.getField (<- JR.getField this "abPathData") "SEPARATORCHAR")) (do pure (<- JR.eq (<- JR.call l_path "charAt_1" #[(JV.int 0)]) (JV.char 46)))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_isValidEnd_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_path]) then
        return (JV.bool false)
    if JR.truth (<- JR.eq (<- JR.call l_path "charAt_1" #[(<- JR.sub (<- JR.call l_path "length_0" #[]) (JV.int 1))]) (<- JR.getField (<- JR.getField this "abPathData") "SEPARATORCHAR")) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_adjustStart_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call this "isValidStart_1" #[l_path])) then
        l_path := (<- JR.concat (<- JR.getField (<- JR.getField this "abPathData") "SEPARATOR") l_path)
        pure ()
    return l_path


def m_adjustEnd_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call this "isValidEnd_1" #[l_path])) then
        l_path := (<- JR.concat l_path (<- JR.getField (<- JR.getField this "abPathData") "SEPARATOR"))
        pure ()
    return l_path


def m_adjust_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_path]) then
        return (<- JR.getField (<- JR.getField this "abPathData") "SEPARATOR")
    if JR.truth (<- JR.ge (<- JR.call l_path "indexOf_1" #[(JV.str "\\")]) (JV.int 0)) then
        l_path := (<- JR.call l_path "replace_2" #[(JV.char 92), (<- JR.getField (<- JR.getField this "abPathData") "SEPARATORCHAR")])
        pure ()
    return l_path


def m_removeNameFromPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_endIndex : JV := (JR.asI (<- JR.call l_path "lastIndexOf_1" #[(<- JR.getField (<- JR.getField this "abPathData") "SEPARATOR")]))
    if JR.truth (<- JR.lt l_endIndex (JV.int 0)) then
        l_endIndex := (JR.asI (<- JR.call l_path "lastIndexOf_1" #[(<- JR.getField (<- JR.getField this "filePathData") "SEPARATORCHAR")]))
        pure ()
    if JR.truth (<- JR.lt l_endIndex (JV.int 0)) then
        return (<- JR.callStatic "AbPath" "createAbPath_0" #[])
    if JR.truth (<- JR.eq (<- JR.call l_path "length_0" #[]) (<- JR.add l_endIndex (JV.int 1))) then
        return (<- JR.call this "removeNameFromPath_1" #[(<- JR.call l_path "substring_2" #[(JV.int 0), (<- JR.sub l_endIndex (JV.int 1))])])
    else
        let mut l_pathWithoutName : JV := (<- JR.call l_path "substring_2" #[(JV.int 0), l_endIndex])
        return (<- JR.new "AbPath" #[l_pathWithoutName, (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PathUtil",
    javaName := "org.allbinary.logic.io.path.PathUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("abPathData", JV.null), ("filePathData", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getExtensionWithAbFilePath_1", #["AbFilePath"], false, m_getExtensionWithAbFilePath_1), 
        ("getExtensionWithAbPath_1", #["AbPath"], false, m_getExtensionWithAbPath_1), 
        ("getWithoutExtensionWithAbFilePath_1", #["AbFilePath"], false, m_getWithoutExtensionWithAbFilePath_1), 
        ("getWithoutExtensionWithAbPath_1", #["AbPath"], false, m_getWithoutExtensionWithAbPath_1), 
        ("getWithoutExtension_1", #["String"], false, m_getWithoutExtension_1), 
        ("isValid_1", #["String"], false, m_isValid_1), 
        ("isValidStart_1", #["String"], false, m_isValidStart_1), 
        ("isValidEnd_1", #["String"], false, m_isValidEnd_1), 
        ("adjustStart_1", #["String"], false, m_adjustStart_1), 
        ("adjustEnd_1", #["String"], false, m_adjustEnd_1), 
        ("adjust_1", #["String"], false, m_adjust_1), 
        ("removeNameFromPath_1", #["String"], false, m_removeNameFromPath_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PathUtil


