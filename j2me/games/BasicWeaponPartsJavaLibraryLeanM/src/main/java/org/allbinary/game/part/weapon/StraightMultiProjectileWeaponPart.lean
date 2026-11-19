-- Generated Code Do Not Modify
-- package org.allbinary.game.part.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StraightMultiProjectileWeaponPart

def jfields (this : JV) : JM JV := do
    JR.setField this "noDecimalTrigTable" (<- JR.callStatic "NoDecimalTrigTable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createStraightMultiProjectileWeaponPart_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_weaponLayerCircularStaticPool : JV := (JR.arg jargs 1)
    return (<- JR.new "StraightMultiProjectileWeaponPart" #[l_animationInterface, (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER"), l_weaponLayerCircularStaticPool, (JV.int 2), (<- JR.getStatic "WeaponProperties" "NULL_WEAPON_PROPERTIES"), (<- JR.callStatic "NoScoreable" "getInstance_0" #[]), (<- JR.getStatic "RelativeRelationship" "NULL_RELATIVE_RELATIONSHIP")])


def m_processScore_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asS (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asS (JR.arg jargs 2))
    let mut l_weaponProperties : JV := (JR.arg jargs 3)
    let mut l_scoreableInterface : JV := (JR.arg jargs 4)
    let mut l_sourceLayerInterface : JV := (<- JR.callInherited this "StraightMultiProjectileWeaponPart" "getOwnerLayerInterface_0" #[])
    let mut l_reducedWidth : JV := (JR.asI ((<- JR.div (<- JR.mul (<- JR.call l_sourceLayerInterface "getWidth_0" #[]) (JV.int 8)) (JV.int 10))))
    let mut l_halfWidth : JV := (JR.asI ((<- JR.shr l_reducedWidth (JV.int 1))))
    let mut l_x : JV := (JR.asI (<- JR.call (<- JR.getInherited this "StraightMultiProjectileWeaponPart" "relativeRelationship") "getX_0" #[]))
    let mut l_y : JV := (JR.asI (<- JR.call (<- JR.getInherited this "StraightMultiProjectileWeaponPart" "relativeRelationship") "getY_0" #[]))
    let mut l_sine : JV := (JR.asJ (JV.long 0))
    let mut l_beamX : JV := (JR.asI (JV.int 0))
    let mut l_cosine : JV := (JR.asJ (JV.long 0))
    let mut l_beamY : JV := (JR.asI (JV.int 0))
    let mut l_weaponLayer : JV := JV.null
    let mut l_increment : JV := (JR.asI (<- JR.div l_reducedWidth ((<- JR.sub (<- JR.getField this "total") (JV.int 1)))))
    let mut l_next : JV := (JR.asI (JR.neg l_halfWidth))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "total"))) then break
            l_sine := (JR.asJ ((<- JR.mul (JR.toJ l_next) (<- JR.call (<- JR.getField this "noDecimalTrigTable") "sin_1" #[(JR.toI l_angle)]))))
            l_beamX := (JR.asI (JR.toI ((<- JR.div l_sine (JR.toJ (<- JR.getField (<- JR.getField this "noDecimalTrigTable") "SCALE"))))))
            l_cosine := (JR.asJ ((<- JR.mul (JR.toJ l_next) (<- JR.call (<- JR.getField this "noDecimalTrigTable") "cos_1" #[(JR.toI l_angle)]))))
            l_beamY := (JR.asI (JR.neg (JR.toI ((<- JR.div l_cosine (JR.toJ (<- JR.getField (<- JR.getField this "noDecimalTrigTable") "SCALE")))))))
            l_weaponLayer := (<- JR.call (<- JR.getField this "weaponLayerCircularStaticPool") "getInstanceWeaponLayer_8" #[l_sourceLayerInterface, (<- JR.add l_x l_beamX), (<- JR.add l_y l_beamY), (JV.int 0), (JR.toI l_angle), (JR.toI l_otherAngle), l_weaponProperties, l_scoreableInterface])
            let _ := (<- JR.call l_allbinaryLayerManager "append_1" #[l_weaponLayer])
            l_next := (JR.castLike l_next (<- JR.add l_next l_increment))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 1)
    let mut l_weaponLayerCircularStaticPool : JV := (JR.arg jargs 2)
    let mut l_total : JV := (JR.asI (JR.arg jargs 3))
    let mut l_weaponProperties : JV := (JR.arg jargs 4)
    let mut l_scoreableInterface : JV := (JR.arg jargs 5)
    let mut l_relativeRelationship : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "BasicWeaponPart" this #[l_animationInterface, l_sourceLayerInterface, l_weaponProperties, l_scoreableInterface, l_relativeRelationship]
    let _ <- jfields this
    JR.setField this "total" (JR.asI l_total)
    JR.setField this "weaponLayerCircularStaticPool" l_weaponLayerCircularStaticPool
    pure this

initialize JR.registerClass {
    name := "StraightMultiProjectileWeaponPart",
    javaName := "org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart",
    super := "BasicWeaponPart",
    interfaces := #[],
    isInterface := false,
    fields := #[("weaponLayerCircularStaticPool", JV.null), ("total", (JV.int 0)), ("noDecimalTrigTable", JV.null)],
    statics := #[],
    methods := #[
        ("createStraightMultiProjectileWeaponPart_2", #["Animation", "WeaponLayerCircularPool"], true, m_createStraightMultiProjectileWeaponPart_2), 
        ("processScore_5", #["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], false, m_processScore_5), 
        ("jinit_7", #["Animation", "AllBinaryLayer", "WeaponLayerCircularPool", "int", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StraightMultiProjectileWeaponPart


