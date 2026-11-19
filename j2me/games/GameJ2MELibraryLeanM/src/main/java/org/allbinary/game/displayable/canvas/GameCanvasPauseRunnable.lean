-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameCanvasPauseRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_processLoopSleep_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        let mut l_isOpenGL : JV := (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")])
        if JR.truth l_isOpenGL then
            let _ := (<- JR.call (<- JR.getField this "allBinaryGameCanvas") "processSleep_0" #[])
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
    name := "GameCanvasPauseRunnable",
    javaName := "org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable",
    super := "GameRunnable",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("allBinaryGameCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("processLoopSleep_0", #[], false, m_processLoopSleep_0), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameCanvasPauseRunnable


