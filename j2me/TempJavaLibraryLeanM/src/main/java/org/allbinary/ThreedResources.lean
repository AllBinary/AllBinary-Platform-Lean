-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThreedResources

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ThreedResources" "threedResources" (<- JR.new "ThreedResources" #[])
    pure JV.null


def m_getThreedResources_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ThreedResources" "threedResources")


def m_add_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ThreedResources",
    javaName := "org.allbinary.ThreedResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("threedResources", JV.null)],
    methods := #[
        ("getThreedResources_0", #[], true, m_getThreedResources_0), 
        ("add_0", #[], false, m_add_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThreedResources


