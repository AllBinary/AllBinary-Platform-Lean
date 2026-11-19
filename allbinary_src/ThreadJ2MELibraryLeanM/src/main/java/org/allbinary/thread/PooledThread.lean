-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PooledThread

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "threadObjectUtil" (<- JR.callStatic "ThreadObjectUtil" "getInstance_0" #[])
    JR.setField this "INTERRUPT_EXCEPTION" (JV.str "Exit InterruptedException")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "threadPool") "threadStarted_0" #[])
    repeat
        if !(JR.truth (JV.bool true)) then break
        let mut l_task2 : JV := (<- JR.getField (<- JR.getField this "threadObjectUtil") "NULL_PRIORITY_RUNNABLE")
        try
            l_task2 := (<- JR.call (<- JR.getField this "threadPool") "getTask_0" #[])
            JR.setField (<- JR.getField this "threadPool") "runningTask" (JV.bool true)
            let _ := (<- JR.call (<- JR.getField this "threadPool") "startTask_1" #[l_task2])
            pure ()
        catch jex0 =>
            if (<- JR.isInstanceOfAny jex0 #["InterruptedException"]) then
                let mut l_ex : JV := jex0
                let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
                let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.getField this "INTERRUPT_EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
                break
            else
                throw jex0
        if JR.truth (<- JR.eq l_task2 (<- JR.getField (<- JR.getField this "threadObjectUtil") "NULL_PRIORITY_RUNNABLE")) then
            break
        try
            let _ := (<- JR.call l_task2 "run_0" #[])
            let _ := (<- JR.call (<- JR.getField this "threadPool") "completedTask_1" #[l_task2])
            JR.setField (<- JR.getField this "threadPool") "runningTask" (JV.bool false)
            pure ()
        catch jex1 =>
            if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
                let mut l_e : JV := jex1
                let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
                let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_task2])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN"), l_e])
                pure ()
            else
                throw jex1
        pure ()
    let _ := (<- JR.call (<- JR.getField this "threadPool") "threadStopped_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_threadPool : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Thread" this #[(<- JR.call l_threadPool "createName_0" #[])]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR")])
    JR.setField this "threadPool" l_threadPool
    pure this

initialize JR.registerClass {
    name := "PooledThread",
    javaName := "org.allbinary.thread.PooledThread",
    super := "Thread",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("threadObjectUtil", JV.null), ("threadPool", JV.null), ("INTERRUPT_EXCEPTION", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_1", #["ThreadPool"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PooledThread


