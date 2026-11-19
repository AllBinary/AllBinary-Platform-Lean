-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.damage
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DamageUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "COLLIDE" (JV.str "collide")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DamageUtil" "instance" (<- JR.new "DamageUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DamageUtil" "instance")


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damageableInterface : JV := (JR.arg jargs 0)
    let mut l_damageableInterface2 : JV := (JR.arg jargs 1)
    let _ := (<- JR.call l_damageableInterface "damage_2" #[(<- JR.call l_damageableInterface2 "getDamage_1" #[(JV.int 0)]), (JV.int 0)])
    pure JV.null


def m_debugDamage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableInterfaceCompositeInterface1 : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let mut l_collidableDestroyableDamageableLayer : JV := l_collidableInterfaceCompositeInterface
    let mut l_damage : JV := (JR.asI (<- JR.call l_collidableDestroyableDamageableLayer "getDamage_1" #[(JV.int 0)]))
    if JR.truth (<- JR.gt l_damage (JV.int 20000)) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Collision ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_collidableInterfaceCompositeInterface1 "toString_0" #[])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " with: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_collidableInterfaceCompositeInterface "toString_0" #[])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " damage: ")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_damage])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), l_collidableInterfaceCompositeInterface1, (<- JR.getField this "COLLIDE")])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DamageUtil",
    javaName := "org.allbinary.game.combat.damage.DamageUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("COLLIDE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_2", #["DamageableInterface", "DamageableInterface"], false, m_process_2), 
        ("debugDamage_2", #["CollidableCompositeLayer", "CollidableCompositeLayer"], false, m_debugDamage_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DamageUtil


