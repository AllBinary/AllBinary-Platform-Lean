-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoGameStartupRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.callInherited this "DemoGameStartupRunnable" "setRunning_1" #[(JV.bool true)])
        let _ := (<- JR.call (<- JR.getField this "demoCanvas") "stopGameDemo_0" #[])
        let _ := (<- JR.call (<- JR.getField this "demoCanvas") "create_0" #[])
        let _ := (<- JR.call (<- JR.getField this "demoCanvas") "start_0" #[])
        let _ := (<- JR.callInherited this "DemoGameStartupRunnable" "setRunning_1" #[(JV.bool false)])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callInherited this "DemoGameStartupRunnable" "setRunning_1" #[(JV.bool false)])
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "RUN"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "DemoGameStartupRunnable" "TYPE"))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_demoCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ABRunnable" this #[]
    let _ <- jfields this
    JR.setField this "demoCanvas" l_demoCanvas
    pure this

initialize JR.registerClass {
    name := "DemoGameStartupRunnable",
    javaName := "org.allbinary.game.displayable.canvas.DemoGameStartupRunnable",
    super := "ABRunnable",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("demoCanvas", JV.null)],
    statics := #[("TYPE", (JR.asI (JV.int 4)))],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("jinit_1", #["DemoCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoGameStartupRunnable


