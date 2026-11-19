-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInfoCopyFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstanceMaxLevel_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    let mut l_maxLevel : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.new "GameInfo" #[(<- JR.call l_gameInfo "getGameType_0" #[]), (<- JR.call l_gameInfo "getGameMode_0" #[]), (<- JR.call l_gameInfo "getPlayerType_0" #[]), l_maxLevel, (<- JR.call l_gameInfo "getCurrentLevel_0" #[])])


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    return (<- JR.new "GameInfo" #[(<- JR.call l_gameInfo "getGameType_0" #[]), (<- JR.call l_gameInfo "getGameMode_0" #[]), (<- JR.call l_gameInfo "getPlayerType_0" #[]), (<- JR.call l_gameInfo "getHighestLevel_0" #[]), (<- JR.call l_gameInfo "getCurrentLevel_0" #[])])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameInfoCopyFactory",
    javaName := "org.allbinary.game.GameInfoCopyFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstanceMaxLevel_2", #["GameInfo", "int"], true, m_getInstanceMaxLevel_2), 
        ("getInstance_1", #["GameInfo"], true, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInfoCopyFactory


