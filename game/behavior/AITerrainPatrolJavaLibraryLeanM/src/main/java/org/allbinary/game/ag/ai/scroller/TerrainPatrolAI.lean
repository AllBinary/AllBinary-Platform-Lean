-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TerrainPatrolAI

def jfields (this : JV) : JM JV := do
    JR.setField this "terrainEventListener" (<- JR.new "TerrainEventListener" #[])
    JR.setField this "DOWN" (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "DOWN")
    JR.setField this "CLIFF" (<- JR.new "BasicTerrainInfo" #[(<- JR.getField this "DOWN")])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "PacePatrolAI" this "update_0" #[])
    let _ := (<- JR.call this "changeDirectionIfCliffReached_0" #[])
    pure JV.null


def m_changeDirectionIfCliffReached_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (<- JR.call (<- JR.getField this "terrainEventListener") "getList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_terrainEvent : JV := (<- JR.call l_list "removeAt_1" #[l_index])
            let mut l_basicTerrainInfo : JV := (<- JR.call l_terrainEvent "getBasicTerrainInfo_0" #[])
            let mut l_angle : JV := (<- JR.call l_basicTerrainInfo "getAngle_0" #[])
            if JR.truth (<- JR.eq l_angle (<- JR.getField this "DOWN")) then
                let _ := (<- JR.callInherited this "TerrainPatrolAI" "nextDirection_0" #[])
                if JR.truth (JR.not (<- JR.getInherited this "TerrainPatrolAI" "isFollowLimitedByTerrain")) then
                    let _ := (<- JR.call (<- JR.getInherited this "TerrainPatrolAI" "logUtil") "putF_3" #[(JV.str "Following Limited"), this, (JV.str "onTerrainEvent")])
                    JR.setInherited this "TerrainPatrolAI" "isFollowLimitedByTerrain" (JV.bool true)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "PacePatrolAI" this #[l_hashtable, l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.callStatic "TerrainEventHandler" "getInstance_1" #[l_ownerLayerInterface]) "addListener_1" #[(<- JR.getField this "terrainEventListener")])
    let _ := (<- JR.call (<- JR.getField this "terrainEventListener") "onTerrainEvent_1" #[(<- JR.call (<- JR.callStatic "TerrainEventCircularStaticPool" "getInstance_0" #[]) "getNext_1" #[(<- JR.getField this "CLIFF")])])
    pure this

initialize JR.registerClass {
    name := "TerrainPatrolAI",
    javaName := "org.allbinary.game.ag.ai.scroller.TerrainPatrolAI",
    super := "PacePatrolAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("terrainEventListener", JV.null), ("DOWN", JV.null), ("CLIFF", JV.null)],
    statics := #[],
    methods := #[
        ("update_0", #[], false, m_update_0), 
        ("changeDirectionIfCliffReached_0", #[], false, m_changeDirectionIfCliffReached_0), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TerrainPatrolAI


