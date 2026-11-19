-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.resources
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OnDemandResourcesFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_size_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.getStatic "OnDemandResources" "NULL_ON_DEMAND_RESOURCES")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OnDemandResourcesFactory",
    javaName := "org.allbinary.game.layer.resources.OnDemandResourcesFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("size_0", #[], false, m_size_0), 
        ("remove_1", #["int"], false, m_remove_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OnDemandResourcesFactory


