-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GenericOperatingSystem

def jfields (this : JV) : JM JV := do
    JR.setField this "characterSet" (<- JR.new "CharacterSet" #[])
    JR.setField this "scalable" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "osName")


def m_getVersion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "osVersion")


def m_getArch_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "osArch")


def m_getCharacterSet_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "characterSet")


def m_isOverScan_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getOverScanXPercent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 100))


def m_getOverScanYPercent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 100))


def m_isScalable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "scalable")


def m_isAutoHide_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_NEW_LINE : JV := (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "NEW_LINE")
    let mut l_osBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_osBuffer "append_1" #[(JV.str "Operating System Info: \n")])
    let _ := (<- JR.call l_osBuffer "append_1" #[(<- JR.call this "getName_0" #[])])
    let _ := (<- JR.call l_osBuffer "append_1" #[l_NEW_LINE])
    let _ := (<- JR.call l_osBuffer "append_1" #[(<- JR.call this "getArch_0" #[])])
    let _ := (<- JR.call l_osBuffer "append_1" #[l_NEW_LINE])
    let _ := (<- JR.call l_osBuffer "append_1" #[(<- JR.call this "getVersion_0" #[])])
    let _ := (<- JR.call l_osBuffer "append_1" #[l_NEW_LINE])
    let _ := (<- JR.call l_osBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.call this "getCharacterSet_0" #[])])])
    let _ := (<- JR.call l_osBuffer "append_1" #[l_NEW_LINE])
    return (<- JR.call l_osBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_systemProperties : JV := (<- JR.callStatic "SystemProperties" "getInstance_0" #[])
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    let mut l_EMPTY_STRING : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[(<- JR.call l_systemProperties "getName_0" #[])]) then
        JR.setField this "osName" l_EMPTY_STRING
        pure ()
    else
        JR.setField this "osName" (<- JR.call l_systemProperties "getName_0" #[])
        pure ()
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[(<- JR.call l_systemProperties "getArch_0" #[])]) then
        JR.setField this "osArch" l_EMPTY_STRING
        pure ()
    else
        JR.setField this "osArch" (<- JR.call l_systemProperties "getArch_0" #[])
        pure ()
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[(<- JR.call l_systemProperties "getVersion_0" #[])]) then
        JR.setField this "osVersion" l_EMPTY_STRING
        pure ()
    else
        JR.setField this "osVersion" (<- JR.call l_systemProperties "getVersion_0" #[])
        pure ()
    pure this

initialize JR.registerClass {
    name := "GenericOperatingSystem",
    javaName := "org.allbinary.logic.system.os.GenericOperatingSystem",
    super := "Object",
    interfaces := #["OperatingSystemInterface"],
    isInterface := false,
    fields := #[("osName", JV.null), ("osArch", JV.null), ("osVersion", JV.null), ("characterSet", JV.null), ("scalable", (JV.bool false))],
    statics := #[],
    methods := #[
        ("getName_0", #[], false, m_getName_0), 
        ("getVersion_0", #[], false, m_getVersion_0), 
        ("getArch_0", #[], false, m_getArch_0), 
        ("getCharacterSet_0", #[], false, m_getCharacterSet_0), 
        ("isOverScan_0", #[], false, m_isOverScan_0), 
        ("getOverScanXPercent_0", #[], false, m_getOverScanXPercent_0), 
        ("getOverScanYPercent_0", #[], false, m_getOverScanYPercent_0), 
        ("isScalable_0", #[], false, m_isScalable_0), 
        ("isAutoHide_0", #[], false, m_isAutoHide_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GenericOperatingSystem


