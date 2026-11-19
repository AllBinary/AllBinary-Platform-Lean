-- Generated Code Do Not Modify
-- package org.allbinary.game.collision.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryCollisionManager

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryCollisionManager" "allBinaryCollisionManager" (<- JR.new "AllBinaryCollisionManager" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AllBinaryCollisionManager" "allBinaryCollisionManager")


def m_process_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let mut l_startIndex : JV := (JR.asI (JR.arg jargs 2))
    let mut l_size : JV := (JR.asI (<- JR.call l_layerManager "getSize_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.add l_startIndex (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_collidableInterfaceCompositeInterface2 : JV := (<- JR.call l_layerManager "getLayerAt_1" #[l_index])
            let _ := (<- JR.call this "collide_3" #[l_layerManager, l_collidableInterfaceCompositeInterface, l_collidableInterfaceCompositeInterface2])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_collide_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_collidableInterfaceCompositeInterface : JV := (JR.arg jargs 1)
    let mut l_collidableInterfaceCompositeInterface2 : JV := (JR.arg jargs 2)
    let mut l_collidableBase2 : JV := (<- JR.call l_collidableInterfaceCompositeInterface2 "getCollidableInferface_0" #[])
    let mut l_collidableBase : JV := (<- JR.call l_collidableInterfaceCompositeInterface "getCollidableInferface_0" #[])
    if JR.truth (<- JR.call l_collidableBase2 "isCollidable_1" #[l_collidableInterfaceCompositeInterface]) then
        if JR.truth (<- JR.call l_collidableBase "isCollisionInterface_2" #[l_collidableInterfaceCompositeInterface, l_collidableInterfaceCompositeInterface2]) then
            let _ := (<- JR.call l_collidableBase "collideInterface_2" #[l_collidableInterfaceCompositeInterface, l_collidableInterfaceCompositeInterface2])
            let _ := (<- JR.call l_collidableBase2 "collideInterface_2" #[l_collidableInterfaceCompositeInterface, l_collidableInterfaceCompositeInterface])
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryCollisionManager",
    javaName := "org.allbinary.game.collision.layer.AllBinaryCollisionManager",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("allBinaryCollisionManager", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_3", #["LayerManager", "CollidableInterfaceCompositeInterface", "int"], false, m_process_3), 
        ("collide_3", #["LayerManager", "CollidableInterfaceCompositeInterface", "CollidableInterfaceCompositeInterface"], false, m_collide_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryCollisionManager


