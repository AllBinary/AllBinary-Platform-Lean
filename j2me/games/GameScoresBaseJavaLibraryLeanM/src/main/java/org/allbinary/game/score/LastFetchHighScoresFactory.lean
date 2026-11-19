-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LastFetchHighScoresFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "highScoresArray" (<- JR.getField (<- JR.callStatic "NoHighScoresFactory" "getInstance_0" #[]) "NO_HIGH_SCORES")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LastFetchHighScoresFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "LastFetchHighScoresFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "LastFetchHighScoresFactory" "instance" (<- JR.new "LastFetchHighScoresFactory" #[])
        pure ()
    return (<- JR.getStatic "LastFetchHighScoresFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LastFetchHighScoresFactory",
    javaName := "org.allbinary.game.score.LastFetchHighScoresFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("highScoresArray", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LastFetchHighScoresFactory


