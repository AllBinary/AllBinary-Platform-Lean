-- Generated Code Do Not Modify
-- package org.allbinary.logic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StdUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "EMPTY_VECTOR" (<- JR.call this "createVector_0" #[])
    JR.setField this "NULL_TABLE" (<- JR.call this "createHashtable_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "StdUtil" "instance" (<- JR.new "StdUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "StdUtil" "instance")


def m_createStack_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "ABStack" #[])


def m_createVector_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "ABVector" #[])


def m_createHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "ABHashtable" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StdUtil",
    javaName := "org.allbinary.logic.StdUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EMPTY_VECTOR", JV.null), ("NULL_TABLE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createStack_0", #[], false, m_createStack_0), 
        ("createVector_0", #[], false, m_createVector_0), 
        ("createHashtable_0", #[], false, m_createHashtable_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StdUtil


