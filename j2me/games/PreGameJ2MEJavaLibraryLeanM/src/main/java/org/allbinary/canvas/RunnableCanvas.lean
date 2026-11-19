-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RunnableCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "nullUtil" (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    JR.setField this "stdUtil" (<- JR.callStatic "StdUtil" "getInstance_0" #[])
    JR.setField this "systemWrapper" (<- JR.callStatic "ABSystemWrapper" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "thread" (<- JR.getStatic "NullThread" "NULL_THREAD")
    JR.setField this "currentThread" (<- JR.getStatic "NullThread" "NULL_THREAD")
    JR.setField this "loopTimeHelper" (<- JR.new "TimeDelayHelper" #[(<- JR.getField (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[]) "WAIT")])
    JR.setField this "runnableCanvasRefreshHelper" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "commonLabels" (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    JR.setField this "threadObjectUtil" (<- JR.callStatic "ThreadObjectUtil" "getInstance_0" #[])
    JR.setField this "SET_RUNNING" (JV.str "setRunning")
    JR.setField this "IS_RUNNING" (JV.str "isRunning")
    JR.setField this "THREAD" (JV.str "Thread: ")
    JR.setField this "NOT_EQUAL" (JV.str " != ")
    JR.setField this "PAUSE_SLEEP" (JV.str "pause sleep")
    JR.setField this "START_PAUSE" (JV.str "start pause - game thread sleep at: ")
    JR.setField this "END_PAUSE" (JV.str "end pause - game thread sleep at: ")
    JR.setField this "PROCESS_LOOP_SLEEP" (JV.str "processLoopSleep")
    JR.setField this "pauseWait" (JR.asJ (JV.long 0))
    JR.setField this "notified" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "RunnableCanvas" "commonStrings") "NOT_IMPLEMENTED"), this, (JV.str "initCommands")])
    pure JV.null


def m_isMainCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.ne (<- JR.callInherited this "RunnableCanvas" "getCustomCommandListener_0" #[]) JV.null) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_setThread_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_thread : JV := (JR.arg jargs 0)
    JR.setField this "thread" l_thread
    pure JV.null


def m_setRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_running : JV := (JR.arg jargs 0)
    JR.setField this "running" l_running
    if JR.truth (JR.not (<- JR.getField this "running")) then
        JR.setField this "thread" (<- JR.getStatic "NullThread" "NULL_THREAD")
        if true then
            let _ := (<- JR.call (<- JR.getField this "threadObjectUtil") "notifyObject_1" #[this])
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "IS_RUNNING")]) "appendboolean_1" #[(<- JR.getField this "running")]) "toString_0" #[]), this, (<- JR.getField this "SET_RUNNING")])
    pure JV.null


def m_isRunning_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "thread") (<- JR.getField this "currentThread")) then
        return (<- JR.getField this "running")
    else
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "THREAD")])
        if JR.truth (<- JR.ne (<- JR.getField this "thread") JV.null) then
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "thread") "toString_0" #[])])
            pure ()
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "NOT_EQUAL")])
        if JR.truth (<- JR.ne (<- JR.getField this "currentThread") JV.null) then
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.getField this "currentThread")])])
            pure ()
        let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField this "IS_RUNNING")])
        return (JV.bool false)
    pure JV.null


def m_getLoopTimeHelperP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "loopTimeHelper")


def m_setWait_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_wait : JV := (JR.asI (JR.arg jargs 0))
    JR.setField (<- JR.getField this "loopTimeHelper") "delay" (JR.asI l_wait)
    JR.setField this "pauseWait" (JR.asJ (<- JR.mul (JR.toJ l_wait) (JV.long 3)))
    let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "setWait - delay: ")]) "appendint_1" #[(<- JR.getField (<- JR.getField this "loopTimeHelper") "delay")]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "RunnableCanvas" "commonStrings") "CONSTRUCTOR")])
    pure JV.null


def m_getWait_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField (<- JR.getField this "loopTimeHelper") "delay"))


