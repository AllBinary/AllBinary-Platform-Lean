-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WeaponLayerCircularPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstanceWeaponLayer_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 4))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 5))
    let mut l_weaponProperties : JV := (JR.arg jargs 6)
    let mut l_scoreable : JV := (JR.arg jargs 7)
    let mut l_weaponLayer : JV := (<- JR.callSuper "AllBinaryLayerCircularPool" this "getNextInstance_0" #[])
    let _ := (<- JR.call l_weaponLayer "initXYZ_3" #[l_x, l_y, l_z])
    let _ := (<- JR.call l_weaponLayer "init_5" #[l_sourceLayerInterface, l_angle, l_otherAngle, l_weaponProperties, l_scoreable])
    return l_weaponLayer


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryLayerCircularPool" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "WeaponLayerCircularPool",
    javaName := "org.allbinary.game.layer.weapon.WeaponLayerCircularPool",
    super := "AllBinaryLayerCircularPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstanceWeaponLayer_8", #["AllBinaryLayer", "int", "int", "int", "int", "int", "WeaponProperties", "ScoreableInterface"], false, m_getInstanceWeaponLayer_8), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WeaponLayerCircularPool


