-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_J2SEUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "J2SEUtil" "instance" (<- JR.new "J2SEUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "J2SEUtil" "instance")


def m_getHashMapAsArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashMap : JV := (JR.arg jargs 0)
    let mut l_objectArray : JV := (<- JR.call (<- JR.call l_hashMap "keySet_0" #[]) "toArray_0" #[])
    return l_objectArray


def m_getMapAsArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_map : JV := (JR.arg jargs 0)
    let mut l_objectArray : JV := (<- JR.call (<- JR.call l_map "keySet_0" #[]) "toArray_0" #[])
    return l_objectArray


def m_getSetAsArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_set : JV := (JR.arg jargs 0)
    let mut l_objectArray : JV := (<- JR.call l_set "toArray_0" #[])
    return l_objectArray


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "J2SEUtil",
    javaName := "org.allbinary.J2SEUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getHashMapAsArray_1", #["HashMap"], false, m_getHashMapAsArray_1), 
        ("getMapAsArray_1", #["Map"], false, m_getMapAsArray_1), 
        ("getSetAsArray_1", #["Set"], false, m_getSetAsArray_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_J2SEUtil


