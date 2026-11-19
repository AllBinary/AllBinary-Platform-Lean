-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.damage
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ExplosionResources

def jfields (this : JV) : JM JV := do
    JR.setField this "EXPLOSION_90_RESOURCE" (JV.str "/explosion_sprite_90_by_90.png")
    JR.setField this "EXPLOSION_60_RESOURCE" (JV.str "/explosion_sprite_60_by_60.png")
    JR.setField this "HALF_EXPLOSION_RESOURCE" (JV.str "/explosion_sprite_30_by_30.png")
    JR.setField this "THIRD_EXPLOSION_RESOURCE" (JV.str "/explosion_sprite_15_by_15.png")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ExplosionResources" "instance" (<- JR.new "ExplosionResources" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ExplosionResources" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ExplosionResources",
    javaName := "org.allbinary.game.combat.damage.ExplosionResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EXPLOSION_90_RESOURCE", JV.null), ("EXPLOSION_60_RESOURCE", JV.null), ("HALF_EXPLOSION_RESOURCE", JV.null), ("THIRD_EXPLOSION_RESOURCE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ExplosionResources


