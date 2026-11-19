-- Generated Code Do Not Modify
-- package org.allbinary.android
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AndroidInfoFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "version" (JR.asI (JV.int 8))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AndroidInfoFactory" "instance" (<- JR.new "AndroidInfoFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AndroidInfoFactory" "instance")


def m_getVersion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "version"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AndroidInfoFactory",
    javaName := "org.allbinary.android.AndroidInfoFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("version", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getVersion_0", #[], false, m_getVersion_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AndroidInfoFactory


