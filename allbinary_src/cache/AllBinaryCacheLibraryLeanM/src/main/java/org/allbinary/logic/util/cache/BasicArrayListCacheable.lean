-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicArrayListCacheable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicArrayListD" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicArrayListCacheable",
    javaName := "org.allbinary.logic.util.cache.BasicArrayListCacheable",
    super := "BasicArrayListD",
    interfaces := #["CacheableInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getKey_0", #[], false, m_getKey_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicArrayListCacheable


