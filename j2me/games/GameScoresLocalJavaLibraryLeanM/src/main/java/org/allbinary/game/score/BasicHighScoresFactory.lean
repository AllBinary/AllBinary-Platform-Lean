-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicHighScoresFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "highScoresArray" (<- JR.newArray "L" 1 #[(JV.int 1)])
    JR.setField this "TOP" (JV.str "Top")
    JR.setField this "SCORES" (JV.str "Scores")
    JR.setField this "PERSONAL_HIGH_SCORES" (JV.str "Personal Top Scores")
    JR.setField this "FETCH" (JV.str "fetchHighScores")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_fetchHighScores_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    let mut l_highScoresResultsListener : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Getting Local HighScores"), this, (<- JR.getField this "FETCH")])
    let _ := (<- JR.call this "fetchHighScoresPreload_3" #[l_gameInfo, l_highScoresResultsListener, (JV.bool true)])
    pure JV.null


def m_fetchHighScoresPreload_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    let mut l_highScoresResultsListener : JV := (JR.arg jargs 1)
    let mut l_preload : JV := (JR.arg jargs 2)
    try
        JR.aset (<- JR.getField this "highScoresArray") (JV.int 0) (<- JR.callStatic "RecordStoreHighScores" "getInstance_6" #[(<- JR.getField this "abeClientInformation"), l_gameInfo, (<- JR.getField this "TOP"), (<- JR.getField this "PERSONAL_HIGH_SCORES"), (<- JR.getField this "SCORES"), (<- JR.new "ScoreComparator" #[(JV.bool true)])])
        let _ := (<- JR.call l_highScoresResultsListener "setHighScoresArray_1" #[(<- JR.getField this "highScoresArray")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "BasicHighScoresFactory" "commonStrings") "EXCEPTION"), this, (<- JR.getField this "FETCH"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_createHighScoresHelper_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "HighScoresHelper2" #[])


def m_loaded_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index2 : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.ge l_index2 (JV.int 0)) then
        return (JV.bool true)
    return (JV.bool false)


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_softwareInformation : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "HighScoresBase" this #[]
    let _ <- jfields this
    JR.setField this "abeClientInformation" l_abeClientInformation
    pure this

initialize JR.registerClass {
    name := "BasicHighScoresFactory",
    javaName := "org.allbinary.game.score.BasicHighScoresFactory",
    super := "HighScoresBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("abeClientInformation", JV.null), ("highScoresArray", JV.null), ("TOP", JV.null), ("SCORES", JV.null), ("PERSONAL_HIGH_SCORES", JV.null), ("FETCH", JV.null)],
    statics := #[],
    methods := #[
        ("fetchHighScores_2", #["GameInfo", "HighScoresResultsListener"], false, m_fetchHighScores_2), 
        ("fetchHighScoresPreload_3", #["GameInfo", "HighScoresResultsListener", "boolean"], false, m_fetchHighScoresPreload_3), 
        ("createHighScoresHelper_0", #[], false, m_createHighScoresHelper_0), 
        ("loaded_1", #["int"], true, m_loaded_1), 
        ("jinit_2", #["AbeClientInformationInterface", "SoftwareInformation"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicHighScoresFactory


