-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup.points
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Points30kPickedUpLayerInterfaceFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "pool" (<- JR.new "PointsLayerCircularStaticPool" #[(<- JR.new "PointsLayerFactory" #[(<- JR.mul (<- JR.call (<- JR.callStatic "GameConfigurationUtil" "getInstance_0" #[]) "getCompetitionValue_0" #[]) (JV.int 30000))]), (JV.int 1)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Points30kPickedUpLayerInterfaceFactory" "pickedUpLayerInterfaceFactoryInterface" (<- JR.getStatic "CountedPickedUpLayerInterfaceFactory" "NULL_COUNTED_PICKUP_LAYER_FACTORY")
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setStatic "Points30kPickedUpLayerInterfaceFactory" "pickedUpLayerInterfaceFactoryInterface" (<- JR.new "Points30kPickedUpLayerInterfaceFactory" #[])
    pure JV.null


def m_getTotal_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 1))


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "Points30kPickedUpLayerInterfaceFactory" "pickedUpLayerInterfaceFactoryInterface")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "pool") "visit_1" #[l_sourceLayerInterface])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "PickedUpLayerInterfaceFactory" this #[(<- JR.getField (<- JR.callStatic "PickedUpLayerTypeFactory" "getInstance_0" #[]) "POINTS"), (<- JR.callStatic "IconLayerFactory" "getInstance_3" #[(<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField (<- JR.callStatic "PointsResources" "getInstance_0" #[]) "RESOURCE_3")]) "getInstance_1" #[(JV.int 0)]), (JV.int 10), (JV.int 10)]), (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField (<- JR.callStatic "PointsResources" "getInstance_0" #[]) "RESOURCE_3")]) "getInstance_1" #[(JV.int 0)])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Points30kPickedUpLayerInterfaceFactory",
    javaName := "org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory",
    super := "PickedUpLayerInterfaceFactory",
    interfaces := #["PickupProcessorInterface"],
    isInterface := false,
    fields := #[("pool", JV.null)],
    statics := #[("pickedUpLayerInterfaceFactoryInterface", JV.null)],
    methods := #[
        ("init_0", #[], true, m_init_0), 
        ("getTotal_0", #[], false, m_getTotal_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_1", #["AllBinaryLayer"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Points30kPickedUpLayerInterfaceFactory


