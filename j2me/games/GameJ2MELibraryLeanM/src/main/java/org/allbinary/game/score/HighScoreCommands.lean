-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoreCommands

def jfields (this : JV) : JM JV := do
    JR.setField this "DISPLAY" (<- JR.new "Command" #[(JV.str "Scores"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "PERSONAL" (<- JR.new "Command" #[(JV.str "Personal"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setField this "WORLD" (<- JR.new "Command" #[(JV.str "World"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HighScoreCommands" "instance" (<- JR.new "HighScoreCommands" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HighScoreCommands" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoreCommands",
    javaName := "org.allbinary.game.score.HighScoreCommands",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("DISPLAY", JV.null), ("PERSONAL", JV.null), ("WORLD", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoreCommands


