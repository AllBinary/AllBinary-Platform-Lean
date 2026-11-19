-- Generated Code Do Not Modify
-- package org.allbinary.logic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABSystemWrapper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ABSystemWrapper" "instance" (<- JR.new "ABSystemWrapper" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ABSystemWrapper" "instance")


def m_arraycopy_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_src : JV := (JR.arg jargs 0)
    let mut l_srcPos : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dest : JV := (JR.arg jargs 2)
    let mut l_destPos : JV := (JR.asI (JR.arg jargs 3))
    let mut l_length : JV := (JR.asI (JR.arg jargs 4))
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_src, l_srcPos, l_dest, l_destPos, l_length])
    pure JV.null


def m_currentTimeMillis_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.callStatic "System" "currentTimeMillis_0" #[]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABSystemWrapper",
    javaName := "org.allbinary.logic.ABSystemWrapper",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("arraycopy_5", #["Any", "int", "Any", "int", "int"], false, m_arraycopy_5), 
        ("currentTimeMillis_0", #[], false, m_currentTimeMillis_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABSystemWrapper


