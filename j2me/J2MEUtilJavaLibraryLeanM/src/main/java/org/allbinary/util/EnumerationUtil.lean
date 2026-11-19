-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_EnumerationUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "EnumerationUtil" "instance" (<- JR.new "EnumerationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "EnumerationUtil" "instance")


def m_hasMoreElements_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_enumeration : JV := (JR.arg jargs 0)
    return (<- JR.call l_enumeration "hasMoreElements_0" #[])


def m_nextElement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_enumeration : JV := (JR.arg jargs 0)
    return (<- JR.call l_enumeration "nextElement_0" #[])


def m_getAsArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_enumeration : JV := (JR.arg jargs 0)
    let mut l_basicArrayList : JV := (<- JR.new "BasicArrayListD" #[])
    repeat
        if !(JR.truth (<- JR.call this "hasMoreElements_1" #[l_enumeration])) then break
        let _ := (<- JR.call l_basicArrayList "add_1" #[(<- JR.call this "nextElement_1" #[l_enumeration])])
        pure ()
    return (<- JR.call l_basicArrayList "toArray_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "EnumerationUtil",
    javaName := "org.allbinary.util.EnumerationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("hasMoreElements_1", #["Enumeration"], false, m_hasMoreElements_1), 
        ("nextElement_1", #["Enumeration"], false, m_nextElement_1), 
        ("getAsArray_1", #["Enumeration"], false, m_getAsArray_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_EnumerationUtil


