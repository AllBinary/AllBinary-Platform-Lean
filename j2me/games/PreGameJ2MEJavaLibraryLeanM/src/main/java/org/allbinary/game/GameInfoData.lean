-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInfoData

def jfields (this : JV) : JM JV := do
    JR.setField this "GAME_TYPE" (JV.str "GAME_TYPE")
    JR.setField this "GAME_MODE" (JV.str "GAME_MODE")
    JR.setField this "PLAYER_TYPE" (JV.str "PLAYER_TYPE")
    JR.setField this "HIGHEST_LEVEL" (JV.str "HIGHEST_LEVEL")
    JR.setField this "CURRENT_LEVEL" (JV.str "CURRENT_LEVEL")
    JR.setField this "SOFTWARE_INFORMATION" (JV.str "SOFTWARE_INFORMATION")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameInfoData" "instance" (<- JR.new "GameInfoData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameInfoData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameInfoData",
    javaName := "org.allbinary.game.GameInfoData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("GAME_TYPE", JV.null), ("GAME_MODE", JV.null), ("PLAYER_TYPE", JV.null), ("HIGHEST_LEVEL", JV.null), ("CURRENT_LEVEL", JV.null), ("SOFTWARE_INFORMATION", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInfoData


