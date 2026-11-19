-- Generated Code Do Not Modify
-- package org.allbinary.resources
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeyValueFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "MAP" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "KeyValueFactory" "instance" (<- JR.new "KeyValueFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "KeyValueFactory" "instance")


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "MAP") "containsKey_1" #[l_key])) then
        return l_key
    return (<- JR.call (<- JR.getField this "MAP") "get_1" #[l_key])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "KeyValueFactory",
    javaName := "org.allbinary.resources.KeyValueFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("MAP", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("get_1", #["String"], false, m_get_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeyValueFactory


