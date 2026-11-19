-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresHelper2

def jfields (this : JV) : JM JV := do
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstanceAt_2" #[(JV.int 0), (JV.int 0)])
    JR.setField this "selectedHighScores" (<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setSelectedHighScores_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_selectedHighScores : JV := (JR.arg jargs 0)
    JR.setField this "selectedHighScores" l_selectedHighScores
    pure JV.null


def m_getSelectedHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "selectedHighScores")


def m_setHighScoresArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresArrayP : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "HighScoresHelperBase" this "setHighScoresArray_1" #[l_highScoresArrayP])
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "setSize_1" #[(<- JR.alen (<- JR.getInherited this "HighScoresHelper2" "highScoresArrayP"))])
    let _ := (<- JR.call this "selectHighScores_0" #[])
    pure JV.null


def m_selectHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.alen (<- JR.getInherited this "HighScoresHelper2" "highScoresArrayP")) (JV.int 0)) then
        let _ := (<- JR.call this "setSelectedHighScores_1" #[(<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])])
        return JV.null
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    let mut l_highScores : JV := (<- JR.aget (<- JR.getInherited this "HighScoresHelper2" "highScoresArrayP") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    let mut l_index : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.cand (<- JR.lt (<- JR.call l_highScores "getTotal_0" #[]) (JV.int 1)) (do pure (<- JR.lt l_index (<- JR.alen (<- JR.getInherited this "HighScoresHelper2" "highScoresArrayP")))))) then break
        l_highScores := (<- JR.aget (<- JR.getInherited this "HighScoresHelper2" "highScoresArrayP") (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[]))
        l_index := (JR.inc l_index)
        pure ()
    let _ := (<- JR.call this "setSelectedHighScores_1" #[l_highScores])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "HighScoresHelperBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoresHelper2",
    javaName := "org.allbinary.game.score.HighScoresHelper2",
    super := "HighScoresHelperBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("circularIndexUtil", JV.null), ("selectedHighScores", JV.null)],
    statics := #[],
    methods := #[
        ("setSelectedHighScores_1", #["HighScores"], false, m_setSelectedHighScores_1), 
        ("getSelectedHighScores_0", #[], false, m_getSelectedHighScores_0), 
        ("setHighScoresArray_1", #["HighScoresArr"], false, m_setHighScoresArray_1), 
        ("selectHighScores_0", #[], false, m_selectHighScores_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresHelper2