def m_setCurrentThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "currentThread" (<- JR.callStatic "Thread" "currentThread_0" #[])
    pure JV.null


def m_setCurrentThreadFake_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "currentThread" (<- JR.getField this "thread")
    pure JV.null


def m_showNotify_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call this "stopWaiting_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "RunnableCanvas" "commonStrings") "EXCEPTION"), this, (JV.str "showNotify"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_stopWaiting_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "notified" (JV.bool true)
    if true then
        let _ := (<- JR.call (<- JR.getField this "threadObjectUtil") "notifyObject_1" #[this])
        pure ()
    let _ := (<- JR.callInherited this "RunnableCanvas" "repaint_0" #[])
    pure JV.null


def m_waitOnNotify_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_wait : JV := (JR.asJ (JR.arg jargs 0))
    if JR.truth (JR.not (<- JR.getField this "notified")) then
        if JR.truth (<- JR.gt l_wait (JV.long 0)) then
            let _ := (<- JR.call (<- JR.getField this "threadObjectUtil") "waitObjectFor_2" #[this, l_wait])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "threadObjectUtil") "waitObject_1" #[this])
            pure ()
        pure ()
    pure JV.null


def m_processSleep_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "Thread" "sleep_1" #[(<- JR.getField this "pauseWait")])
    pure JV.null


def m_isPausable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_processGameSleep_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sleep : JV := (JR.asJ (JR.arg jargs 0))
    let _ := (<- JR.callStatic "Thread" "sleep_1" #[l_sleep])
    pure JV.null


def m_processLoopSleep_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "runnableCanvasRefreshHelper") "process_0" #[])
    if JR.truth (<- JR.callInherited this "RunnableCanvas" "isPaused_0" #[]) then
        let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
        if JR.truth (<- JR.cand (<- JR.call this "isRunning_0" #[]) (do pure (JR.not (<- JR.call this "isSingleThread_0" #[])))) then
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            let mut l_currentTimeMillis : JV := (JR.asJ (<- JR.call (<- JR.getField this "systemWrapper") "currentTimeMillis_0" #[]))
            let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "START_PAUSE")]) "appendlong_1" #[l_currentTimeMillis]) "append_1" #[(<- JR.getField this "PAUSE_SLEEP")]) "appendlong_1" #[(<- JR.getField this "pauseWait")]) "toString_0" #[]), this, (<- JR.getField this "PROCESS_LOOP_SLEEP")])
            repeat
                if !(JR.truth (<- JR.cand (<- JR.cand (<- JR.callInherited this "RunnableCanvas" "isPaused_0" #[]) (do pure (<- JR.call this "isRunning_0" #[]))) (do pure (JR.not (<- JR.call this "isSingleThread_0" #[]))))) then break
                let _ := (<- JR.call this "processSleep_0" #[])
                if JR.truth (JR.not (<- JR.call this "isPausable_0" #[])) then
                    let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                    let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "END_PAUSE")]) "appendlong_1" #[l_currentTimeMillis]) "toString_0" #[]), this, (<- JR.getField this "PROCESS_LOOP_SLEEP")])
                    return JV.null
                pure ()
            pure ()
        pure ()
    let mut l_elapsedTime : JV := (JR.asJ (<- JR.call (<- JR.getField this "loopTimeHelper") "getElapsedTNT_0" #[]))
    let mut l_wait : JV := (JR.asJ (JR.toJ (<- JR.getField (<- JR.getField this "loopTimeHelper") "delay")))
    if JR.truth (<- JR.gt l_elapsedTime l_wait) then
        l_elapsedTime := (JR.asJ l_wait)
        pure ()
    else
        let _ := (<- JR.call this "processGameSleep_1" #[(<- JR.sub l_wait l_elapsedTime)])
        pure ()
    pure JV.null


def m_isSingleThread_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setCurrentThread_0" #[])
    pure JV.null


def m_end2_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_childNameList : JV := (JR.arg jargs 1)
    let mut l_hasParam : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "MyCanvas" this #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "UNKNOWN"), l_childNameList]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "RunnableCanvas delay: ")]) "appendint_1" #[(<- JR.getField (<- JR.getField this "loopTimeHelper") "delay")]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "RunnableCanvas" "commonStrings") "CONSTRUCTOR")])
    JR.setField this "runnableCanvasRefreshHelper" (<- JR.new "RunnableCanvasRefreshHelper" #[this])
    if JR.truth (<- JR.ne l_commandListener JV.null) then
        let _ := (<- JR.call this "initCommands_1" #[l_commandListener])
        pure ()
    else
        if JR.truth l_hasParam then
            let _ := (<- JR.call (<- JR.getInherited this "RunnableCanvas" "logUtil") "putF_3" #[(JV.str "commandListener was null"), this, (JV.str "initCommands")])
            pure ()
    pure this

initialize JR.registerClass {
    name := "RunnableCanvas",
    javaName := "org.allbinary.canvas.RunnableCanvas",
    super := "MyCanvas",
    interfaces := #["RunnableInterface"],
    isInterface := false,
    fields := #[("nullUtil", JV.null), ("stdUtil", JV.null), ("systemWrapper", JV.null), ("tsUtil", JV.null), ("thread", JV.null), ("currentThread", JV.null), ("running", (JV.bool false)), ("loopTimeHelper", JV.null), ("runnableCanvasRefreshHelper", JV.null), ("commonLabels", JV.null), ("threadObjectUtil", JV.null), ("SET_RUNNING", JV.null), ("IS_RUNNING", JV.null), ("THREAD", JV.null), ("NOT_EQUAL", JV.null), ("PAUSE_SLEEP", JV.null), ("START_PAUSE", JV.null), ("END_PAUSE", JV.null), ("PROCESS_LOOP_SLEEP", JV.null), ("pauseWait", (JV.long 0)), ("notified", (JV.bool false))],
    statics := #[],
    methods := #[
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("isMainCanvas_0", #[], false, m_isMainCanvas_0), 
        ("setThread_1", #["Thread"], false, m_setThread_1), 
        ("setRunning_1", #["boolean"], false, m_setRunning_1), 
        ("isRunning_0", #[], false, m_isRunning_0), 
        ("getLoopTimeHelperP_0", #[], false, m_getLoopTimeHelperP_0), 
        ("setWait_1", #["int"], false, m_setWait_1), 
        ("getWait_0", #[], false, m_getWait_0), 
        ("setCurrentThread_0", #[], false, m_setCurrentThread_0), 
        ("setCurrentThreadFake_0", #[], false, m_setCurrentThreadFake_0), 
        ("showNotify_0", #[], false, m_showNotify_0), 
        ("stopWaiting_0", #[], false, m_stopWaiting_0), 
        ("waitOnNotify_1", #["long"], false, m_waitOnNotify_1), 
        ("processSleep_0", #[], false, m_processSleep_0), 
        ("isPausable_0", #[], false, m_isPausable_0), 
        ("processGameSleep_1", #["long"], false, m_processGameSleep_1), 
        ("processLoopSleep_0", #[], false, m_processLoopSleep_0), 
        ("isSingleThread_0", #[], false, m_isSingleThread_0), 
        ("run_0", #[], false, m_run_0), 
        ("end2_0", #[], false, m_end2_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("jinit_3", #["CommandListener", "BasicArrayList", "boolean"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RunnableCanvas


