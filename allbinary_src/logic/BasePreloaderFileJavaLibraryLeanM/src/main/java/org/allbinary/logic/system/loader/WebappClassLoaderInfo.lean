-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.loader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WebappClassLoaderInfo

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "WebappClassLoaderInfo" "classLoader" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_setLoader_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_classLoader : JV := (JR.arg jargs 0)
    JR.setStatic "WebappClassLoaderInfo" "classLoader" l_classLoader
    pure JV.null


def m_getLoader_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "WebappClassLoaderInfo" "classLoader")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "WebappClassLoaderInfo",
    javaName := "org.allbinary.logic.system.loader.WebappClassLoaderInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("classLoader", JV.null)],
    methods := #[
        ("setLoader_1", #["ClassLoader"], true, m_setLoader_1), 
        ("getLoader_0", #[], true, m_getLoader_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WebappClassLoaderInfo


