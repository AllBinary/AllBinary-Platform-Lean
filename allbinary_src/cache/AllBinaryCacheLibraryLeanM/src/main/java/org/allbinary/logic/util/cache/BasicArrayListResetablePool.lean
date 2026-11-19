-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicArrayListResetablePool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getInherited this "BasicArrayListResetablePool" "buffers") "size_0" #[]))
    if JR.truth (<- JR.gt l_size (JV.int 0)) then
        return (<- JR.call (<- JR.getInherited this "BasicArrayListResetablePool" "buffers") "removeAt_1" #[(<- JR.sub l_size (JV.int 1))])
    else
        return (<- JR.call (<- JR.getInherited this "BasicArrayListResetablePool" "cacheableInterfaceFactoryInterface") "getInstance_1" #[l_key])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AbstractArrayListPool" this #[l_cacheableInterfaceFactoryInterface]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicArrayListResetablePool",
    javaName := "org.allbinary.logic.util.cache.BasicArrayListResetablePool",
    super := "AbstractArrayListPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("clear_0", #[], false, m_clear_0), 
        ("remove_1", #["Any"], false, m_remove_1), 
        ("jinit_1", #["CacheableInterfaceFactoryInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicArrayListResetablePool


