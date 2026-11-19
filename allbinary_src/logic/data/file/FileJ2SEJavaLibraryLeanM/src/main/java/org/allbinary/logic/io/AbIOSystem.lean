-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbIOSystem

def jfields (this : JV) : JM JV := do
    JR.setField this "type" (JV.str "java.io")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AbIOSystem" "instance" (<- JR.new "AbIOSystem" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AbIOSystem" "instance")


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "type")


def m_isType_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_type : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "type") "compareTo_1" #[l_type]) (JV.int 0)) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbIOSystem",
    javaName := "org.allbinary.logic.io.AbIOSystem",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("type", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("isType_1", #["String"], false, m_isType_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbIOSystem


