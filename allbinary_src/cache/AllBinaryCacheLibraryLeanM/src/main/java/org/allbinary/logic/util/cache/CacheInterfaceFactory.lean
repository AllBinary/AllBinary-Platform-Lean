-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CacheInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheType : JV := (JR.arg jargs 0)
    let mut l_cachePolicy : JV := (JR.arg jargs 1)
    throw (<- JR.new "Exception" #[(<- JR.concat (JV.str "No such ") (<- JR.call l_cacheType "toString_0" #[]))])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CacheInterfaceFactory",
    javaName := "org.allbinary.logic.util.cache.CacheInterfaceFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_2", #["CacheType", "CachePolicy"], true, m_getInstance_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CacheInterfaceFactory


