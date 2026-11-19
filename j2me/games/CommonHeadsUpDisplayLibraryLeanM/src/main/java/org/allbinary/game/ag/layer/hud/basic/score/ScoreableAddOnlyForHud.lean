-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScoreableAddOnlyForHud

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_removePoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_addPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "Scoreable" this "addPoints_1" #[l_points])
    let _ := (<- JR.call (<- JR.call this "getScoreHudWidget_0" #[]) "add_1" #[l_points])
    pure JV.null


def m_getScoreHudWidget_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "scoreHudWidget")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scoreVectorGraphic : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Scoreable" this #[(JV.int 0)]
    let _ <- jfields this
    JR.setField this "scoreHudWidget" l_scoreVectorGraphic
    let _ := (<- JR.call (<- JR.call this "getScoreHudWidget_0" #[]) "set_1" #[(JV.int 0)])
    pure this

initialize JR.registerClass {
    name := "ScoreableAddOnlyForHud",
    javaName := "org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud",
    super := "Scoreable",
    interfaces := #[],
    isInterface := false,
    fields := #[("scoreHudWidget", JV.null)],
    statics := #[],
    methods := #[
        ("removePoints_1", #["int"], false, m_removePoints_1), 
        ("addPoints_1", #["int"], false, m_addPoints_1), 
        ("getScoreHudWidget_0", #[], false, m_getScoreHudWidget_0), 
        ("jinit_1", #["ScoreHudWidget"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScoreableAddOnlyForHud


