-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(JV.str "GameCanvasRunnableInterface")]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "commandAction_2" #[(<- JR.getField (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[]) "SET_DISPLAYABLE"), (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "setGameCanvasRunnableInterface_1" #[(<- JR.call (<- JR.getField this "demoGameMidlet") "createDemoGameCanvasRunnableInterface_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "demoSetup_0" #[])
        let _ := (<- JR.call (<- JR.callStatic "DemoGameMidletEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "startDemoGameMidletEvent")])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "startGameCanvasRunnableInterface_0" #[])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "postDemoSetup_0" #[])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "END_RUNNABLE"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_demoGameMidlet : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "demoGameMidlet" l_demoGameMidlet
    JR.setField this "startDemoGameMidletEvent" (<- JR.new "DemoGameMidletEvent" #[(<- JR.getField this "demoGameMidlet"), (<- JR.getField (<- JR.callStatic "DemoGameMidletStateFactory" "getInstance_0" #[]) "START_DEMO")])
    pure this

initialize JR.registerClass {
    name := "DemoRunnable",
    javaName := "org.allbinary.game.midlet.DemoRunnable",
    super := "Object",
    interfaces := #["Runnable"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("demoGameMidlet", JV.null), ("startDemoGameMidletEvent", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_1", #["DemoGameMidlet"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoRunnable


