-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RemoteErrorHighScoresSingletonFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RemoteErrorHighScoresSingletonFactory" "SINGLETON" (<- JR.new "HighScores" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "LOADING"), (JV.str "Remote High Scores Did Not Load"), (<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "PERIODS")])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "RemoteErrorHighScoresSingletonFactory" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RemoteErrorHighScoresSingletonFactory",
    javaName := "org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RemoteErrorHighScoresSingletonFactory


