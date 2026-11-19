-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.weapon.mine
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MineLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "viewPositionEventHandler" (<- JR.callStatic "ViewPositionEventHandler" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initXYZ_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callInherited this "MineLayer" "setPosition_3" #[(<- JR.add l_x (JV.int 5)), (<- JR.add l_y (JV.int 5)), l_z])
    let _ := (<- JR.call (<- JR.getField this "viewPositionEventHandler") "addListener_1" #[this])
    let _ := (<- JR.call (<- JR.callStatic "SecondaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "DropWeaponSound" "getInstance_0" #[])])
    pure JV.null


def m_damage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 1))
    JR.setInherited this "MineLayer" "totalDamage" (<- JR.add (<- JR.callInherited this "MineLayer" "getInitDamage_0" #[]) (JV.int 1))
    pure JV.null


def m_getDamage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "SimpleWeaponLayer" this "getDamage_1" #[l_damageType])
    return (JR.asI (<- JR.callInherited this "MineLayer" "getInitDamage_0" #[]))


def m_setDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyed : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "SimpleWeaponLayer" this "setDestroyed_1" #[l_destroyed])
    if JR.truth (<- JR.callInherited this "MineLayer" "isDestroyed_0" #[]) then
        let _ := (<- JR.call (<- JR.getField this "viewPositionEventHandler") "removeListener_1" #[this])
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_viewPosition : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "SimpleWeaponLayer" this #[(<- JR.getStatic "MineLayer" "NAME"), (<- JR.getStatic "RemoteInfo" "REMOTE_INFO"), (JV.int (-1)), (<- JR.call (<- JR.callStatic "NoMovementFactory" "getInstance_0" #[]) "getMovmentInstance_0" #[]), (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField (<- JR.callStatic "MineWeaponResources" "getInstance_0" #[]) "RESOURCE")]) "getInstance_1" #[(JV.int 0)]), (<- JR.callStatic "SimpleWeaponLayer" "createDestroyed_0" #[]), (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (JV.int 10), (JV.int 10)]), l_viewPosition]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MineLayer",
    javaName := "org.allbinary.game.ag.layer.weapon.mine.MineLayer",
    super := "SimpleWeaponLayer",
    interfaces := #[],
    isInterface := false,
    fields := #[("viewPositionEventHandler", JV.null)],
    statics := #[("NAME", (JV.str "MineLayer"))],
    methods := #[
        ("initXYZ_3", #["int", "int", "int"], false, m_initXYZ_3), 
        ("damage_2", #["int", "int"], false, m_damage_2), 
        ("getDamage_1", #["int"], false, m_getDamage_1), 
        ("setDestroyed_1", #["boolean"], false, m_setDestroyed_1), 
        ("jinit_1", #["ViewPositionBase"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MineLayer


