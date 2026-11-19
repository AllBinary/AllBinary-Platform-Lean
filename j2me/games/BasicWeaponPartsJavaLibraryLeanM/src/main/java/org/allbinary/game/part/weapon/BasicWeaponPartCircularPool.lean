-- Generated Code Do Not Modify
-- package org.allbinary.game.part.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicWeaponPartCircularPool

def jfields (this : JV) : JM JV := do
    JR.setField this "basicWeaponPart" (<- JR.getStatic "BasicWeaponPart" "NULL_BASIC_WEAPON_PART")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicWeaponPartCircularPool" "NULL_BASIC_WEAPON_PART_CIRCULAR_POOL" (<- JR.new "BasicWeaponPartCircularPool" #[])
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicWeaponPartFactoryInterface : JV := (JR.arg jargs 0)
    JR.setField this "basicWeaponPart" (<- JR.call l_basicWeaponPartFactoryInterface "getInstance_0" #[])
    pure JV.null


def m_getInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let mut l_weaponProperties : JV := (JR.arg jargs 1)
    let mut l_scoreableInterface : JV := (JR.arg jargs 2)
    let mut l_relativeRelationship : JV := (JR.arg jargs 3)
    let _ := (<- JR.call (<- JR.getField this "basicWeaponPart") "init_4" #[l_sourceLayerInterface, l_weaponProperties, l_scoreableInterface, l_relativeRelationship])
    return (<- JR.getField this "basicWeaponPart")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicWeaponPartCircularPool",
    javaName := "org.allbinary.game.part.weapon.BasicWeaponPartCircularPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicWeaponPart", JV.null)],
    statics := #[("NULL_BASIC_WEAPON_PART_CIRCULAR_POOL", JV.null)],
    methods := #[
        ("init_1", #["BasicWeaponPartFactoryInterface"], false, m_init_1), 
        ("getInstance_4", #["AllBinaryLayer", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], false, m_getInstance_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicWeaponPartCircularPool


