-- Generated Code Do Not Modify
-- package org.allbinary.game.part.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ArcedMultiBeamWeaponPart

def jfields (this : JV) : JM JV := do
    JR.setField this "TOTAL_ANGLE" (JR.asI (JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE")))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processScore_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asS (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asS (JR.arg jargs 2))
    let mut l_weaponProperties : JV := (JR.arg jargs 3)
    let mut l_scoreableInterface : JV := (JR.arg jargs 4)
    let mut l_increment : JV := (JR.asS (JR.toS ((<- JR.div ((<- JR.sub (<- JR.getField this "total") (JV.int 1))) (<- JR.getField this "TOTAL_ANGLE")))))
    let mut l_minAngle : JV := (JR.asS (JR.toS ((<- JR.sub (JR.toI l_angle) ((<- JR.shr ((<- JR.mul (JR.toI l_increment) (<- JR.getField this "total"))) (JV.int 1)))))))
    let mut l_next : JV := (JR.asI (JV.int 0))
    let mut l_weaponLayer : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "total"))) then break
            l_weaponLayer := (<- JR.call (<- JR.getField this "weaponLayerCircularStaticPool") "getInstanceWeaponLayer_8" #[(<- JR.callInherited this "ArcedMultiBeamWeaponPart" "getOwnerLayerInterface_0" #[]), (<- JR.call (<- JR.getInherited this "ArcedMultiBeamWeaponPart" "relativeRelationship") "getX_0" #[]), (<- JR.call (<- JR.getInherited this "ArcedMultiBeamWeaponPart" "relativeRelationship") "getY_0" #[]), (JV.int 0), ((<- JR.add l_minAngle l_increment)), (JR.toI l_otherAngle), l_weaponProperties, l_scoreableInterface])
            let _ := (<- JR.call l_allbinaryLayerManager "append_1" #[l_weaponLayer])
            l_next := (JR.castLike l_next (<- JR.add l_next (JR.toI l_increment)))
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
    name := "ArcedMultiBeamWeaponPart",
    javaName := "org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart",
    super := "BasicWeaponPart",
    interfaces := #[],
    isInterface := false,
    fields := #[("weaponLayerCircularStaticPool", JV.null), ("total", (JV.int 0)), ("TOTAL_ANGLE", (JV.int 0))],
    statics := #[],
    methods := #[
        ("processScore_5", #["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], false, m_processScore_5), 
        ("jinit_7", #["Animation", "AllBinaryLayer", "WeaponLayerCircularPool", "int", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ArcedMultiBeamWeaponPart


