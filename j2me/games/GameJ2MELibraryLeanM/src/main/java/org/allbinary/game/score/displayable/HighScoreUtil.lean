-- Generated Code Do Not Modify
-- package org.allbinary.game.score.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoreUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "firstTime" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HighScoreUtil" "SUBMIT_TEXTBOX_COMMAND" (<- JR.new "Command" #[(JV.str "Submit"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    pure JV.null


def m_setHighScoresArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresArray : JV := (JR.arg jargs 0)
    JR.setField this "highScoresArray" l_highScoresArray
    JR.setField this "firstTime" (JV.bool false)
    let _ := (<- JR.call this "saveHighScore_0" #[])
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "HighScoreNamePersistanceSingleton" "getInstance_0" #[]) "save_3" #[(<- JR.getField this "abeClientInformation"), (<- JR.getField this "gameInfo"), l_name])
    let _ := (<- JR.call (<- JR.getField this "highScore") "setName_1" #[l_name])
    pure JV.null


def m_saveHighScore_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "START")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.getField this "highScore")])]) "toString_0" #[]), this, (JV.str "saveHighScore")])
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "highScoresArray")))
    if JR.truth (<- JR.cand (<- JR.getField this "firstTime") (do pure (<- JR.eq l_size (JV.int 0)))) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Games canvas did not give us any HighScores"), this, (JV.str "saveHighScore")])
        let _ := (<- JR.call (<- JR.getField this "highScoresFactoryInterface") "fetchHighScores_2" #[(<- JR.getField this "gameInfo"), this])
        return JV.null
    let mut l_highScores : JV := JV.null
    let mut l_highScoresAsString : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_highScores := (<- JR.aget (<- JR.getField this "highScoresArray") l_index)
            let _ := (<- JR.call l_highScores "addHighScore_1" #[(<- JR.getField this "highScore")])
            l_highScoresAsString := (<- JR.call l_highScores "toString_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Added/Adding Score: ")]) "append_1" #[l_highScoresAsString]) "toString_0" #[]), this, (JV.str "saveHighScore")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "highScoresHelper") "setHighScoresArray_1" #[(<- JR.getField this "highScoresArray")])
    pure JV.null


def m_submit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_myCanvas : JV := (JR.arg jargs 0)
    let mut l_commandListener : JV := (<- JR.call l_myCanvas "getCustomCommandListener_0" #[])
    let _ := (<- JR.call l_commandListener "commandAction_2" #[(<- JR.getStatic "HighScoreUtil" "SUBMIT_TEXTBOX_COMMAND"), l_myCanvas])
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_highScoresHelper : JV := (JR.arg jargs 1)
    let mut l_abeClientInformation : JV := (JR.arg jargs 2)
    let mut l_gameInfo : JV := (JR.arg jargs 3)
    let mut l_cmdListener : JV := (JR.arg jargs 4)
    let mut l_name : JV := (JR.arg jargs 5)
    let mut l_highScore : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "highScoresFactoryInterface" l_highScoresFactoryInterface
    JR.setField this "highScoresHelper" l_highScoresHelper
    JR.setField this "highScoresArray" (<- JR.call (<- JR.getField this "highScoresHelper") "getHighScoresArray_0" #[])
    JR.setField this "highScore" l_highScore
    JR.setField this "abeClientInformation" l_abeClientInformation
    JR.setField this "gameInfo" l_gameInfo
    pure this

initialize JR.registerClass {
    name := "HighScoreUtil",
    javaName := "org.allbinary.game.score.displayable.HighScoreUtil",
    super := "Object",
    interfaces := #["HighScoresResultsListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("highScoresFactoryInterface", JV.null), ("highScoresArray", JV.null), ("highScore", JV.null), ("abeClientInformation", JV.null), ("gameInfo", JV.null), ("highScoresHelper", JV.null), ("firstTime", (JV.bool false))],
    statics := #[("SUBMIT_TEXTBOX_COMMAND", JV.null)],
    methods := #[
        ("setHighScoresArray_1", #["HighScoresArr"], false, m_setHighScoresArray_1), 
        ("update_1", #["String"], false, m_update_1), 
        ("saveHighScore_0", #[], false, m_saveHighScore_0), 
        ("submit_1", #["MyCanvas"], false, m_submit_1), 
        ("jinit_7", #["HighScoresFactoryInterface", "HighScoresHelperBaseInterface", "AbeClientInformationInterface", "GameInfo", "CommandListener", "String", "HighScore"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoreUtil


