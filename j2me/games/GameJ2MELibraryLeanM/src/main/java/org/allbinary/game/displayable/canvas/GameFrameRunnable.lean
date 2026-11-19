-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFrameRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "gameTickDisplayInfoSingleton" (<- JR.callStatic "GameTickDisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_allBinaryGameCanvas : JV := (<- JR.getField this "allBinaryGameCanvas")
        let _ := (<- JR.call (<- JR.call l_allBinaryGameCanvas "getLoopTimeHelperP_0" #[]) "setStartTime_1" #[(<- JR.call (<- JR.getField this "gameTickTimeDelayHelper") "setStartTime_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "gameTickDisplayInfoSingleton") "update_0" #[])
        let _ := (<- JR.call l_allBinaryGameCanvas "processGame_0" #[])
        if JR.truth (<- JR.cor (JR.not (<- JR.call l_allBinaryGameCanvas "isRunning_0" #[])) (do pure (<- JR.call l_allBinaryGameCanvas "isPaused_0" #[]))) then
            let _ := (<- JR.call l_allBinaryGameCanvas "notifyDonePainting_0" #[])
            pure ()
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


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "GameRunnable" this #[]
    let _ <- jfields this
    JR.setField this "allBinaryGameCanvas" l_allBinaryGameCanvas
    pure this

initialize JR.registerClass {
    name := "GameFrameRunnable",
    javaName := "org.allbinary.game.displayable.canvas.GameFrameRunnable",
    super := "GameRunnable",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("gameTickDisplayInfoSingleton", JV.null), ("allBinaryGameCanvas", JV.null), ("gameTickTimeDelayHelper", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFrameRunnable


