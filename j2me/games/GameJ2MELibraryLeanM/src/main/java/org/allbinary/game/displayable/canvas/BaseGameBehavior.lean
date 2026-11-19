-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseGameBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BaseGameBehavior" "instanceC" (<- JR.new "BaseGameBehavior" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BaseGameBehavior" "instanceC")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameAdState : JV := (<- JR.call (<- JR.callStatic "GameAdStateFactory" "getInstance_0" #[]) "getCurrentInstance_0" #[])
    let _ := (<- JR.call l_gameAdState "playingAdState_0" #[])
    pure JV.null


def m_pause_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL_AS_GAME_THREAD")]) then
        let mut l_currentDisplayableFactory : JV := (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_currentDisplayableFactory "setRunnable_1" #[(<- JR.getField l_allBinaryGameCanvas "gamePauseRunnable")])
        pure ()
    pure JV.null


def m_unPause_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL_AS_GAME_THREAD")]) then
        let mut l_currentDisplayableFactory : JV := (<- JR.callStatic "CurrentDisplayableFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_currentDisplayableFactory "setRunnable_1" #[(<- JR.getField l_allBinaryGameCanvas "gameRunnable")])
        let _ := (<- JR.call l_currentDisplayableFactory "setDisplayable_1" #[l_allBinaryGameCanvas])
        pure ()
    pure JV.null


def m_updateTouch_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "updateTouch2_0" #[])
    pure JV.null


def m_updateScreenButtonPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "updateScreenButtonPaintable2_0" #[])
    pure JV.null


def m_setGameState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "updateGameState_0" #[])
    pure JV.null


def m_removeAllGameKeyInputListeners_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "removeAllGameKeyInputListeners2_0" #[])
    pure JV.null


def m_updateEndGameProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "updateEndGameProcessor2_0" #[])
    pure JV.null


def m_buildGame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "buildGame2_0" #[])
    pure JV.null


def m_run_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "run2_0" #[])
    pure JV.null


def m_setHighScore_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 1)
    let mut l_name : JV := (JR.arg jargs 2)
    let mut l_score : JV := (JR.asJ (JR.arg jargs 3))
    let mut l_autoSubmit : JV := (JR.arg jargs 4)
    let mut l_isLast : JV := (JR.arg jargs 5)
    let _ := (<- JR.call l_allBinaryGameCanvas "setHighScore2_5" #[l_abeClientInformation, l_name, l_score, l_autoSubmit, l_isLast])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "DemoGameBehavior" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseGameBehavior",
    javaName := "org.allbinary.game.displayable.canvas.BaseGameBehavior",
    super := "DemoGameBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("pause_1", #["AllBinaryGameCanvas"], false, m_pause_1), 
        ("unPause_1", #["AllBinaryGameCanvas"], false, m_unPause_1), 
        ("updateTouch_1", #["AllBinaryGameCanvas"], false, m_updateTouch_1), 
        ("updateScreenButtonPaintable_1", #["AllBinaryGameCanvas"], false, m_updateScreenButtonPaintable_1), 
        ("setGameState_1", #["AllBinaryGameCanvas"], false, m_setGameState_1), 
        ("removeAllGameKeyInputListeners_1", #["AllBinaryGameCanvas"], false, m_removeAllGameKeyInputListeners_1), 
        ("updateEndGameProcessor_1", #["AllBinaryGameCanvas"], false, m_updateEndGameProcessor_1), 
        ("buildGame_1", #["AllBinaryGameCanvas"], false, m_buildGame_1), 
        ("run_1", #["AllBinaryGameCanvas"], false, m_run_1), 
        ("setHighScore_6", #["AbeClientInformationInterface", "AllBinaryGameCanvas", "String", "long", "boolean", "boolean"], false, m_setHighScore_6), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseGameBehavior


