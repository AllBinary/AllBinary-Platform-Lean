-- Generated Code Do Not Modify
-- package org.allbinary.globals
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_URLGLOBALS

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "URLGLOBALS" "urlGlobalsInterface" (<- JR.getStatic "AppUrlGlobals" "NULL_APP_URL_GLOBALS")
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_urlGlobalsInterface : JV := (JR.arg jargs 0)
    JR.setStatic "URLGLOBALS" "urlGlobalsInterface" l_urlGlobalsInterface
    pure JV.null


def m_isTestingMode_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getStatic "URLGLOBALS" "urlGlobalsInterface") "isTestingMode_0" #[])


def m_getWebappPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getStatic "URLGLOBALS" "urlGlobalsInterface") "getWebappPath_0" #[])


def m_getTestHtmlPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getStatic "URLGLOBALS" "urlGlobalsInterface") "getTestHtmlPath_0" #[])


def m_getMainPath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getStatic "URLGLOBALS" "urlGlobalsInterface") "getMainPath_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "URLGLOBALS",
    javaName := "org.allbinary.globals.URLGLOBALS",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("urlGlobalsInterface", JV.null)],
    methods := #[
        ("init_1", #["UrlGlobalsInterface"], true, m_init_1), 
        ("isTestingMode_0", #[], true, m_isTestingMode_0), 
        ("getWebappPath_0", #[], true, m_getWebappPath_0), 
        ("getTestHtmlPath_0", #[], true, m_getTestHtmlPath_0), 
        ("getMainPath_0", #[], true, m_getMainPath_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_URLGLOBALS


