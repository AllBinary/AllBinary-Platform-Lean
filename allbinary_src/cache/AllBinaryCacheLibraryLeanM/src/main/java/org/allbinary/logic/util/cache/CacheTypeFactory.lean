-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CacheTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NO_CACHE" (<- JR.new "CacheType" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    JR.setField this "CACHE" (<- JR.new "CacheType" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    JR.setField this "SET" (<- JR.new "CacheType" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JV.str "Set")])
    JR.setField this "CACHE_VECTOR" (<- JR.new "CacheType" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CacheTypeFactory" "instance" (<- JR.new "CacheTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CacheTypeFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CacheTypeFactory",
    javaName := "org.allbinary.logic.util.cache.CacheTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NO_CACHE", JV.null), ("CACHE", JV.null), ("SET", JV.null), ("CACHE_VECTOR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CacheTypeFactory


