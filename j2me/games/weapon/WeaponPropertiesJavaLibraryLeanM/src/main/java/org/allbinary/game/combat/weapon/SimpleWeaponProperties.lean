-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimpleWeaponProperties

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_simpleWeaponProperties : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "setDamage_1" #[(<- JR.call l_simpleWeaponProperties "getDamage_0" #[])])
    let _ := (<- JR.call this "setDissipation_1" #[(<- JR.call l_simpleWeaponProperties "getDissipation_0" #[])])
    let _ := (<- JR.call this "setRange_1" #[(<- JR.call l_simpleWeaponProperties "getRange_0" #[])])
    pure JV.null


def m_setDamage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "damage" (JR.asI l_damage)
    pure JV.null


def m_getDamage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "damage"))


def m_setDissipation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dissipation : JV := (JR.asS (JR.arg jargs 0))
    JR.setField this "dissipation" (JR.asS l_dissipation)
    pure JV.null


def m_getDissipation_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "dissipation"))


def m_getRange_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "range"))


def m_setRange_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_range : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "range" (JR.asI l_range)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SimpleWeaponProperties",
    javaName := "org.allbinary.game.combat.weapon.SimpleWeaponProperties",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("damage", (JV.int 0)), ("dissipation", (JV.short 0)), ("range", (JV.int 0))],
    statics := #[],
    methods := #[
        ("set_1", #["SimpleWeaponProperties"], false, m_set_1), 
        ("setDamage_1", #["int"], false, m_setDamage_1), 
        ("getDamage_0", #[], false, m_getDamage_0), 
        ("setDissipation_1", #["short"], false, m_setDissipation_1), 
        ("getDissipation_0", #[], false, m_getDissipation_0), 
        ("getRange_0", #[], false, m_getRange_0), 
        ("setRange_1", #["int"], false, m_setRange_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimpleWeaponProperties


