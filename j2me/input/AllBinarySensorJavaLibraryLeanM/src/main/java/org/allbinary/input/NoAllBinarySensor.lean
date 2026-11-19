-- Generated Code Do Not Modify
-- package org.allbinary.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoAllBinarySensor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoAllBinarySensor" "instance" (<- JR.new "NoAllBinarySensor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoAllBinarySensor" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinarySensor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoAllBinarySensor",
    javaName := "org.allbinary.input.NoAllBinarySensor",
    super := "AllBinarySensor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoAllBinarySensor


