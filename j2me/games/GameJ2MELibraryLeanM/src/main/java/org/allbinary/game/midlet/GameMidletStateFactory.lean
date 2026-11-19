-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameMidletStateFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "currentGameState" (<- JR.getField (<- JR.callStatic "GameStateFactory" "getInstance_0" #[]) "NO_GAME_STATE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameMidletStateFactory" "INSTANCE" (<- JR.new "GameMidletStateFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameMidletStateFactory" "INSTANCE")


def m_getCurrentGameState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "currentGameState")


def m_setCurrentGameState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentGameState : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "CURRENT")]) "append_1" #[(JV.str " GameState: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_currentGameState])]) "toString_0" #[]), this, (JV.str "setCurrentGameState")])
    JR.setField this "currentGameState" l_currentGameState
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameMidletStateFactory",
    javaName := "org.allbinary.game.midlet.GameMidletStateFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("currentGameState", JV.null)],
    statics := #[("INSTANCE", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getCurrentGameState_0", #[], false, m_getCurrentGameState_0), 
        ("setCurrentGameState_1", #["GameState"], false, m_setCurrentGameState_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameMidletStateFactory


