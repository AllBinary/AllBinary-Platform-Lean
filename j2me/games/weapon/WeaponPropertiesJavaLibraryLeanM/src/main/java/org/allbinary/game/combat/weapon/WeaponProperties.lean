-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WeaponProperties

def jfields (this : JV) : JM JV := do
    JR.setField this "speed" (<- JR.getStatic "BasicDecimal" "ZERO_BIGDECIMAL")
    JR.setField this "MAX" (JR.asJ (JV.long 10240))
    JR.setField this "ZERO" (JR.asS (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "WeaponProperties" "NULL_WEAPON_PROPERTIES" (<- JR.new "WeaponProperties" #[(JV.long 0), (JV.long 0), (JV.long 0), (JV.int 0), (JR.toS (JV.int 0))])
    pure JV.null


def m_setReloadTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_reloadTime : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "reloadTime" (JR.asJ l_reloadTime)
    pure JV.null


def m_getReloadTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "reloadTime"))


def m_setTargetingTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_targetingTime : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "targetingTime" (JR.asJ l_targetingTime)
    pure JV.null


def m_getTargetingTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "targetingTime"))


def m_getSpeed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "speed")


def m_setSpeed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speed : JV := (JR.arg jargs 0)
    JR.setField this "speed" l_speed
    pure JV.null


def m_getDamageI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_range : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.sub (<- JR.callInherited this "WeaponProperties" "getDamage_0" #[]) ((<- JR.div ((<- JR.mul (JR.toI (<- JR.callInherited this "WeaponProperties" "getDissipation_0" #[])) l_range)) (<- JR.call (<- JR.getField this "speed") "getScaled_0" #[])))))


def m_toStringArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_stringArray : JV := (<- JR.newArray "L" 1 #[(JV.int 3)])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let jtemp4 : JV := l_index
    l_index := (JR.inc jtemp4)
    JR.aset l_stringArray jtemp4 (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "WeaponProperties" "DAMAGE")]) "appendint_1" #[(<- JR.callInherited this "WeaponProperties" "getDamage_0" #[])]) "toString_0" #[])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let jtemp7 : JV := l_index
    l_index := (JR.inc jtemp7)
    JR.aset l_stringArray jtemp7 (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "WeaponProperties" "RANGE")]) "appendint_1" #[(<- JR.callInherited this "WeaponProperties" "getRange_0" #[])]) "toString_0" #[])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let jtemp10 : JV := l_index
    l_index := (JR.inc jtemp10)
    JR.aset l_stringArray jtemp10 (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "WeaponProperties" "RELOAD")]) "appendlong_1" #[(<- JR.call this "getReloadTime_0" #[])]) "toString_0" #[])
    return l_stringArray


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "WeaponProperties" "DAMAGE")]) "appendint_1" #[(<- JR.callInherited this "WeaponProperties" "getDamage_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "WeaponProperties" "RANGE")]) "appendint_1" #[(<- JR.callInherited this "WeaponProperties" "getRange_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "WeaponProperties" "RELOAD")]) "appendlong_1" #[(<- JR.call this "getReloadTime_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_reloadTime : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_targetingTime : JV := (JR.asJ (JR.arg jargs 1))
    let mut l_speed : JV := (JR.asJ (JR.arg jargs 2))
    let mut l_damage : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dissipation : JV := (JR.asS (JR.arg jargs 4))
    let _ <- JR.superInit "SimpleWeaponProperties" this #[]
    let _ <- jfields this
    if JR.truth (<- JR.cand (<- JR.cand (<- JR.lt l_speed (<- JR.getField this "MAX")) (do pure (<- JR.ne l_speed (JV.long 0)))) (do pure (JR.not (<- JR.getStatic "WeaponProperties" "messageSent")))) then
        let mut l_MESSAGE : JV := (JV.str "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ")
        let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_MESSAGE]) "appendlong_1" #[l_speed]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "CONSTRUCTOR")])
        JR.setStatic "WeaponProperties" "messageSent" (JV.bool true)
        pure ()
    let _ := (<- JR.call this "setReloadTime_1" #[l_reloadTime])
    let _ := (<- JR.call this "setTargetingTime_1" #[l_targetingTime])
    let _ := (<- JR.callInherited this "WeaponProperties" "setDamage_1" #[l_damage])
    let _ := (<- JR.callInherited this "WeaponProperties" "setDissipation_1" #[l_dissipation])
    let _ := (<- JR.call this "setSpeed_1" #[(<- JR.new "BasicDecimal" #[l_speed])])
    if JR.truth (<- JR.ne l_dissipation (<- JR.getField this "ZERO")) then
        let mut l_unscaledDamage : JV := (JR.asJ (<- JR.mul (<- JR.call (<- JR.getField this "speed") "getUnscaled_0" #[]) (JR.toJ l_damage)))
        let mut l_scaledDissipation : JV := (JR.asI (<- JR.mul (JR.toI l_dissipation) (<- JR.call (<- JR.getField this "speed") "getScaledFactorValue_0" #[])))
        let mut l_value : JV := (JR.asJ ((<- JR.div l_unscaledDamage (JR.toJ l_scaledDissipation))))
        let _ := (<- JR.callInherited this "WeaponProperties" "setRange_1" #[(<- JR.div (JR.toI ((<- JR.mul l_value (JV.long 9)))) (JV.int 10))])
        pure ()
    pure this

initialize JR.registerClass {
    name := "WeaponProperties",
    javaName := "org.allbinary.game.combat.weapon.WeaponProperties",
    super := "SimpleWeaponProperties",
    interfaces := #[],
    isInterface := false,
    fields := #[("reloadTime", (JV.long 0)), ("targetingTime", (JV.long 0)), ("speed", JV.null), ("MAX", (JV.long 0)), ("ZERO", (JV.short 0))],
    statics := #[("NULL_WEAPON_PROPERTIES", JV.null), ("messageSent", (JV.bool false)), ("DAMAGE", (JV.str "Damage: ")), ("RANGE", (JV.str "Range: ")), ("RELOAD", (JV.str "Reload: "))],
    methods := #[
        ("setReloadTime_1", #["long"], false, m_setReloadTime_1), 
        ("getReloadTime_0", #[], false, m_getReloadTime_0), 
        ("setTargetingTime_1", #["long"], false, m_setTargetingTime_1), 
        ("getTargetingTime_0", #[], false, m_getTargetingTime_0), 
        ("getSpeed_0", #[], false, m_getSpeed_0), 
        ("setSpeed_1", #["BasicDecimal"], false, m_setSpeed_1), 
        ("getDamageI_1", #["int"], false, m_getDamageI_1), 
        ("toStringArray_0", #[], false, m_toStringArray_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_5", #["long", "long", "long", "int", "short"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WeaponProperties


