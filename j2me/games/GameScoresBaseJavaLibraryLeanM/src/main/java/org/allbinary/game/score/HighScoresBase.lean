-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresBase

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_fetchHighScores_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    let mut l_highScoresResultsListener : JV := (JR.arg jargs 1)
    throw (<- JR.new "RuntimeException" #[])


def m_fetchHighScoresPreload_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    let mut l_highScoresResultsListener : JV := (JR.arg jargs 1)
    let mut l_preload : JV := (JR.arg jargs 2)
    throw (<- JR.new "RuntimeException" #[])


def m_createHighScoresHelper_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoresBase",
    javaName := "org.allbinary.game.score.HighScoresBase",
    super := "Object",
    interfaces := #["HighScoresFactoryInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null)],
    statics := #[],
    methods := #[
        ("fetchHighScores_2", #["GameInfo", "HighScoresResultsListener"], false, m_fetchHighScores_2), 
        ("fetchHighScoresPreload_3", #["GameInfo", "HighScoresResultsListener", "boolean"], false, m_fetchHighScoresPreload_3), 
        ("createHighScoresHelper_0", #[], false, m_createHighScoresHelper_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresBase


