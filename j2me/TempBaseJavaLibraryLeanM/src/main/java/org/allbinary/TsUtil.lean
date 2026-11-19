-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TsUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TsUtil" "instance" (<- JR.new "TsUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TsUtil" "instance")


def m_longBitsToDouble_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bits : JV := (JR.asJ (JR.arg jargs 0))
    return (JR.asD (<- JR.callStatic "Double" "longBitsToDouble_1" #[l_bits]))


def m_intBitsToFloat_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bits : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asF (<- JR.callStatic "Float" "intBitsToFloat_1" #[l_bits]))


def m_hashCode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    return (JR.asI (<- JR.call l_anyType "hashCode_0" #[]))


def m_waitFor_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_any : JV := (JR.arg jargs 0)
    let mut l_timeoutMillis : JV := (JR.asJ (JR.arg jargs 1))
    let mut l_anyType : JV := l_any
    let _ := (<- JR.call l_anyType "wait_1" #[l_timeoutMillis])
    pure JV.null


def m_compareTo_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_a : JV := (JR.arg jargs 0)
    let mut l_b : JV := (JR.arg jargs 1)
    return (JR.asI (<- JR.call l_a "compareTo_1" #[l_b]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TsUtil",
    javaName := "org.allbinary.TsUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("longBitsToDouble_1", #["long"], false, m_longBitsToDouble_1), 
        ("intBitsToFloat_1", #["int"], false, m_intBitsToFloat_1), 
        ("hashCode_1", #["Any"], false, m_hashCode_1), 
        ("waitFor_2", #["Any", "long"], false, m_waitFor_2), 
        ("compareTo_2", #["String", "String"], false, m_compareTo_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TsUtil


