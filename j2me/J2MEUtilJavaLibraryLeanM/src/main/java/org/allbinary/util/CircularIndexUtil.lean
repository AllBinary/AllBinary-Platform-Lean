-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CircularIndexUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "index" (JR.asI (JV.int 0))
    JR.setField this "lastIndex" (JR.asI (JV.int 0))
    JR.setField this "size" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CircularIndexUtil" "NULL_CIRCULAR_INDEX_UTIL" (<- JR.new "CircularIndexUtil" #[(JV.int 0), (JV.int 0)])
    pure JV.null


def m_next_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.ge (<- JR.getField this "index") (<- JR.getField this "lastIndex")) then
        JR.setField this "index" (JR.asI (JV.int 0))
        pure ()
    else
        JR.setField this "index" (JR.inc (<- JR.getField this "index"))
        pure ()
    return (JR.asI (<- JR.getField this "index"))


def m_previous_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.lt (<- JR.getField this "index") (JV.int 1)) then
        JR.setField this "index" (JR.asI (<- JR.getField this "lastIndex"))
        pure ()
    else
        JR.setField this "index" (JR.dec (<- JR.getField this "index"))
        pure ()
    return (JR.asI (<- JR.getField this "index"))


def m_setIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.gt l_index (<- JR.getField this "lastIndex")) then
        return JV.null
    JR.setField this "index" (JR.asI l_index)
    pure JV.null


def m_getIndex_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "index"))


def m_createInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_max : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.new "CircularIndexUtil" #[(JV.int 0), l_max])


def m_createInstanceAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_max : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.new "CircularIndexUtil" #[l_index, l_max])


def m_setSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "size" (JR.asI l_size)
    JR.setField this "lastIndex" (JR.asI (<- JR.sub l_size (JV.int 1)))
    JR.setField this "index" (JR.asI (JV.int 0))
    pure JV.null


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "size"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "INDEX_LABEL")]) "appendint_1" #[(<- JR.getField this "index")]) "append_1" #[(JV.str "lastIndex: ")]) "appendint_1" #[(<- JR.getField this "lastIndex")]) "append_1" #[(JV.str "size: ")]) "appendint_1" #[(<- JR.getField this "size")]) "toString_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_size : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setSize_1" #[l_size])
    let _ := (<- JR.call this "setIndex_1" #[l_index])
    pure this

initialize JR.registerClass {
    name := "CircularIndexUtil",
    javaName := "org.allbinary.util.CircularIndexUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("index", (JV.int 0)), ("lastIndex", (JV.int 0)), ("size", (JV.int 0))],
    statics := #[("NULL_CIRCULAR_INDEX_UTIL", JV.null)],
    methods := #[
        ("next_0", #[], false, m_next_0), 
        ("previous_0", #[], false, m_previous_0), 
        ("setIndex_1", #["int"], false, m_setIndex_1), 
        ("getIndex_0", #[], false, m_getIndex_0), 
        ("createInstance_1", #["int"], true, m_createInstance_1), 
        ("createInstanceAt_2", #["int", "int"], true, m_createInstanceAt_2), 
        ("setSize_1", #["int"], false, m_setSize_1), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["int", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CircularIndexUtil


