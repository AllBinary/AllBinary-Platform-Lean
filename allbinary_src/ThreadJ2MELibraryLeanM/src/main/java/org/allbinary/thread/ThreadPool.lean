-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThreadPool

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "NULL_RUNNABLE" (<- JR.callStatic "NullRunnable" "getInstance_0" #[])
    JR.setField this "threadPoolStrings" (<- JR.callStatic "ThreadPoolStrings" "getInstance_0" #[])
    JR.setField this "threadObjectUtil" (<- JR.callStatic "ThreadObjectUtil" "getInstance_0" #[])
    JR.setField this "isAlive" (JV.bool false)
    JR.setField this "taskQueue" (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ThreadPool" "NORMAL_PRIORITY" (JR.asI (<- JR.getStatic "Thread" "NORM_PRIORITY"))
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (JR.not (<- JR.getField this "isAlive")) then
        JR.setField this "isAlive" (JV.bool true)
        JR.setField this "taskQueue" (<- JR.new "BasicArrayListD" #[])
        let mut l_pooledThread : JV := JV.null
        if true then
            let mut l_i : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_i (<- JR.getField this "numThreads"))) then break
                l_pooledThread := (<- JR.new "PooledThread" #[this])
                let _ := (<- JR.call l_pooledThread "setPriority_1" #[(<- JR.getField this "priority")])
                let _ := (<- JR.call l_pooledThread "start_0" #[])
                l_i := (JR.inc l_i)
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_runAPriorityTask_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_runTaskWithPriority_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    if true then
        if JR.truth (JR.not (<- JR.getField this "isAlive")) then
            let _ := (<- JR.call this "init_0" #[])
            pure ()
        if JR.truth (<- JR.ne l_task JV.null) then
            let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "taskQueue") "size_0" #[]))
            let mut l_runnable : JV := JV.null
            let mut l_lowerPriorityRunnable : JV := (<- JR.getField (<- JR.getField this "threadObjectUtil") "NULL_PRIORITY_RUNNABLE")
            if true then
                let mut l_index : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index l_size)) then break
                    l_runnable := (<- JR.call (<- JR.getField this "taskQueue") "get_1" #[l_index])
                    if JR.truth (<- JR.gt (<- JR.call l_runnable "getPriority_0" #[]) (<- JR.call l_task "getPriority_0" #[])) then
                        l_lowerPriorityRunnable := l_runnable
                        break
                    l_index := (JR.inc l_index)
                    pure ()
                pure ()
            if JR.truth (<- JR.eq l_lowerPriorityRunnable (<- JR.getField (<- JR.getField this "threadObjectUtil") "NULL_PRIORITY_RUNNABLE")) then
                let _ := (<- JR.call (<- JR.getField this "taskQueue") "add_1" #[l_task])
                pure ()
            else
                let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "taskQueue") "indexOf_1" #[l_lowerPriorityRunnable]))
                let _ := (<- JR.call (<- JR.getField this "taskQueue") "addAt_2" #[l_index, l_task])
                pure ()
            let _ := (<- JR.callInherited this "ThreadPool" "notify_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_runTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    if true then
        if JR.truth (JR.not (<- JR.getField this "isAlive")) then
            let _ := (<- JR.call this "init_0" #[])
            pure ()
        if JR.truth (<- JR.ne l_task JV.null) then
            let _ := (<- JR.call (<- JR.getField this "taskQueue") "add_1" #[l_task])
            let _ := (<- JR.callInherited this "ThreadPool" "notify_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_getTask_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        repeat
            if !(JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "taskQueue") "size_0" #[]) (JV.int 0))) then break
            if JR.truth (JR.not (<- JR.getField this "isAlive")) then
                return (<- JR.getField this "NULL_RUNNABLE")
            let _ := (<- JR.callInherited this "ThreadPool" "wait_0" #[])
            pure ()
        let mut l_runnable : JV := (<- JR.call (<- JR.getField this "taskQueue") "removeAt_1" #[(JV.int 0)])
        return l_runnable
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        if JR.truth (<- JR.getField this "isAlive") then
            let _ := (<- JR.call (<- JR.getField this "taskQueue") "clear_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        if JR.truth (<- JR.getField this "isAlive") then
            JR.setField this "isAlive" (JV.bool false)
            let _ := (<- JR.call (<- JR.getField this "taskQueue") "clear_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_join_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        JR.setField this "isAlive" (JV.bool false)
        let _ := (<- JR.call (<- JR.getField this "taskQueue") "clear_0" #[])
        let _ := (<- JR.callInherited this "ThreadPool" "notifyAll_0" #[])
        pure ()
    pure JV.null


def m_isBusy_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (JR.not (<- JR.getField this "isAlive")) then
        return (JV.bool false)
    if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "taskQueue") "size_0" #[]) (JV.int 0)) then
        return (JV.bool true)
    if JR.truth (<- JR.getField this "runningTask") then
        return (JV.bool true)
    return (JV.bool false)


def m_threadStarted_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_threadStopped_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "numThreads") (JV.int 1)) then
        JR.setField this "isAlive" (JV.bool false)
        let _ := (<- JR.call (<- JR.getField this "taskQueue") "clear_0" #[])
        pure ()
    pure JV.null


def m_startTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    pure JV.null


def m_completedTask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_task : JV := (JR.arg jargs 0)
    pure JV.null


def m_createName_0 (this : JV) (jargs : Array JV) : JM JV := do
    let jtemp6 : JV := (<- JR.getField this "threadID")
    JR.setField this "threadID" (JR.inc jtemp6)
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "poolName")]) "append_1" #[(<- JR.getStatic "ThreadPool" "ROOT_NAME")]) "appendint_1" #[jtemp6]) "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_poolName : JV := (JR.arg jargs 0)
    let mut l_numThreads : JV := (JR.asI (JR.arg jargs 1))
    let mut l_priority : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "poolName" l_poolName
    JR.setField this "priority" (JR.asI l_priority)
    JR.setField this "numThreads" (JR.asI l_numThreads)
    pure this

initialize JR.registerClass {
    name := "ThreadPool",
    javaName := "org.allbinary.thread.ThreadPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("NULL_RUNNABLE", JV.null), ("threadPoolStrings", JV.null), ("threadObjectUtil", JV.null), ("poolName", JV.null), ("priority", (JV.int 0)), ("isAlive", (JV.bool false)), ("taskQueue", JV.null), ("threadID", (JV.int 0)), ("numThreads", (JV.int 0)), ("runningTask", (JV.bool false))],
    statics := #[("ROOT_NAME", (JV.str "-PooledThread-")), ("NORMAL_PRIORITY", (JV.int 0))],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("runAPriorityTask_0", #[], false, m_runAPriorityTask_0), 
        ("runTaskWithPriority_1", #["PriorityRunnable"], false, m_runTaskWithPriority_1), 
        ("runTask_1", #["Runnable"], false, m_runTask_1), 
        ("getTask_0", #[], false, m_getTask_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("close_0", #[], false, m_close_0), 
        ("join_0", #[], false, m_join_0), 
        ("isBusy_0", #[], false, m_isBusy_0), 
        ("threadStarted_0", #[], false, m_threadStarted_0), 
        ("threadStopped_0", #[], false, m_threadStopped_0), 
        ("startTask_1", #["Runnable"], false, m_startTask_1), 
        ("completedTask_1", #["Runnable"], false, m_completedTask_1), 
        ("createName_0", #[], false, m_createName_0), 
        ("jinit_3", #["String", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThreadPool


