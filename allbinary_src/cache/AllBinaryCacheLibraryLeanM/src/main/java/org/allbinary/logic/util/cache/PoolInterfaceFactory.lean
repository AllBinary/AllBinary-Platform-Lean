-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PoolInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_poolType : JV := (JR.arg jargs 1)
    let mut l_cachePolicy : JV := (JR.arg jargs 2)
    throw (<- JR.new "Exception" #[(<- JR.concat (JV.str "No Such PoolType: ") (<- JR.call l_poolType "toString_0" #[]))])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PoolInterfaceFactory",
    javaName := "org.allbinary.logic.util.cache.PoolInterfaceFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_3", #["CacheableInterfaceFactoryInterface", "PoolType", "CachePolicy"], true, m_getInstance_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PoolInterfaceFactory


