-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInfo

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "gameInfoData" (<- JR.callStatic "GameInfoData" "getInstance_0" #[])
    JR.setField this "NEW_LEVEL" (JV.str "New Level: ")
    JR.setField this "SET_CURRENT_LEVEL" (JV.str "setCurrentLevel")
    JR.setField this "NEXT_GAME_LEVEL" (JV.str "nextGameLevel")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameInfo" "NONE" (<- JR.new "GameInfo" #[(<- JR.getField (<- JR.callStatic "GameTypeFactory" "getInstance_0" #[]) "NONE"), (<- JR.getStatic "GameMode" "NONE"), (<- JR.getField (<- JR.callStatic "PlayerTypesFactory" "getInstance_0" #[]) "PLAYER_TYPE_ONE"), (JV.int (-1)), (JV.int (-1))])
    pure JV.null


def m_getGameType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameType")


def m_getGameMode_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameMode")


def m_getPlayerType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "playerType")


def m_getHighestLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "highestLevel"))


def m_setHighestLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highestLevel : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "highestLevel" (JR.asI l_highestLevel)
    pure JV.null


def m_getCurrentLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "currentLevel"))


def m_setCurrentLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentLevel : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "currentLevel" (JR.asI l_currentLevel)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "NEW_LEVEL")]) "appendint_1" #[(<- JR.call this "getCurrentLevel_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "SET_CURRENT_LEVEL")])
    pure JV.null


def m_nextGameLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.lt (<- JR.call this "getCurrentLevel_0" #[]) (<- JR.call this "getHighestLevel_0" #[])) then
        JR.setField this "currentLevel" (JR.inc (<- JR.getField this "currentLevel"))
        pure ()
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "NEXT")]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")]) "append_1" #[(<- JR.getField this "NEW_LEVEL")]) "appendint_1" #[(<- JR.call this "getCurrentLevel_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "NEXT_GAME_LEVEL")])
    pure JV.null


def m_previousGameLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.gt (<- JR.call this "getCurrentLevel_0" #[]) (JV.int 1)) then
        JR.setField this "currentLevel" (JR.dec (<- JR.getField this "currentLevel"))
        pure ()
    pure JV.null


def m_isLastLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.ge (<- JR.call this "getCurrentLevel_0" #[]) (<- JR.call this "getHighestLevel_0" #[])) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_toHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.getField (<- JR.getField this "gameInfoData") "GAME_TYPE"), (<- JR.call (<- JR.call this "getGameType_0" #[]) "toString_0" #[])])
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.getField (<- JR.getField this "gameInfoData") "GAME_MODE"), (<- JR.call (<- JR.getField this "gameMode") "toString_0" #[])])
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.getField (<- JR.getField this "gameInfoData") "PLAYER_TYPE"), (<- JR.call (<- JR.getField this "playerType") "toString_0" #[])])
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.getField (<- JR.getField this "gameInfoData") "HIGHEST_LEVEL"), (<- JR.callStatic "Integer" "toString_1" #[(<- JR.call this "getHighestLevel_0" #[])])])
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.getField (<- JR.getField this "gameInfoData") "CURRENT_LEVEL"), (<- JR.callStatic "Integer" "toString_1" #[(<- JR.getField this "currentLevel")])])
    return l_hashtable


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "gameInfoData") "GAME_TYPE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.call this "getGameType_0" #[]) "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "gameInfoData") "GAME_MODE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "gameMode") "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "gameInfoData") "PLAYER_TYPE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.getField this "playerType")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "gameInfoData") "HIGHEST_LEVEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getHighestLevel_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "gameInfoData") "CURRENT_LEVEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "currentLevel")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameType : JV := (JR.arg jargs 0)
    let mut l_gameMode : JV := (JR.arg jargs 1)
    let mut l_playerType : JV := (JR.arg jargs 2)
    let mut l_highestLevel : JV := (JR.asI (JR.arg jargs 3))
    let mut l_currentLevel : JV := (JR.asI (JR.arg jargs 4))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "gameType" l_gameType
    JR.setField this "gameMode" l_gameMode
    let _ := (<- JR.call this "setHighestLevel_1" #[l_highestLevel])
    JR.setField this "currentLevel" (JR.asI l_currentLevel)
    JR.setField this "playerType" l_playerType
    pure this

initialize JR.registerClass {
    name := "GameInfo",
    javaName := "org.allbinary.game.GameInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("gameInfoData", JV.null), ("gameType", JV.null), ("gameMode", JV.null), ("playerType", JV.null), ("highestLevel", (JV.int 0)), ("currentLevel", (JV.int 0)), ("NEW_LEVEL", JV.null), ("SET_CURRENT_LEVEL", JV.null), ("NEXT_GAME_LEVEL", JV.null)],
    statics := #[("NONE", JV.null), ("LEVEL_NAME", (JV.str "LEVEL"))],
    methods := #[
        ("getGameType_0", #[], false, m_getGameType_0), 
        ("getGameMode_0", #[], false, m_getGameMode_0), 
        ("getPlayerType_0", #[], false, m_getPlayerType_0), 
        ("getHighestLevel_0", #[], false, m_getHighestLevel_0), 
        ("setHighestLevel_1", #["int"], false, m_setHighestLevel_1), 
        ("getCurrentLevel_0", #[], false, m_getCurrentLevel_0), 
        ("setCurrentLevel_1", #["int"], false, m_setCurrentLevel_1), 
        ("nextGameLevel_0", #[], false, m_nextGameLevel_0), 
        ("previousGameLevel_0", #[], false, m_previousGameLevel_0), 
        ("isLastLevel_0", #[], false, m_isLastLevel_0), 
        ("toHashtable_0", #[], false, m_toHashtable_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_5", #["GameType", "GameMode", "PlayerType", "int", "int"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInfo


