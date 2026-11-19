-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicHighScoresGameInfoFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "MULTI_PLAYER_SERVER" (<- JR.new "GameInfo" #[(<- JR.getField (<- JR.callStatic "GameTypeFactory" "getInstance_0" #[]) "MULTI_PLAYER"), (<- JR.getStatic "GameMode" "SERVER"), (<- JR.getField (<- JR.callStatic "PlayerTypesFactory" "getInstance_0" #[]) "PLAYER_TYPE_ONE"), (JV.int 0), (JV.int 0)])
    JR.setField this "SINGLE_PLAYER_SERVER" (<- JR.new "GameInfo" #[(<- JR.getField (<- JR.callStatic "GameTypeFactory" "getInstance_0" #[]) "SINGLE_PLAYER"), (<- JR.getStatic "GameMode" "SERVER"), (<- JR.getField (<- JR.callStatic "PlayerTypesFactory" "getInstance_0" #[]) "PLAYER_TYPE_ONE"), (JV.int 0), (JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicHighScoresGameInfoFactory" "SINGLETON" (<- JR.new "BasicHighScoresGameInfoFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicHighScoresGameInfoFactory" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicHighScoresGameInfoFactory",
    javaName := "org.allbinary.game.BasicHighScoresGameInfoFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("MULTI_PLAYER_SERVER", JV.null), ("SINGLE_PLAYER_SERVER", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicHighScoresGameInfoFactory


