-- Generated Code Do Not Modify
-- package org.allbinary.game.combat
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CombatBaseBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CombatBaseBehavior" "NULL_COMBAT_BEHAVIOR" (<- JR.new "CombatBaseBehavior" #[(<- JR.callStatic "DamageableBaseBehavior" "getInstance_0" #[]), (<- JR.callStatic "DestroyableBaseBehavior" "getInstance_0" #[])])
    pure JV.null


def m_getDamageableBaseBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "damageableBaseBehavior")


def m_getDestroyableBaseBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "destroyableBaseBehavior")


def m_isReadyForExplosion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "readyForExplosion")


def m_setReadyForExplosion_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_readyForExplosion : JV := (JR.arg jargs 0)
    JR.setField this "readyForExplosion" l_readyForExplosion
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damageableBaseBehavior : JV := (JR.arg jargs 0)
    let mut l_destroyableBaseBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "damageableBaseBehavior" l_damageableBaseBehavior
    JR.setField this "destroyableBaseBehavior" l_destroyableBaseBehavior
    pure this

initialize JR.registerClass {
    name := "CombatBaseBehavior",
    javaName := "org.allbinary.game.combat.CombatBaseBehavior",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("damageableBaseBehavior", JV.null), ("destroyableBaseBehavior", JV.null), ("readyForExplosion", (JV.bool false))],
    statics := #[("NULL_COMBAT_BEHAVIOR", JV.null)],
    methods := #[
        ("getDamageableBaseBehavior_0", #[], false, m_getDamageableBaseBehavior_0), 
        ("getDestroyableBaseBehavior_0", #[], false, m_getDestroyableBaseBehavior_0), 
        ("isReadyForExplosion_0", #[], false, m_isReadyForExplosion_0), 
        ("setReadyForExplosion_1", #["boolean"], false, m_setReadyForExplosion_1), 
        ("jinit_2", #["DamageableBaseBehavior", "DestroyableBaseBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CombatBaseBehavior


