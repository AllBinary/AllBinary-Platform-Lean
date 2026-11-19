-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoGameBehavior

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DemoGameBehavior" "instance" (<- JR.new "DemoGameBehavior" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DemoGameBehavior" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_pause_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_unPause_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_updateTouch_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_updateScreenButtonPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "setTouchPaintableP_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
    pure JV.null


def m_setGameState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_removeAllGameKeyInputListeners_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_updateEndGameProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_buildGame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_run_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.getField (<- JR.callStatic "GameTypeFactory" "getInstance_0" #[]) "BOT") "toString_0" #[]), this, (<- JR.getField l_commonStrings "RUN")])
    pure JV.null


def m_setHighScore_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 1)
    let mut l_name : JV := (JR.arg jargs 2)
    let mut l_score : JV := (JR.asJ (JR.arg jargs 3))
    let mut l_autoSubmit : JV := (JR.arg jargs 4)
    let mut l_isLast : JV := (JR.arg jargs 5)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DemoGameBehavior",
    javaName := "org.allbinary.game.displayable.canvas.DemoGameBehavior",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
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

end jclass_DemoGameBehavior


