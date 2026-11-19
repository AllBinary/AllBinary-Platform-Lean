-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FallingPickupLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processTick_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "FallingPickupLayer" "setPosition_3" #[(<- JR.getInherited this "FallingPickupLayer" "x"), (<- JR.add (<- JR.getInherited this "FallingPickupLayer" "y") (JV.int 1)), (<- JR.getInherited this "FallingPickupLayer" "z")])
    pure JV.null


def m_implmentsTickableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_remoteInfo : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "PickupLayer" this #[(<- JR.getStatic "FallingPickupLayer" "NAME"), l_remoteInfo, (JV.int 0), (<- JR.getStatic "CountedPickedUpLayerInterfaceFactory" "NULL_COUNTED_PICKUP_LAYER_FACTORY"), (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)]), (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (JV.int 0), (JV.int 0)]), (<- JR.callStatic "ViewPosition" "getInstanceD_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FallingPickupLayer",
    javaName := "org.allbinary.game.ag.layer.pickup.FallingPickupLayer",
    super := "PickupLayer",
    interfaces := #["TickableInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NAME", (JV.str "FallingPickupLayer"))],
    methods := #[
        ("processTick_1", #["AllBinaryLayerManager"], false, m_processTick_1), 
        ("implmentsTickableInterface_0", #[], false, m_implmentsTickableInterface_0), 
        ("jinit_1", #["RemoteInfo"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FallingPickupLayer


