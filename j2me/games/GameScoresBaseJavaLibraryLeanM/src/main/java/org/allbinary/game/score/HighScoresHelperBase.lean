-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresHelperBase

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "highScoresArrayP" (<- JR.getField (<- JR.callStatic "LastFetchHighScoresFactory" "getInstance_0" #[]) "highScoresArray")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setHighScoresArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresArrayP : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne l_highScoresArrayP JV.null) then
        let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField l_commonStrings "START")]) "appendint_1" #[(<- JR.alen l_highScoresArrayP)]) "toString_0" #[]), this, (JV.str "setHighScoresArray")])
        pure ()
    else
        let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField l_commonStrings "START"), this, (JV.str "setHighScoresArray")])
        pure ()
    JR.setField this "highScoresArrayP" l_highScoresArrayP
    pure JV.null


def m_getNextHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])


def m_isAnyHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_setSelectedHighScores_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_selectedHighScores : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSelectedHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])


def m_getHighScoresArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "highScoresArrayP")


def m_selectHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoresHelperBase",
    javaName := "org.allbinary.game.score.HighScoresHelperBase",
    super := "Object",
    interfaces := #["HighScoresHelperBaseInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("highScoresArrayP", JV.null)],
    statics := #[],
    methods := #[
        ("setHighScoresArray_1", #["HighScoresArr"], false, m_setHighScoresArray_1), 
        ("getNextHighScores_0", #[], false, m_getNextHighScores_0), 
        ("isAnyHighScores_0", #[], false, m_isAnyHighScores_0), 
        ("setSelectedHighScores_1", #["HighScores"], false, m_setSelectedHighScores_1), 
        ("getSelectedHighScores_0", #[], false, m_getSelectedHighScores_0), 
        ("getHighScoresArray_0", #[], false, m_getHighScoresArray_0), 
        ("selectHighScores_0", #[], false, m_selectHighScores_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresHelperBase


