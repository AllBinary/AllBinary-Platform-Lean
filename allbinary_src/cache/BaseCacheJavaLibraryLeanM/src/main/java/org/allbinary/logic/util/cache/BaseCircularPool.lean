-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseCircularPool

def jfields (this : JV) : JM JV := do
    JR.setField this "circularIndexUtil" (<- JR.getStatic "CircularIndexUtil" "NULL_CIRCULAR_INDEX_UTIL")
    JR.setField this "OBJECT_ARRAY" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getNextInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (<- JR.aget (<- JR.getField this "OBJECT_ARRAY") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    return l_anyType


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryObjectFactoryInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "setIndex_1" #[(JV.int 0)])
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getSize_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.getField this "OBJECT_ARRAY") l_index (<- JR.call l_allBinaryObjectFactoryInterface "getInstance_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField this "OBJECT_ARRAY") l_index)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseCircularPool",
    javaName := "org.allbinary.logic.util.cache.BaseCircularPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("circularIndexUtil", JV.null), ("OBJECT_ARRAY", JV.null)],
    statics := #[],
    methods := #[
        ("getNextInstance_0", #[], false, m_getNextInstance_0), 
        ("init_1", #["AllBinaryObjectFactoryInterface"], false, m_init_1), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseCircularPool


