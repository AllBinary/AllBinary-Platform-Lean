-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoHighScoresFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "NO_HIGH_SCORES" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoHighScoresFactory" "instance" (<- JR.new "NoHighScoresFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoHighScoresFactory" "instance")


def m_fetchHighScores_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    let mut l_highScoresResultsListener : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Getting No HighScores"), this, (JV.str "fetchHighScores")])
    let _ := (<- JR.call l_highScoresResultsListener "setHighScoresArray_1" #[(<- JR.getField this "NO_HIGH_SCORES")])
    pure JV.null


def m_createHighScoresHelper_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "HighScoresHelperBase" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "HighScoresBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoHighScoresFactory",
    javaName := "org.allbinary.game.score.NoHighScoresFactory",
    super := "HighScoresBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("NO_HIGH_SCORES", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("fetchHighScores_2", #["GameInfo", "HighScoresResultsListener"], false, m_fetchHighScores_2), 
        ("createHighScoresHelper_0", #[], false, m_createHighScoresHelper_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoHighScoresFactory


