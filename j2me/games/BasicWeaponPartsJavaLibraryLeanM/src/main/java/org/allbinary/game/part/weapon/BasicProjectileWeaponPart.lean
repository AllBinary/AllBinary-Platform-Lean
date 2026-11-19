-- Generated Code Do Not Modify
-- package org.allbinary.game.part.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicProjectileWeaponPart

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createBasicProjectileWeaponPart_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_weaponLayerCircularStaticPool : JV := (JR.arg jargs 1)
    return (<- JR.new "BasicProjectileWeaponPart" #[l_animationInterface, (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER"), l_weaponLayerCircularStaticPool, (<- JR.getStatic "WeaponProperties" "NULL_WEAPON_PROPERTIES"), (<- JR.callStatic "NoScoreable" "getInstance_0" #[]), (<- JR.getStatic "RelativeRelationship" "NULL_RELATIVE_RELATIONSHIP")])


def m_processScore_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asS (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asS (JR.arg jargs 2))
    let mut l_weaponProperties : JV := (JR.arg jargs 3)
    let mut l_scoreableInterface : JV := (JR.arg jargs 4)
    let mut l_weaponLayer : JV := (<- JR.call (<- JR.getField this "weaponLayerCircularStaticPool") "getInstanceWeaponLayer_8" #[(<- JR.callInherited this "BasicProjectileWeaponPart" "getOwnerLayerInterface_0" #[]), (<- JR.call (<- JR.getInherited this "BasicProjectileWeaponPart" "relativeRelationship") "getX_0" #[]), (<- JR.call (<- JR.getInherited this "BasicProjectileWeaponPart" "relativeRelationship") "getY_0" #[]), (<- JR.call (<- JR.getInherited this "BasicProjectileWeaponPart" "relativeRelationship") "getZ_0" #[]), (JR.toI l_angle), (JR.toI l_otherAngle), l_weaponProperties, l_scoreableInterface])
    let _ := (<- JR.call l_allbinaryLayerManager "append_1" #[l_weaponLayer])
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 1)
    let mut l_weaponLayerCircularStaticPool : JV := (JR.arg jargs 2)
    let mut l_weaponProperties : JV := (JR.arg jargs 3)
    let mut l_scoreableInterface : JV := (JR.arg jargs 4)
    let mut l_relativeRelationship : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "BasicWeaponPart" this #[l_animationInterface, l_sourceLayerInterface, l_weaponProperties, l_scoreableInterface, l_relativeRelationship]
    let _ <- jfields this
    JR.setField this "weaponLayerCircularStaticPool" l_weaponLayerCircularStaticPool
    pure this

initialize JR.registerClass {
    name := "BasicProjectileWeaponPart",
    javaName := "org.allbinary.game.part.weapon.BasicProjectileWeaponPart",
    super := "BasicWeaponPart",
    interfaces := #[],
    isInterface := false,
    fields := #[("weaponLayerCircularStaticPool", JV.null)],
    statics := #[],
    methods := #[
        ("createBasicProjectileWeaponPart_2", #["Animation", "WeaponLayerCircularPool"], true, m_createBasicProjectileWeaponPart_2), 
        ("processScore_5", #["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], false, m_processScore_5), 
        ("jinit_6", #["Animation", "AllBinaryLayer", "WeaponLayerCircularPool", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicProjectileWeaponPart


