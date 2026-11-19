-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TempExplosionWeaponLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "weaponProperties_TempExplosionWeaponLayer" (<- JR.new "WeaponProperties" #[(JV.long (-1)), (JV.long (-1)), (JV.int 0), (JV.int 1000), (JR.toS (JV.int 0))])
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processTick_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) then
        let _ := (<- JR.call (<- JR.callInherited this "TempExplosionWeaponLayer" "getCollidableInferface_0" #[]) "collide_2" #[this, this])
        JR.setInherited this "TempExplosionWeaponLayer" "totalDamage" (<- JR.add (<- JR.callInherited this "TempExplosionWeaponLayer" "getInitDamage_0" #[]) (JV.int 1))
        pure ()
    let _ := (<- JR.callSuper "SimpleWeaponLayer" this "processTick_1" #[l_allBinaryLayerManager])
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_movement : JV := (JR.arg jargs 1)
    let mut l_animationInterface : JV := (JR.arg jargs 2)
    let mut l_rectangle : JV := (JR.arg jargs 3)
    let mut l_viewPosition : JV := (JR.arg jargs 4)
    let mut l_timeDelay : JV := (JR.asI (JR.arg jargs 5))
    let _ <- JR.superInit "SimpleWeaponLayer" this #[l_name, (<- JR.getStatic "RemoteInfo" "REMOTE_INFO"), (JV.int (-1)), l_movement, l_animationInterface, (<- JR.callStatic "SimpleWeaponLayer" "createDestroyed_0" #[]), l_rectangle, l_viewPosition]
    let _ <- jfields this
    JR.setField (<- JR.getField this "timeDelayHelper") "delay" (JR.asI l_timeDelay)
    pure this

initialize JR.registerClass {
    name := "TempExplosionWeaponLayer",
    javaName := "org.allbinary.game.layer.weapon.TempExplosionWeaponLayer",
    super := "SimpleWeaponLayer",
    interfaces := #[],
    isInterface := false,
    fields := #[("weaponProperties_TempExplosionWeaponLayer", JV.null), ("timeDelayHelper", JV.null)],
    statics := #[],
    methods := #[
        ("processTick_1", #["AllBinaryLayerManager"], false, m_processTick_1), 
        ("jinit_6", #["String", "Movement", "Animation", "Rectangle", "ViewPositionBase", "int"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TempExplosionWeaponLayer


