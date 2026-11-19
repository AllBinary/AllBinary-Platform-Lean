-- Generated Code Do Not Modify
-- package org.allbinary.game.part.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicWeaponPart

def jfields (this : JV) : JM JV := do
    JR.setField this "animationInterface" (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
    JR.setField this "ownerLayerInterface" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    JR.setField this "weaponProperties" (<- JR.getStatic "WeaponProperties" "NULL_WEAPON_PROPERTIES")
    JR.setField this "scoreableInterface" (<- JR.callStatic "NoScoreable" "getInstance_0" #[])
    JR.setField this "relativeRelationship" (<- JR.getStatic "RelativeRelationship" "NULL_RELATIVE_RELATIONSHIP")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicWeaponPart" "NULL_BASIC_WEAPON_PART" (<- JR.callStatic "BasicWeaponPart" "createBasicWeaponPart_1" #[(<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])])
    pure JV.null


def m_createBasicWeaponPart_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    return (<- JR.new "BasicWeaponPart" #[l_animationInterface, (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER"), (<- JR.getStatic "WeaponProperties" "NULL_WEAPON_PROPERTIES"), (<- JR.callStatic "NoScoreable" "getInstance_0" #[]), (<- JR.getStatic "RelativeRelationship" "NULL_RELATIVE_RELATIONSHIP")])


def m_init_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let mut l_weaponProperties : JV := (JR.arg jargs 1)
    let mut l_scoreableInterface : JV := (JR.arg jargs 2)
    let mut l_relativeRelationship : JV := (JR.arg jargs 3)
    let _ := (<- JR.call this "setOwnerLayerInterface_1" #[l_sourceLayerInterface])
    let _ := (<- JR.call this "setWeaponProperties_1" #[l_weaponProperties])
    JR.setField this "scoreableInterface" l_scoreableInterface
    JR.setField this "relativeRelationship" l_relativeRelationship
    pure JV.null


def m_process_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asS (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asS (JR.arg jargs 2))
    let _ := (<- JR.call this "processScore_5" #[l_allbinaryLayerManager, l_angle, l_otherAngle, (<- JR.call this "getWeaponProperties_0" #[]), (<- JR.getField this "scoreableInterface")])
    pure JV.null


def m_processScore_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asS (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asS (JR.arg jargs 2))
    let mut l_weaponProperties : JV := (JR.arg jargs 3)
    let mut l_scoreableInterface : JV := (JR.arg jargs 4)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "NOT_IMPLEMENTED")])


def m_getOwnerLayerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "ownerLayerInterface")


def m_setOwnerLayerInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    JR.setField this "ownerLayerInterface" l_ownerLayerInterface
    pure JV.null


def m_getAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterface")


def m_setAnimationInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    JR.setField this "animationInterface" l_animationInterface
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_viewPosition : JV := (<- JR.call (<- JR.call this "getOwnerLayerInterface_0" #[]) "getViewPosition_0" #[])
    let mut l_viewX : JV := (JR.asI (<- JR.call l_viewPosition "getX_0" #[]))
    let mut l_viewY : JV := (JR.asI (<- JR.call l_viewPosition "getY_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, l_viewX, l_viewY])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_getWeaponProperties_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "weaponProperties")


def m_setWeaponProperties_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_weaponProperties : JV := (JR.arg jargs 0)
    JR.setField this "weaponProperties" l_weaponProperties
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 1)
    let mut l_weaponProperties : JV := (JR.arg jargs 2)
    let mut l_scoreableInterface : JV := (JR.arg jargs 3)
    let mut l_relativeRelationship : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "init_4" #[l_sourceLayerInterface, l_weaponProperties, l_scoreableInterface, l_relativeRelationship])
    let _ := (<- JR.call this "setAnimationInterface_1" #[l_animationInterface])
    pure this

initialize JR.registerClass {
    name := "BasicWeaponPart",
    javaName := "org.allbinary.game.part.weapon.BasicWeaponPart",
    super := "Object",
    interfaces := #["PartInterface", "SalvoInterface"],
    isInterface := false,
    fields := #[("animationInterface", JV.null), ("ownerLayerInterface", JV.null), ("weaponProperties", JV.null), ("scoreableInterface", JV.null), ("relativeRelationship", JV.null)],
    statics := #[("NULL_BASIC_WEAPON_PART", JV.null)],
    methods := #[
        ("createBasicWeaponPart_1", #["Animation"], true, m_createBasicWeaponPart_1), 
        ("init_4", #["AllBinaryLayer", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], false, m_init_4), 
        ("process_3", #["AllBinaryLayerManager", "short", "short"], false, m_process_3), 
        ("processScore_5", #["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], false, m_processScore_5), 
        ("getOwnerLayerInterface_0", #[], false, m_getOwnerLayerInterface_0), 
        ("setOwnerLayerInterface_1", #["AllBinaryLayer"], false, m_setOwnerLayerInterface_1), 
        ("getAnimationInterface_0", #[], false, m_getAnimationInterface_0), 
        ("setAnimationInterface_1", #["Animation"], false, m_setAnimationInterface_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getWeaponProperties_0", #[], false, m_getWeaponProperties_0), 
        ("setWeaponProperties_1", #["WeaponProperties"], false, m_setWeaponProperties_1), 
        ("jinit_5", #["Animation", "AllBinaryLayer", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicWeaponPart


