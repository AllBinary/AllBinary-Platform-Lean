-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CreateGameRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START_RUNNABLE"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
        let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "commandAction_2" #[(<- JR.getField (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[]) "SET_DISPLAYABLE"), l_progressCanvas])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "stopGameCanvasRunnableInterface_0" #[])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "setGameCanvasRunnableInterface_1" #[(<- JR.call (<- JR.getField this "demoGameMidlet") "createGameCanvasRunnableInterface_0" #[])])
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "demoGameMidlet") "getGameCanvasRunnableInterface_0" #[]) "setLoadStateHashtable_1" #[(<- JR.getField this "hashtable")])
        let _ := (<- JR.call (<- JR.getField this "demoGameMidlet") "startGameCanvasRunnableInterface_0" #[])
        let _ := (<- JR.call (<- JR.callStatic "DemoGameMidletEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "startGameMidletEvent")])
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


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_demoGameMidlet : JV := (JR.arg jargs 0)
    let mut l_hashtable : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "demoGameMidlet" l_demoGameMidlet
    JR.setField this "hashtable" l_hashtable
    JR.setField this "startGameMidletEvent" (<- JR.new "DemoGameMidletEvent" #[this, (<- JR.getField (<- JR.callStatic "DemoGameMidletStateFactory" "getInstance_0" #[]) "START_GAME")])
    pure this

initialize JR.registerClass {
    name := "CreateGameRunnable",
    javaName := "org.allbinary.game.midlet.CreateGameRunnable",
    super := "Object",
    interfaces := #["Runnable"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("demoGameMidlet", JV.null), ("hashtable", JV.null), ("startGameMidletEvent", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_2", #["DemoGameMidlet", "ABHashtable"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CreateGameRunnable


