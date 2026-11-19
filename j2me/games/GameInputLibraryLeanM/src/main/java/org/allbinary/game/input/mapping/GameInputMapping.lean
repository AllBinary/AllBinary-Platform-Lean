-- Generated Code Do Not Modify
-- package org.allbinary.game.input.mapping
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInputMapping

def jfields (this : JV) : JM JV := do
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "gameKey" (<- JR.getStatic "GameKey" "NULL_GAME_KEY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setGameKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKey : JV := (JR.arg jargs 0)
    JR.setField this "gameKey" l_gameKey
    pure JV.null


def m_getGameKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameKey")


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    JR.setField this "name" l_name
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_gameKey : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setName_1" #[l_name])
    let _ := (<- JR.call this "setGameKey_1" #[l_gameKey])
    pure this

initialize JR.registerClass {
    name := "GameInputMapping",
    javaName := "org.allbinary.game.input.mapping.GameInputMapping",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("gameKey", JV.null)],
    statics := #[],
    methods := #[
        ("setGameKey_1", #["GameKey"], false, m_setGameKey_1), 
        ("getGameKey_0", #[], false, m_getGameKey_0), 
        ("setName_1", #["String"], false, m_setName_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("jinit_2", #["String", "GameKey"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInputMapping


