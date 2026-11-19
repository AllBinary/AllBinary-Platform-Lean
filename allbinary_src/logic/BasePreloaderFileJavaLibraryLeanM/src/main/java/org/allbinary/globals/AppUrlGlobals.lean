-- Generated Code Do Not Modify
-- package org.allbinary.globals
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AppUrlGlobals

def jfields (this : JV) : JM JV := do
    JR.setField this "path" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AppUrlGlobals" "NULL_APP_URL_GLOBALS" (<- JR.new "AppUrlGlobals" #[])
    pure JV.null


def m_isTestingMode_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getWebappPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "path")


def m_setWebappPath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_path : JV := (JR.arg jargs 0)
    JR.setField this "path" l_path
    if JR.truth (JR.not ((<- JR.cor (<- JR.call (<- JR.getField this "path") "endsWith_1" #[(JV.str "\\")]) (do pure (<- JR.call (<- JR.getField this "path") "endsWith_1" #[(JV.str "/")]))))) then
        JR.setField this "path" (<- JR.concat (<- JR.getField this "path") (JV.str "\\"))
        pure ()
    pure JV.null


def m_getTestHtmlPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_getMainPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "path")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "UrlGlobalsInterface" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AppUrlGlobals",
    javaName := "org.allbinary.globals.AppUrlGlobals",
    super := "UrlGlobalsInterface",
    interfaces := #[],
    isInterface := false,
    fields := #[("path", JV.null)],
    statics := #[("NULL_APP_URL_GLOBALS", JV.null)],
    methods := #[
        ("isTestingMode_0", #[], false, m_isTestingMode_0), 
        ("getWebappPath_0", #[], false, m_getWebappPath_0), 
        ("setWebappPath_1", #["String"], false, m_setWebappPath_1), 
        ("getTestHtmlPath_0", #[], false, m_getTestHtmlPath_0), 
        ("getMainPath_0", #[], false, m_getMainPath_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AppUrlGlobals


