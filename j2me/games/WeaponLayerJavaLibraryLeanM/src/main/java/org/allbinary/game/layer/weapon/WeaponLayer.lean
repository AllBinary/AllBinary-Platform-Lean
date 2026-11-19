-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WeaponLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "animationInterface" (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
    JR.setField this "sourceLayerInterface" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    JR.setField this "destroyed" (JV.bool true)
    JR.setField this "scoreableInterface" (<- JR.callStatic "NoScoreable" "getInstance_0" #[])
    JR.setField this "weaponProperties" (<- JR.getStatic "WeaponProperties" "NULL_WEAPON_PROPERTIES")
    JR.setField this "collidableWeaponBehavior" (<- JR.callStatic "CollidableWeaponBehavior" "getNullInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setCollidableInferface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableInferface : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "MultiPlayerGameLayer" this "setCollidableInferface_1" #[l_collidableInferface])
    JR.setField this "collidableWeaponBehavior" (<- JR.callInherited this "WeaponLayer" "getCollidableInferface_0" #[])
    pure JV.null


def m_initXYZ_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    JR.setInherited this "WeaponLayer" "x" l_x
    JR.setInherited this "WeaponLayer" "y" l_y
    JR.setInherited this "WeaponLayer" "z" l_z
    pure JV.null


def m_init_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_weaponProperties : JV := (JR.arg jargs 3)
    let mut l_scoreable : JV := (JR.arg jargs 4)
    let _ := (<- JR.call this "setWeaponPropertiesP_1" #[l_weaponProperties])
    let _ := (<- JR.callInherited this "WeaponLayer" "setReadyForExplosion_1" #[(JV.bool false)])
    let _ := (<- JR.call this "setAnimationInterface_1" #[(<- JR.call this "getInitAnimationInterfaceP_0" #[])])
    let _ := (<- JR.call this "setOwnerLayerInterface_1" #[l_sourceLayerInterface])
    let _ := (<- JR.call (<- JR.getField this "collidableWeaponBehavior") "init_1" #[l_sourceLayerInterface])
    let _ := (<- JR.call this "setGroupInterfaces_0" #[])
    if JR.truth (<- JR.ne l_scoreable JV.null) then
        JR.setField this "scoreableInterface" l_scoreable
        pure ()
    JR.setField this "totalDamage" (JR.asI (JV.int 0))
    JR.setField this "initDamage" (JR.asI (<- JR.call l_weaponProperties "getDamage_0" #[]))
    let _ := (<- JR.call this "setDestroyed_1" #[(JV.bool false)])
    let _ := (<- JR.call (<- JR.getField this "movement") "init_3" #[(<- JR.call l_weaponProperties "getSpeed_0" #[]), l_angle, l_otherAngle])
    pure JV.null


def m_setGroupInterfaces_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicGroupFactory : JV := (<- JR.callStatic "BasicGroupFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq (<- JR.aget (<- JR.call (<- JR.getField this "sourceLayerInterface") "getGroupInterface_0" #[]) (JV.int 0)) (<- JR.getField l_basicGroupFactory "ENEMY")) then
        let _ := (<- JR.callInherited this "WeaponLayer" "setGroupInterface_1" #[(<- JR.getField l_basicGroupFactory "ENEMY_ARRAY")])
        pure ()
    else
        let _ := (<- JR.callInherited this "WeaponLayer" "setGroupInterface_1" #[(<- JR.call (<- JR.getField this "sourceLayerInterface") "getGroupInterface_0" #[])])
        pure ()
    pure JV.null


def m_processTick_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.cand (<- JR.call this "isExhausted_0" #[]) (do pure (JR.not (<- JR.call this "isDestroyed_0" #[])))) then
        if JR.truth (<- JR.callInherited this "WeaponLayer" "isReadyForExplosion_0" #[]) then
            let mut l_indexedAnimationInterface : JV := (<- JR.call this "getAnimationInterface_0" #[])
            let mut l_currentFrame : JV := (JR.asI (<- JR.call l_indexedAnimationInterface "getFrame_0" #[]))
            if JR.truth (<- JR.lt l_currentFrame (<- JR.sub (<- JR.call l_indexedAnimationInterface "getAnimationSize_0" #[]) (JV.int 1))) then
                let _ := (<- JR.call l_indexedAnimationInterface "nextFrame_0" #[])
                pure ()
            else
                let _ := (<- JR.call this "setDestroyed_1" #[(JV.bool true)])
                pure ()
            pure ()
        else
            let mut l_collidableWeaponBehavior : JV := (<- JR.callInherited this "WeaponLayer" "getCollidableInferface_0" #[])
            if JR.truth (<- JR.call l_collidableWeaponBehavior "isCollided_0" #[]) then
                let _ := (<- JR.call this "setAnimationInterface_1" #[(<- JR.getField this "destroyedAnimationInterface")])
                let _ := (<- JR.call (<- JR.call this "getMovement_0" #[]) "stop_0" #[])
                let _ := (<- JR.callInherited this "WeaponLayer" "setReadyForExplosion_1" #[(JV.bool true)])
                pure ()
            else
                let _ := (<- JR.call this "setDestroyed_1" #[(JV.bool true)])
                pure ()
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "movement") "process_1" #[this])
    JR.setField this "totalDamage" (JR.castLike (<- JR.getField this "totalDamage") (<- JR.add (<- JR.getField this "totalDamage") (JR.toI (<- JR.call (<- JR.getField this "weaponProperties") "getDissipation_0" #[]))))
    pure JV.null


def m_isDestroyed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "destroyed")


def m_damage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "totalDamage" (JR.castLike (<- JR.getField this "totalDamage") (<- JR.add (<- JR.getField this "totalDamage") (<- JR.mul l_damage l_damage)))
    pure JV.null


def m_givePoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_total : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "scoreableInterface") "addPoints_1" #[(<- JR.mul (<- JR.call (<- JR.callStatic "GameConfigurationUtil" "getInstance_0" #[]) "getCompetitionValue_0" #[]) l_total)])
    pure JV.null


def m_isExhausted_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.cor (<- JR.gt (<- JR.getField this "totalDamage") (<- JR.call this "getInitDamage_0" #[])) (do pure (<- JR.lt (<- JR.getField this "totalDamage") (JV.int 0)))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_getDamage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (JR.not (<- JR.call this "isExhausted_0" #[])) then
        let mut l_total : JV := (JR.asI (<- JR.sub (<- JR.call this "getInitDamage_0" #[]) (<- JR.getField this "totalDamage")))
        let _ := (<- JR.call this "givePoints_1" #[l_total])
        return (JR.asI l_total)
    return (JR.asI (JV.int 0))


def m_setDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyed : JV := (JR.arg jargs 0)
    JR.setField this "destroyed" l_destroyed
    if JR.truth (<- JR.call this "isDestroyed_0" #[]) then
        JR.setField this "scoreableInterface" (<- JR.callStatic "NoScoreable" "getInstance_0" #[])
        let _ := (<- JR.call (<- JR.callStatic "DestroyedLayerProcessor" "getInstance_0" #[]) "add_1" #[this])
        pure ()
    pure JV.null


def m_getInitDamage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "initDamage"))


def m_setAnimationInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    JR.setField this "animationInterface" l_animationInterface
    pure JV.null


def m_getAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterface")


def m_getInitAnimationInterfaceP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initAnimationInterface")


def m_setInitAnimationInterfaceP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initAnimationInterface : JV := (JR.arg jargs 0)
    JR.setField this "initAnimationInterface" l_initAnimationInterface
    pure JV.null


def m_getDestroyedAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "destroyedAnimationInterface")


def m_getOwnerLayerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "sourceLayerInterface")


def m_setOwnerLayerInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    JR.setField this "sourceLayerInterface" l_sourceLayerInterface
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_viewPosition : JV := (<- JR.callInherited this "WeaponLayer" "getViewPosition_0" #[])
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (<- JR.sub (<- JR.call l_viewPosition "getX_0" #[]) (<- JR.callInherited this "WeaponLayer" "getHalfWidth_0" #[])), (<- JR.sub (<- JR.call l_viewPosition "getY_0" #[]) (<- JR.callInherited this "WeaponLayer" "getHalfHeight_0" #[]))])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_viewPosition : JV := (<- JR.callInherited this "WeaponLayer" "getViewPosition_0" #[])
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, (<- JR.sub (<- JR.call l_viewPosition "getX_0" #[]) (<- JR.callInherited this "WeaponLayer" "getHalfWidth_0" #[])), (<- JR.sub (<- JR.call l_viewPosition "getY_0" #[]) (<- JR.callInherited this "WeaponLayer" "getHalfHeight_0" #[])), (<- JR.sub (<- JR.call l_viewPosition "getZ_0" #[]) (<- JR.callInherited this "WeaponLayer" "getHalfDepth_0" #[]))])
    pure JV.null


def m_getMovement_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "movement")


def m_setMovement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_movement : JV := (JR.arg jargs 0)
    JR.setField this "movement" l_movement
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callStatic "WeaponLayer" "getStaticType_0" #[]))


def m_getStaticType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getMultiPlayerType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "multiPlayerType"))


def m_setWeaponPropertiesP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_weaponProperties : JV := (JR.arg jargs 0)
    JR.setField this "weaponProperties" l_weaponProperties
    pure JV.null


def m_getWeaponPropertiesP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "weaponProperties")


def m_implmentsTickableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "initAnimationInterface") "set_1" #[l_gl])
    pure JV.null


def jinit_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_remoteInfo : JV := (JR.arg jargs 1)
    let mut l_multiPlayerType : JV := (JR.asI (JR.arg jargs 2))
    let mut l_movement : JV := (JR.arg jargs 3)
    let mut l_animationInterface : JV := (JR.arg jargs 4)
    let mut l_destroyedAnimationInterface : JV := (JR.arg jargs 5)
    let mut l_rectangle : JV := (JR.arg jargs 6)
    let mut l_viewPosition : JV := (JR.arg jargs 7)
    let _ <- JR.superInit "MultiPlayerGameLayer" this #[l_remoteInfo, (<- JR.getField (<- JR.callStatic "BasicGroupFactory" "getInstance_0" #[]) "NONE_ARRAY"), l_name, l_rectangle, l_viewPosition]
    let _ <- jfields this
    JR.setField this "initAnimationInterface" l_animationInterface
    let _ := (<- JR.call this "setAnimationInterface_1" #[l_animationInterface])
    JR.setField this "destroyedAnimationInterface" l_destroyedAnimationInterface
    JR.setField this "movement" l_movement
    JR.setField this "multiPlayerType" (JR.asI l_multiPlayerType)
    pure this

initialize JR.registerClass {
    name := "WeaponLayer",
    javaName := "org.allbinary.game.layer.weapon.WeaponLayer",
    super := "MultiPlayerGameLayer",
    interfaces := #["TickableInterface"],
    isInterface := false,
    fields := #[("animationInterface", JV.null), ("initAnimationInterface", JV.null), ("destroyedAnimationInterface", JV.null), ("sourceLayerInterface", JV.null), ("totalDamage", (JV.int 0)), ("initDamage", (JV.int 0)), ("destroyed", (JV.bool false)), ("scoreableInterface", JV.null), ("movement", JV.null), ("weaponProperties", JV.null), ("multiPlayerType", (JV.int 0)), ("collidableWeaponBehavior", JV.null)],
    statics := #[],
    methods := #[
        ("setCollidableInferface_1", #["CollidableBaseBehavior"], false, m_setCollidableInferface_1), 
        ("initXYZ_3", #["int", "int", "int"], false, m_initXYZ_3), 
        ("init_5", #["AllBinaryLayer", "int", "int", "WeaponProperties", "ScoreableInterface"], false, m_init_5), 
        ("setGroupInterfaces_0", #[], false, m_setGroupInterfaces_0), 
        ("processTick_1", #["AllBinaryLayerManager"], false, m_processTick_1), 
        ("isDestroyed_0", #[], false, m_isDestroyed_0), 
        ("damage_2", #["int", "int"], false, m_damage_2), 
        ("givePoints_1", #["int"], false, m_givePoints_1), 
        ("isExhausted_0", #[], false, m_isExhausted_0), 
        ("getDamage_1", #["int"], false, m_getDamage_1), 
        ("setDestroyed_1", #["boolean"], false, m_setDestroyed_1), 
        ("getInitDamage_0", #[], false, m_getInitDamage_0), 
        ("setAnimationInterface_1", #["Animation"], false, m_setAnimationInterface_1), 
        ("getAnimationInterface_0", #[], false, m_getAnimationInterface_0), 
        ("getInitAnimationInterfaceP_0", #[], false, m_getInitAnimationInterfaceP_0), 
        ("setInitAnimationInterfaceP_1", #["Animation"], false, m_setInitAnimationInterfaceP_1), 
        ("getDestroyedAnimationInterface_0", #[], false, m_getDestroyedAnimationInterface_0), 
        ("getOwnerLayerInterface_0", #[], false, m_getOwnerLayerInterface_0), 
        ("setOwnerLayerInterface_1", #["AllBinaryLayer"], false, m_setOwnerLayerInterface_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getMovement_0", #[], false, m_getMovement_0), 
        ("setMovement_1", #["Movement"], false, m_setMovement_1), 
        ("getType_0", #[], false, m_getType_0), 
        ("getStaticType_0", #[], true, m_getStaticType_0), 
        ("getMultiPlayerType_0", #[], false, m_getMultiPlayerType_0), 
        ("setWeaponPropertiesP_1", #["WeaponProperties"], false, m_setWeaponPropertiesP_1), 
        ("getWeaponPropertiesP_0", #[], false, m_getWeaponPropertiesP_0), 
        ("implmentsTickableInterface_0", #[], false, m_implmentsTickableInterface_0), 
        ("set_1", #["GL"], false, m_set_1), 
        ("jinit_8", #["String", "RemoteInfo", "int", "Movement", "Animation", "Animation", "Rectangle", "ViewPositionBase"], false, jinit_8)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WeaponLayer


