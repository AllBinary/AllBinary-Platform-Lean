-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresCanvasNoInputProcessorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresCanvas : JV := (JR.arg jargs 0)
    return (<- JR.new "HighScoresCanvasInputProcessor" #[l_highScoresCanvas])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoresCanvasNoInputProcessorFactory",
    javaName := "org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory",
    super := "Object",
    interfaces := #["HighScoresCanvasInputProcessorFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["HighScoresCanvas"], false, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresCanvasNoInputProcessorFactory


