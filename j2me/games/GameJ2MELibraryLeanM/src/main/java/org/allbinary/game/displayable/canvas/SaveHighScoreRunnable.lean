-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SaveHighScoreRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "progressCanvas" (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    try
        if JR.truth (<- JR.getField this "isLast") then
            let _ := (<- JR.call (<- JR.getField this "textBox") "submit_0" #[])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "textBox") "saveHighScore_0" #[])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "run"), l_e])
            let _ := (<- JR.call (<- JR.getField this "progressCanvas") "end_0" #[])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isLast : JV := (JR.arg jargs 0)
    let mut l_textBox : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "isLast" l_isLast
    JR.setField this "textBox" l_textBox
    pure this

initialize JR.registerClass {
    name := "SaveHighScoreRunnable",
    javaName := "org.allbinary.game.displayable.canvas.SaveHighScoreRunnable",
    super := "Object",
    interfaces := #["Runnable"],
    isInterface := false,
    fields := #[("progressCanvas", JV.null), ("isLast", (JV.bool false)), ("textBox", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_2", #["boolean", "HighScoreTextBox"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SaveHighScoreRunnable


