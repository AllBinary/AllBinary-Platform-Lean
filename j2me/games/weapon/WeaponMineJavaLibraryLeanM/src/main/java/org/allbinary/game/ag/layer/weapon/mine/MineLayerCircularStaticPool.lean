-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.weapon.mine
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MineLayerCircularStaticPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MineLayerCircularStaticPool" "WEAPON_LAYER_CIRCULAR_STATIC_POOL" (<- JR.new "WeaponLayerCircularPool" #[])
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_viewPositionFactoryInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "MineCountedPickedUpLayerInterfaceFactory" "init_0" #[])
    let _ := (<- JR.call (<- JR.getStatic "MineLayerCircularStaticPool" "WEAPON_LAYER_CIRCULAR_STATIC_POOL") "initAllBinaryLayerCircularPool_2" #[(<- JR.new "MineLayerFactory" #[l_viewPositionFactoryInterface]), (JV.int 20)])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MineLayerCircularStaticPool" "WEAPON_LAYER_CIRCULAR_STATIC_POOL")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MineLayerCircularStaticPool",
    javaName := "org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("WEAPON_LAYER_CIRCULAR_STATIC_POOL", JV.null)],
    methods := #[
        ("init_1", #["ViewPositionFactoryInterface"], true, m_init_1), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MineLayerCircularStaticPool


