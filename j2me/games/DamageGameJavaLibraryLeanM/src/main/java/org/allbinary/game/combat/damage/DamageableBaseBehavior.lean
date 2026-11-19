-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.damage
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DamageableBaseBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DamageableBaseBehavior" "instance" (<- JR.new "DamageableBaseBehavior" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DamageableBaseBehavior" "instance")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callInherited this "DamageableBaseBehavior" "getClass_0" #[]) "getName_0" #[])


def m_damage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_getDamage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (JV.int 6000))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DamageableBaseBehavior",
    javaName := "org.allbinary.game.combat.damage.DamageableBaseBehavior",
    super := "Object",
    interfaces := #["DamageableInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("damage_2", #["int", "int"], false, m_damage_2), 
        ("getDamage_1", #["int"], false, m_getDamage_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DamageableBaseBehavior


