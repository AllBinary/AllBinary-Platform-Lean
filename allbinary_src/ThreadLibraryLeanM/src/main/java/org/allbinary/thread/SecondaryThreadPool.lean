-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SecondaryThreadPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SecondaryThreadPool" "instance" (<- JR.new "SecondaryThreadPool" #[(JV.str "Secondary"), (JV.int 1), (<- JR.getStatic "ThreadPool" "NORMAL_PRIORITY")])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SecondaryThreadPool" "instance")


def m_runTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "SecondaryThreadPool" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_task])]) "appendlong_1" #[(<- JR.callStatic "System" "currentTimeMillis_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "SecondaryThreadPool" "threadPoolStrings") "ADD_TASK")])
    let _ := (<- JR.callSuper "ThreadPool" this "runTask_1" #[l_task])
    pure JV.null


def m_startTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "SecondaryThreadPool" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "SecondaryThreadPool" "threadPoolStrings") "START_TASK")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_task])]) "appendlong_1" #[(<- JR.callStatic "System" "currentTimeMillis_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "SecondaryThreadPool" "commonStrings") "RUN")])
    pure JV.null


def m_completedTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "SecondaryThreadPool" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "SecondaryThreadPool" "threadPoolStrings") "COMPLETE_TASK")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_task])]) "appendlong_1" #[(<- JR.callStatic "System" "currentTimeMillis_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "SecondaryThreadPool" "commonStrings") "RUN")])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_poolName : JV := (JR.arg jargs 0)
    let mut l_numThreads : JV := (JR.asI (JR.arg jargs 1))
    let mut l_priority : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "ThreadPool" this #[l_poolName, l_numThreads, l_priority]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SecondaryThreadPool",
    javaName := "org.allbinary.thread.SecondaryThreadPool",
    super := "ThreadPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("runTask_1", #["Runnable"], false, m_runTask_1), 
        ("startTask_1", #["Runnable"], false, m_startTask_1), 
        ("completedTask_1", #["Runnable"], false, m_completedTask_1), 
        ("jinit_3", #["String", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SecondaryThreadPool


