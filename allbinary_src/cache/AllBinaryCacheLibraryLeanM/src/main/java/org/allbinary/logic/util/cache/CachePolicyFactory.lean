-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CachePolicyFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NAME" (JV.str "lru")
    JR.setField this "MAX_TIME_THOUSAND_MAX" (<- JR.new "CachePolicy" #[(<- JR.getField this "NAME"), (<- JR.getStatic "Long" "MAX_VALUE"), (JV.int 1000)])
    JR.setField this "THIRTY_MINUTES_TEN_THOUSAND_MAX" (<- JR.new "CachePolicy" #[(<- JR.getField this "NAME"), (<- JR.mul (<- JR.mul (JV.int 1000) (JV.int 60)) (JV.int 30)), (JV.int 10000)])
    JR.setField this "THIRTY_MINUTES_FIFTY_THOUSAND_MAX" (<- JR.new "CachePolicy" #[(<- JR.getField this "NAME"), (<- JR.mul (<- JR.mul (JV.int 1000) (JV.int 60)) (JV.int 30)), (JV.int 100000)])
    JR.setField this "ONE_MINUTE_FIVE_MAX" (<- JR.new "CachePolicy" #[(<- JR.getField this "NAME"), (<- JR.mul (<- JR.mul (JV.int 1000) (JV.int 60)) (JV.int 1)), (JV.int 5)])
    JR.setField this "ONE_MINUTE_TEN_MAX" (<- JR.new "CachePolicy" #[(<- JR.getField this "NAME"), (<- JR.mul (<- JR.mul (JV.int 1000) (JV.int 60)) (JV.int 1)), (JV.int 10)])
    JR.setField this "ONE_MINUTE_ONE_HUNDRED_MAX" (<- JR.new "CachePolicy" #[(<- JR.getField this "NAME"), (<- JR.mul (<- JR.mul (JV.int 1000) (JV.int 60)) (JV.int 1)), (JV.int 100)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CachePolicyFactory" "instance" (<- JR.new "CachePolicyFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CachePolicyFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CachePolicyFactory",
    javaName := "org.allbinary.logic.util.cache.CachePolicyFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NAME", JV.null), ("MAX_TIME_THOUSAND_MAX", JV.null), ("THIRTY_MINUTES_TEN_THOUSAND_MAX", JV.null), ("THIRTY_MINUTES_FIFTY_THOUSAND_MAX", JV.null), ("ONE_MINUTE_FIVE_MAX", JV.null), ("ONE_MINUTE_TEN_MAX", JV.null), ("ONE_MINUTE_ONE_HUNDRED_MAX", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CachePolicyFactory


