-- Generated Code Do Not Modify
-- package org.allbinary.game.terrain
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicTerrainInfo

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicTerrainInfo" "NULL_BASIC_TERRAIN_INFO" (<- JR.new "BasicTerrainInfo" #[(<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "NOT_ANGLE")])
    pure JV.null


def m_getAngle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "angle")


def m_setAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    JR.setField this "angle" l_angle
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "angle" l_angle
    pure this

initialize JR.registerClass {
    name := "BasicTerrainInfo",
    javaName := "org.allbinary.game.terrain.BasicTerrainInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("angle", JV.null)],
    statics := #[("NULL_BASIC_TERRAIN_INFO", JV.null)],
    methods := #[
        ("getAngle_0", #[], false, m_getAngle_0), 
        ("setAngle_1", #["Angle"], false, m_setAngle_1), 
        ("jinit_1", #["Angle"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicTerrainInfo


