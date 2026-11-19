-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbstractArrayListPool

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "buffers" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "buffers") "add_1" #[l_cacheableInterface])
    pure JV.null


def m_addArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaces : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_cacheableInterfaces))) then break
            let _ := (<- JR.call (<- JR.getField this "buffers") "add_1" #[(<- JR.aget l_cacheableInterfaces l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "cacheableInterfaceFactoryInterface" l_cacheableInterfaceFactoryInterface
    pure this

initialize JR.registerClass {
    name := "AbstractArrayListPool",
    javaName := "org.allbinary.logic.util.cache.AbstractArrayListPool",
    super := "Object",
    interfaces := #["PoolInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("buffers", JV.null), ("cacheableInterfaceFactoryInterface", JV.null)],
    statics := #[],
    methods := #[
        ("clear_0", #[], false, m_clear_0), 
        ("remove_1", #["Any"], false, m_remove_1), 
        ("add_1", #["CacheableInterface"], false, m_add_1), 
        ("addArray_1", #["CacheableInterfaceArr"], false, m_addArray_1), 
        ("jinit_1", #["CacheableInterfaceFactoryInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbstractArrayListPool


