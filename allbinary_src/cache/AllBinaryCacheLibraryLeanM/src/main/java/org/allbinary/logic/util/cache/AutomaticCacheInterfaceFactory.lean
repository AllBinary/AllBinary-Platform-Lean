-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AutomaticCacheInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_cacheType : JV := (JR.arg jargs 1)
    let mut l_cachePolicy : JV := (JR.arg jargs 2)
    throw (<- JR.new "Exception" #[(<- JR.concat (JV.str "No such ") (<- JR.call l_cacheType "toString_0" #[]))])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AutomaticCacheInterfaceFactory",
    javaName := "org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_3", #["CacheableInterfaceFactoryInterface", "CacheType", "CachePolicy"], true, m_getInstance_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AutomaticCacheInterfaceFactory


