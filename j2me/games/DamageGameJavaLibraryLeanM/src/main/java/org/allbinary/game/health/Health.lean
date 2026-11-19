-- Generated Code Do Not Modify
-- package org.allbinary.game.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Health

def jfields (this : JV) : JM JV := do
    JR.setField this "healthListenerInterface" (<- JR.getStatic "NullHealthListener" "NULL_HEALTH_LISTENER")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Health" "NULL_HEALTH" (<- JR.new "Health" #[(JV.int 0)])
    pure JV.null


def m_heal_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ahealth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_newHealth : JV := (JR.asI (<- JR.add (<- JR.call this "getHealth_0" #[]) l_ahealth))
    if JR.truth (<- JR.gt l_newHealth (<- JR.call this "getMaxHealth_0" #[])) then
        let _ := (<- JR.call this "setHealth_1" #[(<- JR.call this "getMaxHealth_0" #[])])
        pure ()
    else
        let _ := (<- JR.call this "setHealth_1" #[l_newHealth])
        pure ()
    pure JV.null


def m_healMax_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setHealth_1" #[(<- JR.call this "getMaxHealth_0" #[])])
    pure JV.null


def m_isDamaged_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.ne (<- JR.call this "getHealth_0" #[]) (<- JR.call this "getMaxHealth_0" #[])) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_damage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ahealth : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.lt l_ahealth (JV.int 0)) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "******* Trying to heal when damaging. Damage: ")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_ahealth])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "toString_0" #[])])
        let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.call l_stringBuffer "toString_0" #[]), this])
        return JV.null
    let mut l_health : JV := (JR.asI (<- JR.sub (<- JR.call this "getHealth_0" #[]) l_ahealth))
    let _ := (<- JR.call this "setHealth_1" #[l_health])
    pure JV.null


def m_isAlive_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.le (<- JR.call this "getHealth_0" #[]) (JV.int 0)) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def m_getMaxHealth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "maxHealth"))


def m_setMaxHealth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxHealth : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "maxHealth" (JR.asI l_maxHealth)
    pure JV.null


def m_setHealth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_health : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.gt l_health (<- JR.call this "getMaxHealth_0" #[])) then
        JR.setField this "health" (JR.asI (<- JR.call this "getMaxHealth_0" #[]))
        pure ()
    else
        if JR.truth (<- JR.lt l_health (JV.int 0)) then
            JR.setField this "health" (JR.asI (JV.int 0))
            pure ()
        else
            JR.setField this "health" (JR.asI l_health)
            pure ()
    if JR.truth (<- JR.ne (<- JR.getField this "healthListenerInterface") JV.null) then
        let _ := (<- JR.call (<- JR.getField this "healthListenerInterface") "onHealthChange_0" #[])
        pure ()
    pure JV.null


def m_getHealth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "health"))


def m_addListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_healthGraphic : JV := (JR.arg jargs 0)
    JR.setField this "healthListenerInterface" l_healthGraphic
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "Health" "HEALTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "health")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "Health" "MAX_HEALTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "maxHealth")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxHealth : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setMaxHealth_1" #[l_maxHealth])
    let _ := (<- JR.call this "setHealth_1" #[l_maxHealth])
    pure this

initialize JR.registerClass {
    name := "Health",
    javaName := "org.allbinary.game.health.Health",
    super := "Object",
    interfaces := #["HealthInterface"],
    isInterface := false,
    fields := #[("health", (JV.int 0)), ("maxHealth", (JV.int 0)), ("healthListenerInterface", JV.null)],
    statics := #[("NULL_HEALTH", JV.null), ("NAME", (JV.str "Health Resource")), ("HEALTH_LABEL", (JV.str "Health: ")), ("MAX_HEALTH_LABEL", (JV.str " Max: "))],
    methods := #[
        ("heal_1", #["int"], false, m_heal_1), 
        ("healMax_0", #[], false, m_healMax_0), 
        ("isDamaged_0", #[], false, m_isDamaged_0), 
        ("damage_1", #["int"], false, m_damage_1), 
        ("isAlive_0", #[], false, m_isAlive_0), 
        ("getMaxHealth_0", #[], false, m_getMaxHealth_0), 
        ("setMaxHealth_1", #["int"], false, m_setMaxHealth_1), 
        ("setHealth_1", #["int"], false, m_setHealth_1), 
        ("getHealth_0", #[], false, m_getHealth_0), 
        ("addListener_1", #["HealthListenerInterface"], false, m_addListener_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Health


