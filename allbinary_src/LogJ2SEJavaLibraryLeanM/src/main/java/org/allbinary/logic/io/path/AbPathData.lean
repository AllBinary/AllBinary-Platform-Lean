-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.path
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbPathData

def jfields (this : JV) : JM JV := do
    JR.setField this "EXTENSION_SEP" (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "PERIOD")
    JR.setField this "SEPARATORCHAR" (JR.asC (JV.char 47))
    JR.setField this "SEPARATOR" (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "FORWARD_SLASH")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AbPathData" "instance" (<- JR.new "AbPathData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AbPathData" "instance")


def m_getExtensionIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    let mut l_indexOfFileExtensionDelmiter : JV := (JR.asI (<- JR.call l_filePath "lastIndexOf_1" #[(<- JR.getField this "EXTENSION_SEP")]))
    let mut l_indexOfLatDelimiter : JV := (JR.asI (<- JR.call l_filePath "lastIndexOf_1" #[(<- JR.getField this "SEPARATORCHAR")]))
    if JR.truth (<- JR.lt l_indexOfFileExtensionDelmiter (JV.int 0)) then
        return (JR.asI (JV.int (-1)))
    if JR.truth (<- JR.lt l_indexOfFileExtensionDelmiter l_indexOfLatDelimiter) then
        return (JR.asI (JV.int (-1)))
    return (JR.asI l_indexOfFileExtensionDelmiter)


def m_getExtensionWithDot_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    let mut l_indexOfFileExtensionDelmiter : JV := (JR.asI (<- JR.call this "getExtensionIndex_1" #[l_filePath]))
    let mut l_extension : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    if JR.truth (<- JR.ge l_indexOfFileExtensionDelmiter (JV.int 0)) then
        l_extension := (<- JR.call l_filePath "substring_1" #[l_indexOfFileExtensionDelmiter])
        pure ()
    return l_extension


def m_getExtension_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    let mut l_indexOfFileExtensionDelmiter : JV := (JR.asI (<- JR.call this "getExtensionIndex_1" #[l_filePath]))
    let mut l_extension : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    if JR.truth (<- JR.ge l_indexOfFileExtensionDelmiter (JV.int 0)) then
        l_extension := (<- JR.call l_filePath "substring_1" #[(<- JR.add l_indexOfFileExtensionDelmiter (JV.int 1))])
        pure ()
    return l_extension


def m_getNameFromPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_endIndex : JV := (JR.asI (<- JR.call l_path "lastIndexOf_1" #[(<- JR.getField this "SEPARATORCHAR")]))
    if JR.truth (<- JR.lt l_endIndex (JV.int 0)) then
        l_endIndex := (JR.asI (<- JR.call l_path "lastIndexOf_1" #[(<- JR.getField (<- JR.callStatic "FilePathData" "getInstance_0" #[]) "SEPARATORCHAR")]))
        pure ()
    if JR.truth (<- JR.lt l_endIndex (JV.int 0)) then
        return l_path
    if JR.truth (<- JR.eq (<- JR.call l_path "length_0" #[]) (<- JR.add l_endIndex (JV.int 1))) then
        let mut l_categoryName : JV := (<- JR.call l_path "substring_2" #[(JV.int 0), l_endIndex])
        return (<- JR.call this "getNameFromPath_1" #[l_categoryName])
    else
        let mut l_categoryName : JV := (<- JR.call l_path "substring_1" #[(<- JR.add l_endIndex (JV.int 1))])
        return l_categoryName
    pure JV.null


def m_removeNameFromPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    let mut l_endIndex : JV := (JR.asI (<- JR.call l_path "lastIndexOf_1" #[(<- JR.getField this "SEPARATORCHAR")]))
    if JR.truth (<- JR.lt l_endIndex (JV.int 0)) then
        l_endIndex := (JR.asI (<- JR.call l_path "lastIndexOf_1" #[(<- JR.getField (<- JR.callStatic "FilePathData" "getInstance_0" #[]) "SEPARATORCHAR")]))
        pure ()
    if JR.truth (<- JR.lt l_endIndex (JV.int 0)) then
        return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    if JR.truth (<- JR.eq (<- JR.call l_path "length_0" #[]) (<- JR.add l_endIndex (JV.int 1))) then
        return (<- JR.call this "removeNameFromPath_1" #[(<- JR.call l_path "substring_2" #[(JV.int 0), (<- JR.sub l_endIndex (JV.int 1))])])
    else
        let mut l_pathWithoutName : JV := (<- JR.call l_path "substring_2" #[(JV.int 0), l_endIndex])
        return l_pathWithoutName
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbPathData",
    javaName := "org.allbinary.logic.io.path.AbPathData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EXTENSION_SEP", JV.null), ("SEPARATORCHAR", (JV.char 0)), ("SEPARATOR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getExtensionIndex_1", #["String"], false, m_getExtensionIndex_1), 
        ("getExtensionWithDot_1", #["String"], false, m_getExtensionWithDot_1), 
        ("getExtension_1", #["String"], false, m_getExtension_1), 
        ("getNameFromPath_1", #["String"], false, m_getNameFromPath_1), 
        ("removeNameFromPath_1", #["String"], false, m_removeNameFromPath_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbPathData


