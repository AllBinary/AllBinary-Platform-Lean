-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScores

def jfields (this : JV) : JM JV := do
    JR.setField this "orderedHighScoresList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "columnOneHeading" (JV.str "Name")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_orderedHighScoresList : JV := (JR.arg jargs 0)
    JR.setField this "orderedHighScoresList" l_orderedHighScoresList
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "orderedHighScoresList")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_getTotal_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.call this "getList_0" #[]) "size_0" #[]))


def m_addHighScore_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newHighScore : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "orderedHighScoresList") "add_1" #[l_newHighScore])
    pure JV.null


def m_getHeading_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "heading")


def m_getColumnOneHeading_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "columnOneHeading")


def m_getColumnTwoHeading_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "columnTwoHeading")


def m_isBestScore_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newHighScore : JV := (JR.arg jargs 0)
    return (JV.bool false)


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "HighScores: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "heading")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "TOTAL_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.getField this "orderedHighScoresList") "size_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_heading : JV := (JR.arg jargs 1)
    let mut l_columnTwoHeading : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    JR.setField this "heading" l_heading
    JR.setField this "columnTwoHeading" l_columnTwoHeading
    pure this

initialize JR.registerClass {
    name := "HighScores",
    javaName := "org.allbinary.game.score.HighScores",
    super := "Object",
    interfaces := #["HighScoresInterface"],
    isInterface := false,
    fields := #[("orderedHighScoresList", JV.null), ("name", JV.null), ("heading", JV.null), ("columnOneHeading", JV.null), ("columnTwoHeading", JV.null)],
    statics := #[],
    methods := #[
        ("setList_1", #["BasicArrayList"], false, m_setList_1), 
        ("getList_0", #[], false, m_getList_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("getTotal_0", #[], false, m_getTotal_0), 
        ("addHighScore_1", #["HighScore"], false, m_addHighScore_1), 
        ("getHeading_0", #[], false, m_getHeading_0), 
        ("getColumnOneHeading_0", #[], false, m_getColumnOneHeading_0), 
        ("getColumnTwoHeading_0", #[], false, m_getColumnTwoHeading_0), 
        ("isBestScore_1", #["HighScore"], false, m_isBestScore_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_3", #["String", "String", "String"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScores


