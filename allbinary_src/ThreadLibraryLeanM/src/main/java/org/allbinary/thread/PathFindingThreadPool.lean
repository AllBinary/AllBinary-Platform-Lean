-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PathFindingThreadPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PathFindingThreadPool" "instance" (<- JR.new "PathFindingThreadPool" #[(JV.str "PathFinding"), (JV.int 1), (JV.int 1)])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PathFindingThreadPool" "instance")


def m_runTaskWithPriority_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "ThreadPool" this "runTaskWithPriority_1" #[l_task])
    pure JV.null


def m_runTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "ThreadPool" this "runTask_1" #[l_task])
    pure JV.null


def m_startTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    pure JV.null


def m_completedTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_poolName : JV := (JR.arg jargs 0)
    let mut l_numThreads : JV := (JR.asI (JR.arg jargs 1))
    let mut l_priority : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "ThreadPool" this #[l_poolName, l_numThreads, (<- JR.getStatic "ThreadPool" "NORMAL_PRIORITY")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PathFindingThreadPool",
    javaName := "org.allbinary.thread.PathFindingThreadPool",
    super := "ThreadPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("runTaskWithPriority_1", #["PriorityRunnable"], false, m_runTaskWithPriority_1), 
        ("runTask_1", #["Runnable"], false, m_runTask_1), 
        ("startTask_1", #["Runnable"], false, m_startTask_1), 
        ("completedTask_1", #["Runnable"], false, m_completedTask_1), 
        ("jinit_3", #["String", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PathFindingThreadPool


