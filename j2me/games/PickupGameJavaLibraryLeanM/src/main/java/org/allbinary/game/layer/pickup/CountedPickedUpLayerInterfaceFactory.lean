-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CountedPickedUpLayerInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CountedPickedUpLayerInterfaceFactory" "NULL_COUNTED_PICKUP_LAYER_FACTORY" (<- JR.new "CountedPickedUpLayerInterfaceFactory" #[(<- JR.getField (<- JR.callStatic "PickedUpLayerTypeFactory" "getInstance_0" #[]) "NONE"), (<- JR.getStatic "IconLayer" "NULL_ICON_LAYER"), (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])])
    pure JV.null


def m_getNextInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "NOT_IMPLEMENTED")])


def m_getTotal_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "id"))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickeUpLayerType : JV := (JR.arg jargs 0)
    let mut l_iconLayer : JV := (JR.arg jargs 1)
    let mut l_animationInterface : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "PickedUpLayerInterfaceFactory" this #[l_pickeUpLayerType, l_iconLayer, l_animationInterface]
    let _ <- jfields this
    let mut l_list : JV := (<- JR.call (<- JR.callStatic "CountedPickedUpLayerInterfaceFactoryPool" "getInstance_0" #[]) "getList_0" #[])
    JR.setField this "id" (JR.asI (<- JR.call l_list "size_0" #[]))
    let _ := (<- JR.call l_list "add_1" #[this])
    pure this

initialize JR.registerClass {
    name := "CountedPickedUpLayerInterfaceFactory",
    javaName := "org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory",
    super := "PickedUpLayerInterfaceFactory",
    interfaces := #["CountedPickedUpLayerInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("id", (JV.int 0))],
    statics := #[("NULL_COUNTED_PICKUP_LAYER_FACTORY", JV.null)],
    methods := #[
        ("getNextInstance_4", #["ABHashtable", "int", "int", "int"], false, m_getNextInstance_4), 
        ("getTotal_0", #[], false, m_getTotal_0), 
        ("getId_0", #[], false, m_getId_0), 
        ("jinit_3", #["PickedUpLayerType", "IconLayer", "Animation"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CountedPickedUpLayerInterfaceFactory


