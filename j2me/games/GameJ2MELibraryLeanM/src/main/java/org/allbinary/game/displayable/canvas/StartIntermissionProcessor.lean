-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StartIntermissionProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "WAIT" (JR.asJ (JV.long 5000))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "gameCanvas") "getStartIntermissionInterface_0" #[]) "getTimeDelayHelper_0" #[]) "isElapsedTNT_1" #[(<- JR.getField this "WAIT")]) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Intermission End"), this, (<- JR.getField (<- JR.getField this "commonStrings") "PROCESS")])
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "gameCanvas") "getStartIntermissionInterface_0" #[]) "setEnabled_1" #[(JV.bool false)])
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    JR.setField this "gameCanvas" l_gameCanvas
    pure this

initialize JR.registerClass {
    name := "StartIntermissionProcessor",
    javaName := "org.allbinary.game.displayable.canvas.StartIntermissionProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("gameCanvas", JV.null), ("WAIT", (JV.long 0))],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StartIntermissionProcessor


