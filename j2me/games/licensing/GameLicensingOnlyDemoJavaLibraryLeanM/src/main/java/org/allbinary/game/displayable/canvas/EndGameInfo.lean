-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_EndGameInfo

def jfields (this : JV) : JM JV := do
    JR.setField this "NORMAL_GAME_OVER_WIN" (JV.str "You Won")
    JR.setField this "TEASER_DEMO_GAME_END_LAST_LEVEL" (JV.str "End of Demo.")
    JR.setField this "TEASER_DEMO_GAME_END" (JV.str "Demo Game Over.")
    JR.setField this "gameOverStr" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "winStr" (<- JR.getField this "gameOverStr")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    let mut l_myCanvas : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.call l_gameInfo "isLastLevel_0" #[]) then
        let _ := (<- JR.call this "setWinStr_1" #[(<- JR.getField this "TEASER_DEMO_GAME_END_LAST_LEVEL")])
        let _ := (<- JR.call this "setGameOverStr_1" #[(<- JR.getField this "TEASER_DEMO_GAME_END_LAST_LEVEL")])
        pure ()
    else
        let _ := (<- JR.call this "setWinStr_1" #[(<- JR.getField this "NORMAL_GAME_OVER_WIN")])
        let _ := (<- JR.call this "setGameOverStr_1" #[(<- JR.getField this "TEASER_DEMO_GAME_END")])
        pure ()
    pure JV.null


def m_getGameOverStr_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameOverStr")


def m_setGameOverStr_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameOverStr : JV := (JR.arg jargs 0)
    JR.setField this "gameOverStr" l_gameOverStr
    pure JV.null


def m_getWinStr_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "winStr")


def m_setWinStr_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_winStr : JV := (JR.arg jargs 0)
    JR.setField this "winStr" l_winStr
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "EndGameInfo",
    javaName := "org.allbinary.game.displayable.canvas.EndGameInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NORMAL_GAME_OVER_WIN", JV.null), ("TEASER_DEMO_GAME_END_LAST_LEVEL", JV.null), ("TEASER_DEMO_GAME_END", JV.null), ("gameOverStr", JV.null), ("winStr", JV.null)],
    statics := #[],
    methods := #[
        ("update_2", #["GameInfo", "MyCanvas"], false, m_update_2), 
        ("getGameOverStr_0", #[], false, m_getGameOverStr_0), 
        ("setGameOverStr_1", #["String"], false, m_setGameOverStr_1), 
        ("getWinStr_0", #[], false, m_getWinStr_0), 
        ("setWinStr_1", #["String"], false, m_setWinStr_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_EndGameInfo


