-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresHelper

def jfields (this : JV) : JM JV := do
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstanceAt_2" #[(JV.int 0), (JV.int 0)])
    JR.setField this "lastIndex" (JR.asI (JV.int (-1)))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setHighScoresArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresArrayP : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "HighScoresHelperBase" this "setHighScoresArray_1" #[l_highScoresArrayP])
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "setSize_1" #[(<- JR.alen (<- JR.getInherited this "HighScoresHelper" "highScoresArrayP"))])
    pure JV.null


def m_getNextHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScores : JV := (<- JR.aget (<- JR.getInherited this "HighScoresHelper" "highScoresArrayP") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    let mut l_index : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.cand ((<- JR.cor (<- JR.lt (<- JR.call l_highScores "getTotal_0" #[]) (JV.int 1)) (do pure (<- JR.eq (<- JR.getField this "lastIndex") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))))) (do pure (<- JR.lt l_index (<- JR.alen (<- JR.getInherited this "HighScoresHelper" "highScoresArrayP")))))) then break
        let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
        l_highScores := (<- JR.aget (<- JR.getInherited this "HighScoresHelper" "highScoresArrayP") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
        l_index := (JR.inc l_index)
        pure ()
    JR.setField this "lastIndex" (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    return l_highScores


def m_isAnyHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.lt (<- JR.alen (<- JR.getInherited this "HighScoresHelper" "highScoresArrayP")) (JV.int 1)) then
        return (JV.bool false)
    let mut l_anyScores : JV := (JV.bool false)
    let mut l_highScores : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getInherited this "HighScoresHelper" "highScoresArrayP")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_highScores := (<- JR.aget (<- JR.getInherited this "HighScoresHelper" "highScoresArrayP") l_index)
            if JR.truth (<- JR.gt (<- JR.call l_highScores "getTotal_0" #[]) (JV.int 0)) then
                l_anyScores := (JV.bool true)
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return l_anyScores


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "HighScoresHelperBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoresHelper",
    javaName := "org.allbinary.game.score.HighScoresHelper",
    super := "HighScoresHelperBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("circularIndexUtil", JV.null), ("lastIndex", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setHighScoresArray_1", #["HighScoresArr"], false, m_setHighScoresArray_1), 
        ("getNextHighScores_0", #[], false, m_getNextHighScores_0), 
        ("isAnyHighScores_0", #[], false, m_isAnyHighScores_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresHelper


