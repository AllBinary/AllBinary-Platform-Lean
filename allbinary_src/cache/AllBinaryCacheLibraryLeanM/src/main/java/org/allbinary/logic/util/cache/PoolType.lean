-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PoolType

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getCacheType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "cacheType")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_POOL_TYPE : JV := (JV.str "PoolType: ")
    return (<- JR.concat l_POOL_TYPE (<- JR.call (<- JR.call this "getCacheType_0" #[]) "toString_0" #[]))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheType : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "cacheType" l_cacheType
    pure this

initialize JR.registerClass {
    name := "PoolType",
    javaName := "org.allbinary.logic.util.cache.PoolType",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("cacheType", JV.null)],
    statics := #[],
    methods := #[
        ("getCacheType_0", #[], false, m_getCacheType_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["CacheType"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PoolType


