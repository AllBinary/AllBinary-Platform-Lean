-- Generated Code Do Not Modify
-- package org.allbinary.logic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "VectorUtil" "instance" (<- JR.new "VectorUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "VectorUtil" "instance")


def m_getSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_vector : JV := l_anyType
    return (JR.asI (<- JR.call l_vector "size_0" #[]))


def m_elementAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_vector : JV := l_anyType
    return (<- JR.call l_vector "elementAt_1" #[l_index])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "VectorUtil",
    javaName := "org.allbinary.logic.VectorUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getSize_1", #["Any"], false, m_getSize_1), 
        ("elementAt_2", #["Any", "int"], false, m_elementAt_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorUtil


