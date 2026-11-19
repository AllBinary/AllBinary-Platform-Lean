-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "WAIT" (JR.asI (JV.int 240))
    JR.setField this "FAST" (JR.asI (JV.int 60))
    JR.setField this "waitInMillis" (JR.asJ (JR.toJ (<- JR.getField this "WAIT")))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "process_0" #[])
    pure JV.null


def m_processLoopSleep_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "Thread" "sleep_1" #[(<- JR.getField this "waitInMillis")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameRunnable",
    javaName := "org.allbinary.game.displayable.canvas.GameRunnable",
    super := "Object",
    interfaces := #["Runnable"],
    isInterface := false,
    fields := #[("WAIT", (JV.int 0)), ("FAST", (JV.int 0)), ("waitInMillis", (JV.long 0))],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("processLoopSleep_0", #[], false, m_processLoopSleep_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameRunnable


