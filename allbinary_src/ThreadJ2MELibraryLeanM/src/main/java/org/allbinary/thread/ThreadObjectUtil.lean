-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThreadObjectUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_PRIORITY_RUNNABLE" (<- JR.new "NullPriorityRunnable" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ThreadObjectUtil" "instance" (<- JR.new "ThreadObjectUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ThreadObjectUtil" "instance")


def m_notifyObject_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_anyType "notify_0" #[])
    pure JV.null


def m_waitObject_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_anyType "wait_0" #[])
    pure JV.null


def m_waitObjectFor_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_delay : JV := (JR.asJ (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "waitFor_2" #[l_anyType, l_delay])
    pure JV.null


def m_processThread_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_runnable : JV := (JR.arg jargs 0)
    let mut l_thread : JV := (<- JR.new "Thread" #[l_runnable])
    let _ := (<- JR.call l_thread "start_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ThreadObjectUtil",
    javaName := "org.allbinary.thread.ThreadObjectUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NULL_PRIORITY_RUNNABLE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("notifyObject_1", #["Any"], false, m_notifyObject_1), 
        ("waitObject_1", #["Any"], false, m_waitObject_1), 
        ("waitObjectFor_2", #["Any", "long"], false, m_waitObjectFor_2), 
        ("processThread_1", #["Runnable"], false, m_processThread_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThreadObjectUtil


