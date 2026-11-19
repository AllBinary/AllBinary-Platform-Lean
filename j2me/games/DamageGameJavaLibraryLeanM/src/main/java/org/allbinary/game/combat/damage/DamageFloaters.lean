-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.damage
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DamageFloaters

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DamageFloaters" "SINGLETON" (<- JR.new "DamageFloaters" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DamageFloaters" "SINGLETON")


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DamageFloaters",
    javaName := "org.allbinary.game.combat.damage.DamageFloaters",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("add_1", #["int"], false, m_add_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DamageFloaters


