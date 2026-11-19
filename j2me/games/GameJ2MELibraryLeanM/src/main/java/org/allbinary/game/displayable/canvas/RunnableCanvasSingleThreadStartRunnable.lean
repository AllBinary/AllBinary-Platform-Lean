-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RunnableCanvasSingleThreadStartRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "runnableCanvas") "run_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "RUN"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_processLoopSleep_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "runnableCanvas") "processLoopSleep_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_demoCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "GameRunnable" this #[]
    let _ <- jfields this
    JR.setField this "runnableCanvas" l_demoCanvas
    pure this

initialize JR.registerClass {
    name := "RunnableCanvasSingleThreadStartRunnable",
    javaName := "org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable",
    super := "GameRunnable",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("runnableCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("processLoopSleep_0", #[], false, m_processLoopSleep_0), 
        ("jinit_1", #["RunnableCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RunnableCanvasSingleThreadStartRunnable


