-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.weapon.mine
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MineCountedPickedUpLayerInterfaceFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "weaponLayerCircularStaticPool" (<- JR.callStatic "MineLayerCircularStaticPool" "getInstance_0" #[])
    JR.setField this "weaponProperties" (<- JR.new "WeaponProperties" #[(JV.long (-1)), (JV.long (-1)), (JV.int 0), (JV.int 8000), (JR.toS (JV.int 10))])
    JR.setField this "smallIntegerSingletonFactory" (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MineCountedPickedUpLayerInterfaceFactory" "pickedUpLayerInterfaceFactoryInterface" (<- JR.getStatic "CountedPickedUpLayerInterfaceFactory" "NULL_COUNTED_PICKUP_LAYER_FACTORY")
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setStatic "MineCountedPickedUpLayerInterfaceFactory" "pickedUpLayerInterfaceFactoryInterface" (<- JR.new "MineCountedPickedUpLayerInterfaceFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MineCountedPickedUpLayerInterfaceFactory" "pickedUpLayerInterfaceFactoryInterface")


def m_getTotal_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 3))


def m_getNextInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    let mut l_sourceLayerInterface : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.call (<- JR.getField this "smallIntegerSingletonFactory") "getAt_1" #[(JV.int 0)])])
    let mut l_angle : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.call (<- JR.getField this "smallIntegerSingletonFactory") "getAt_1" #[(JV.int 1)])])
    let mut l_scoreableInterface : JV := l_sourceLayerInterface
    return (<- JR.call (<- JR.getField this "weaponLayerCircularStaticPool") "getInstanceWeaponLayer_8" #[l_sourceLayerInterface, l_x, l_y, l_z, (<- JR.call l_angle "intValue_0" #[]), (JV.int 0), (<- JR.getField this "weaponProperties"), l_scoreableInterface])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CountedPickedUpLayerInterfaceFactory" this #[(<- JR.getField (<- JR.callStatic "PickedUpLayerTypeFactory" "getInstance_0" #[]) "MINE"), (<- JR.callStatic "IconLayerFactory" "getInstance_3" #[(<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField (<- JR.callStatic "MineWeaponResources" "getInstance_0" #[]) "DROP_ICON_RESOURCE")]) "getInstance_1" #[(JV.int 0)]), (JV.int 10), (JV.int 10)]), (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField (<- JR.callStatic "MineWeaponResources" "getInstance_0" #[]) "DROP_RESOURCE")]) "getInstance_1" #[(JV.int 0)])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MineCountedPickedUpLayerInterfaceFactory",
    javaName := "org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory",
    super := "CountedPickedUpLayerInterfaceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("weaponLayerCircularStaticPool", JV.null), ("weaponProperties", JV.null), ("smallIntegerSingletonFactory", JV.null)],
    statics := #[("pickedUpLayerInterfaceFactoryInterface", JV.null)],
    methods := #[
        ("init_0", #[], true, m_init_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getTotal_0", #[], false, m_getTotal_0), 
        ("getNextInstance_4", #["ABHashtable", "int", "int", "int"], false, m_getNextInstance_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MineCountedPickedUpLayerInterfaceFactory


