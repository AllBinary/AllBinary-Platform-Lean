-- Generated Code Do Not Modify
-- package org.allbinary.game.terrain
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TerrainEventListener

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onTerrainEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_terrainEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_terrainEvent])
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TerrainEventListener",
    javaName := "org.allbinary.game.terrain.TerrainEventListener",
    super := "Object",
    interfaces := #["TerrainEventListenerInterface"],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onTerrainEvent_1", #["TerrainEvent"], false, m_onTerrainEvent_1), 
        ("getList_0", #[], false, m_getList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TerrainEventListener


