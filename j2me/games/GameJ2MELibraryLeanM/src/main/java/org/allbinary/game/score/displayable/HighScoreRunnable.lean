-- Generated Code Do Not Modify
-- package org.allbinary.game.score.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoreRunnable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    let mut l_highScoresCanvas : JV := (<- JR.getField this "highScoresCanvas")
    try
        let mut l_isHTML : JV := (<- JR.callStatic "J2MEUtil" "isHTML_0" #[])
        if JR.truth (JR.not l_isHTML) then
            repeat
                if !(JR.truth (JR.not (<- JR.getField l_highScoresCanvas "hasPainted"))) then break
                pure ()
            JR.setField l_highScoresCanvas "hasPainted" (JV.bool false)
            pure ()
        let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
        let mut l_systemWrapper : JV := (<- JR.callStatic "ABSystemWrapper" "getInstance_0" #[])
        let mut l_currentTimeMillis : JV := (JR.asJ (<- JR.call l_systemWrapper "currentTimeMillis_0" #[]))
        let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(JV.str "HighScoresCanvas - Request repaint to be sure: ")]) "appendlong_1" #[l_currentTimeMillis]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "RUN")])
        let _ := (<- JR.call (<- JR.getField l_highScoresCanvas "repaintBehavior") "onChangeRepaint_1" #[l_highScoresCanvas])
        if JR.truth (JR.not l_isHTML) then
            repeat
                if !(JR.truth (JR.not (<- JR.getField l_highScoresCanvas "hasPainted"))) then break
                pure ()
            pure ()
        let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
        let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(JV.str "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ")]) "appendlong_1" #[l_currentTimeMillis]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "RUN")])
        let _ := (<- JR.call l_highScoresCanvas "executeUpdate_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "RUN"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ARunnable" this #[]
    let _ <- jfields this
    JR.setField this "highScoresCanvas" l_highScoresCanvas
    pure this

initialize JR.registerClass {
    name := "HighScoreRunnable",
    javaName := "org.allbinary.game.score.displayable.HighScoreRunnable",
    super := "ARunnable",
    interfaces := #[],
    isInterface := false,
    fields := #[("highScoresCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_1", #["HighScoresCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoreRunnable


