-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HudResources

def jfields (this : JV) : JM JV := do
    JR.setField this "RESOURCE_LIFE" (JV.str "/hud_life_10_by_10.png")
    JR.setField this "RESOURCE_HEALTH" (JV.str "/hud_health_10_by_10.png")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HudResources" "instance" (<- JR.new "HudResources" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HudResources" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HudResources",
    javaName := "org.allbinary.game.ag.layer.hud.basic.HudResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("RESOURCE_LIFE", JV.null), ("RESOURCE_HEALTH", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HudResources


