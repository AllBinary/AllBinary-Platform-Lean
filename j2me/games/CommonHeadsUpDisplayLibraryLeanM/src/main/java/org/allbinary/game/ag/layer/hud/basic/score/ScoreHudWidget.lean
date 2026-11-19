-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScoreHudWidget

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxscore : JV := (JR.asI (JR.arg jargs 0))
    let mut l_location : JV := (JR.asI (JR.arg jargs 1))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.new "ScoreHudWidget" #[l_maxscore, l_location, l_direction, (JV.int 2), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "GREY")])


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setInherited this "ScoreHudWidget" "updateMaxWidth" (<- JR.mul (<- JR.call l_font "getSize_0" #[]) (JV.int 5))
    let _ := (<- JR.callSuper "NumberStringHud" this "updateMeasurement_1" #[l_graphics])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxscore : JV := (JR.asI (JR.arg jargs 0))
    let mut l_location : JV := (JR.asI (JR.arg jargs 1))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 2))
    let mut l_bufferZone : JV := (JR.asI (JR.arg jargs 3))
    let mut l_basicColor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "NumberStringHud" this #[(JV.str "Pts "), l_maxscore, l_location, l_direction, l_bufferZone, l_basicColor]
    let _ <- jfields this
    JR.setInherited this "ScoreHudWidget" "updateMaxHeight" (JV.int 14)
    pure this

initialize JR.registerClass {
    name := "ScoreHudWidget",
    javaName := "org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget",
    super := "NumberStringHud",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_3", #["int", "int", "int"], true, m_getInstance_3), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("jinit_5", #["int", "int", "int", "int", "BasicColor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScoreHudWidget


