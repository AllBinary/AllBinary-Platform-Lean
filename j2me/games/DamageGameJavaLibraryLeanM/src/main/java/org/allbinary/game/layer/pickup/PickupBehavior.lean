-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PickupBehavior

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PickupBehavior" "NULL_PICKUP_BEHAVIOR" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "PickupBehavior" "NULL_PICKUP_BEHAVIOR") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "PickupBehavior" "NULL_PICKUP_BEHAVIOR" (<- JR.new "PickupBehavior" #[(<- JR.callStatic "CollidableCompositeLayer" "getNullInstance_0" #[]), (JV.int 0)])
        pure ()
    return (<- JR.getStatic "PickupBehavior" "NULL_PICKUP_BEHAVIOR")


def m_doPickup_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickupProcessorInterface : JV := (JR.arg jargs 0)
    try
        let mut l_healthInterfaceCompositeInterface : JV := (<- JR.getField this "ownerLayerInterface")
        if JR.truth (<- JR.call (<- JR.call l_healthInterfaceCompositeInterface "getHealthInterface_0" #[]) "isAlive_0" #[]) then
            let _ := (<- JR.call l_pickupProcessorInterface "process_1" #[(<- JR.getField this "ownerLayerInterface")])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "doPickup"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_doPickupLayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickupLayerInterface : JV := (JR.arg jargs 0)
    try
        let mut l_pickedUpLayerInterfaceFactoryInterface : JV := (<- JR.call l_pickupLayerInterface "getPickedUpLayerInterfaceFactoryInterface_0" #[])
        let mut l_pickedUpLayerType : JV := (<- JR.call l_pickedUpLayerInterfaceFactoryInterface "getPickedUpLayerType_0" #[])
        let mut l_pickedUpLayerTypeFactory : JV := (<- JR.callStatic "PickedUpLayerTypeFactory" "getInstance_0" #[])
        if JR.truth (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.eq l_pickedUpLayerType (<- JR.getField l_pickedUpLayerTypeFactory "BEAM")) (do pure (<- JR.eq l_pickedUpLayerType (<- JR.getField l_pickedUpLayerTypeFactory "MINE")))) (do pure (<- JR.eq l_pickedUpLayerType (<- JR.getField l_pickedUpLayerTypeFactory "PROJECTILE")))) (do pure (<- JR.eq l_pickedUpLayerType (<- JR.getField l_pickedUpLayerTypeFactory "ENHANCEMENT")))) then
            let _ := (<- JR.call this "add_1" #[l_pickedUpLayerInterfaceFactoryInterface])
            pure ()
        else
            if JR.truth (<- JR.eq (<- JR.call l_pickedUpLayerInterfaceFactoryInterface "getPickedUpLayerType_0" #[]) (<- JR.getField l_pickedUpLayerTypeFactory "PART")) then
                let mut l_collidableDestroyableDamageableLayer : JV := (<- JR.getField this "ownerLayerInterface")
                let _ := (<- JR.call l_collidableDestroyableDamageableLayer "addPart_1" #[l_pickedUpLayerInterfaceFactoryInterface])
                pure ()
            else
                if JR.truth (<- JR.eq l_pickedUpLayerType (<- JR.getField l_pickedUpLayerTypeFactory "NONE")) then
                    pure ()
                else
                    let mut l_pickupProcessorInterface : JV := l_pickedUpLayerInterfaceFactoryInterface
                    let _ := (<- JR.call this "doPickup_1" #[l_pickupProcessorInterface])
                    pure ()
        let _ := (<- JR.call l_pickupLayerInterface "setPickedUp_0" #[])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "doPickup"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_countedPickedUpLayerInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_partIndex : JV := (JR.asI (<- JR.add (<- JR.call l_countedPickedUpLayerInterfaceFactoryInterface "getId_0" #[]) (<- JR.getField this "countedIndex")))
    let _ := (<- JR.call this "addAt_2" #[l_countedPickedUpLayerInterfaceFactoryInterface, l_partIndex])
    pure JV.null


def m_addAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_countedPickedUpLayerInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_partIndex : JV := (JR.asI (JR.arg jargs 1))
    let mut l_collidableDestroyableDamageableLayer : JV := (<- JR.getField this "ownerLayerInterface")
    let mut l_countedLayerInterfaceFactory : JV := (<- JR.aget (<- JR.call l_collidableDestroyableDamageableLayer "getPartInterfaceArray_0" #[]) l_partIndex)
    let _ := (<- JR.call l_countedLayerInterfaceFactory "setTotal_1" #[(<- JR.add (<- JR.call l_countedLayerInterfaceFactory "getTotal_0" #[]) (<- JR.call l_countedPickedUpLayerInterfaceFactoryInterface "getTotal_0" #[]))])
    pure JV.null


def m_getFirstAvailableCountedLayerInterfaceFactory_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickedUpLayerTypeArray : JV := (JR.arg jargs 0)
    let mut l_collidableDestroyableDamageableLayer : JV := (<- JR.getField this "ownerLayerInterface")
    let mut l_partInterfaceArray : JV := (<- JR.call l_collidableDestroyableDamageableLayer "getPartInterfaceArray_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_partInterfaceArray))
    let mut l_nextCountedLayerInterfaceFactory : JV := JV.null
    let mut l_countedPickedUpLayerInterfaceFactory : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.getField this "countedIndex"))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_nextCountedLayerInterfaceFactory := (<- JR.aget (<- JR.call l_collidableDestroyableDamageableLayer "getPartInterfaceArray_0" #[]) l_index)
            l_countedPickedUpLayerInterfaceFactory := (<- JR.call l_nextCountedLayerInterfaceFactory "getCountedPickedUpLayerInterfaceFactory_0" #[])
            if true then
                let mut l_index2 : JV := (JR.asI (<- JR.alen l_pickedUpLayerTypeArray))
                repeat
                    let jtemp4 : JV := (JR.dec l_index2)
                    l_index2 := jtemp4
                    
                    if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
                    if JR.truth (<- JR.eq (<- JR.call l_countedPickedUpLayerInterfaceFactory "getPickedUpLayerType_0" #[]) (<- JR.aget l_pickedUpLayerTypeArray l_index2)) then
                        if JR.truth (<- JR.gt (<- JR.call l_nextCountedLayerInterfaceFactory "getTotal_0" #[]) (JV.int 0)) then
                            return l_nextCountedLayerInterfaceFactory
                        pure ()
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.getStatic "CountedLayerInterfaceFactoryPart" "NULL_COUNTED_LAYER_INTERFACE_FACTORY")


def m_getCountedLayerInterfaceFactoryForSlot_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_slotIndex : JV := (JR.asI (JR.arg jargs 0))
    let mut l_currentSlot : JV := (JR.asI (JV.int 0))
    let mut l_collidableDestroyableDamageableLayer : JV := (<- JR.getField this "ownerLayerInterface")
    let mut l_partInterfaceArray : JV := (<- JR.call l_collidableDestroyableDamageableLayer "getPartInterfaceArray_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_partInterfaceArray))
    let mut l_nextCountedLayerInterfaceFactory : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.getField this "countedIndex"))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_nextCountedLayerInterfaceFactory := (<- JR.aget (<- JR.call l_collidableDestroyableDamageableLayer "getPartInterfaceArray_0" #[]) l_index)
            if JR.truth (<- JR.gt (<- JR.call l_nextCountedLayerInterfaceFactory "getTotal_0" #[]) (JV.int 0)) then
                if JR.truth (<- JR.eq l_currentSlot l_slotIndex) then
                    return l_nextCountedLayerInterfaceFactory
                else
                    l_currentSlot := (JR.inc l_currentSlot)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.getStatic "CountedLayerInterfaceFactoryPart" "NULL_COUNTED_LAYER_INTERFACE_FACTORY")


def m_getCountedIndex_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "countedIndex"))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_countedIndex : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "ownerLayerInterface" l_ownerLayerInterface
    JR.setField this "countedIndex" (JR.asI l_countedIndex)
    pure this

initialize JR.registerClass {
    name := "PickupBehavior",
    javaName := "org.allbinary.game.layer.pickup.PickupBehavior",
    super := "Object",
    interfaces := #["PickupBehaviorInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("countedIndex", (JV.int 0)), ("ownerLayerInterface", JV.null)],
    statics := #[("NULL_PICKUP_BEHAVIOR", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("doPickup_1", #["PickupProcessorInterface"], false, m_doPickup_1), 
        ("doPickupLayer_1", #["PickedUpLayerInterface"], false, m_doPickupLayer_1), 
        ("add_1", #["CountedPickedUpLayerInterfaceFactoryInterface"], false, m_add_1), 
        ("addAt_2", #["CountedPickedUpLayerInterfaceFactoryInterface", "int"], false, m_addAt_2), 
        ("getFirstAvailableCountedLayerInterfaceFactory_1", #["PickedUpLayerTypeArr"], false, m_getFirstAvailableCountedLayerInterfaceFactory_1), 
        ("getCountedLayerInterfaceFactoryForSlot_1", #["int"], false, m_getCountedLayerInterfaceFactoryForSlot_1), 
        ("getCountedIndex_0", #[], false, m_getCountedIndex_0), 
        ("jinit_2", #["CollidableCompositeLayer", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PickupBehavior


