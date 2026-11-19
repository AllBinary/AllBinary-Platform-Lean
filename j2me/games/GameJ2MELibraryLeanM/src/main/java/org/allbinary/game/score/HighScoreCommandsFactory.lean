-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoreCommandsFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HighScoreCommandsFactory" "instance" (<- JR.new "HighScoreCommandsFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HighScoreCommandsFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "HighScoreCommandsBaseFactory" this #[(<- JR.arrayOf "L" #[(<- JR.getField (<- JR.callStatic "HighScoreCommands" "getInstance_0" #[]) "PERSONAL"), (<- JR.getField (<- JR.callStatic "HighScoreCommands" "getInstance_0" #[]) "WORLD")])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoreCommandsFactory",
    javaName := "org.allbinary.game.score.HighScoreCommandsFactory",
    super := "HighScoreCommandsBaseFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoreCommandsFactory


