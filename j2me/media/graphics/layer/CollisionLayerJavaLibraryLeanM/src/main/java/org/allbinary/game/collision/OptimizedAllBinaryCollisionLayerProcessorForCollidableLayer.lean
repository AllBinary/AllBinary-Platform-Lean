-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAt_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_layerInterface : JV := (JR.arg jargs 1)
    let mut l_startIndex : JV := (JR.asI (JR.arg jargs 2))
    let mut l_collidableInterfaceCompositeInterface : JV := l_layerInterface
    let mut l_collidableBase : JV := (<- JR.call l_collidableInterfaceCompositeInterface "getCollidableInferface_0" #[])
    if JR.truth (<- JR.call l_collidableBase "isCollidable_1" #[l_collidableInterfaceCompositeInterface]) then
        let mut l_layerManager : JV := (<- JR.callInherited this "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer" "getLayerManager_0" #[])
        let mut l_size : JV := (JR.asI (<- JR.call l_layerManager "getSize_0" #[]))
        let mut l_collidableInterfaceCompositeInterface2 : JV := JV.null
        let mut l_collidableBase2 : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (<- JR.add l_startIndex (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_collidableInterfaceCompositeInterface2 := (<- JR.call l_layerManager "getLayerAt_1" #[l_index])
                l_collidableBase2 := (<- JR.call l_collidableInterfaceCompositeInterface2 "getCollidableInferface_0" #[])
                if JR.truth (<- JR.cand (<- JR.call l_collidableBase2 "isCollidable_1" #[l_collidableInterfaceCompositeInterface]) (do pure (<- JR.call l_collidableBase "isCollision_2" #[l_collidableInterfaceCompositeInterface, l_collidableInterfaceCompositeInterface2]))) then
                    let _ := (<- JR.call l_collidableBase "collide_2" #[l_collidableInterfaceCompositeInterface, l_collidableInterfaceCompositeInterface2])
                    let _ := (<- JR.call l_collidableBase2 "collide_2" #[l_collidableInterfaceCompositeInterface2, l_collidableInterfaceCompositeInterface])
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_isProcessorLayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call l_layerInterface "implmentsCollidableInterface_0" #[]) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LayerProcessor" this #[(<- JR.new "OptimizedAllBinaryCollisionLayerManager" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer",
    javaName := "org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer",
    super := "LayerProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processAt_3", #["AllBinaryLayerManager", "AllBinaryLayer", "int"], false, m_processAt_3), 
        ("isProcessorLayer_1", #["AllBinaryLayer"], false, m_isProcessorLayer_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer


