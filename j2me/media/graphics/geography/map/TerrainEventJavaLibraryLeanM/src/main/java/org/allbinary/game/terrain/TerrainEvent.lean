-- Generated Code Do Not Modify
-- package org.allbinary.game.terrain
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TerrainEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "basicTerrainInfo" (<- JR.getStatic "BasicTerrainInfo" "NULL_BASIC_TERRAIN_INFO")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "TerrainEvent: \n")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "LayerInterface: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "basicTerrainInfo") "toString_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getBasicTerrainInfo_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicTerrainInfo")


def m_setBasicTerrainInfo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicTerrainInfo : JV := (JR.arg jargs 0)
    JR.setField this "basicTerrainInfo" l_basicTerrainInfo
    pure JV.null


def m_setBasicTerrainInfoForCircularStaticPool_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicTerrainInfo : JV := (JR.arg jargs 0)
    JR.setField this "basicTerrainInfo" l_basicTerrainInfo
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicTerrainInfo : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_basicTerrainInfo]
    let _ <- jfields this
    let _ := (<- JR.call this "setBasicTerrainInfo_1" #[(<- JR.getField this "basicTerrainInfo")])
    pure this

initialize JR.registerClass {
    name := "TerrainEvent",
    javaName := "org.allbinary.game.terrain.TerrainEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicTerrainInfo", JV.null)],
    statics := #[],
    methods := #[
        ("toString_0", #[], false, m_toString_0), 
        ("getBasicTerrainInfo_0", #[], false, m_getBasicTerrainInfo_0), 
        ("setBasicTerrainInfo_1", #["BasicTerrainInfo"], false, m_setBasicTerrainInfo_1), 
        ("setBasicTerrainInfoForCircularStaticPool_1", #["BasicTerrainInfo"], false, m_setBasicTerrainInfoForCircularStaticPool_1), 
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TerrainEvent


