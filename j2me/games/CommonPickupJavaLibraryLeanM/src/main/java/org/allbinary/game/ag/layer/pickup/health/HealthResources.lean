-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealthResources

def jfields (this : JV) : JM JV := do
    JR.setField this "RESOURCE" (JV.str "health_drop_20_by_20.png")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HealthResources" "SINGLETON" (<- JR.new "HealthResources" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HealthResources" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HealthResources",
    javaName := "org.allbinary.game.ag.layer.pickup.health.HealthResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("RESOURCE", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealthResources


