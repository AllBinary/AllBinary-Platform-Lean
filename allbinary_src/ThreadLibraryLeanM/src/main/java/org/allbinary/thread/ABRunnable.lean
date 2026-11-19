-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "running" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setThread_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_thread : JV := (JR.arg jargs 0)
    pure JV.null


def m_isRunning_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "running")


def m_setRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_running : JV := (JR.arg jargs 0)
    JR.setField this "running" l_running
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABRunnable",
    javaName := "org.allbinary.thread.ABRunnable",
    super := "Object",
    interfaces := #["RunnableInterface"],
    isInterface := false,
    fields := #[("running", (JV.bool false))],
    statics := #[],
    methods := #[
        ("setThread_1", #["Thread"], false, m_setThread_1), 
        ("isRunning_0", #[], false, m_isRunning_0), 
        ("setRunning_1", #["boolean"], false, m_setRunning_1), 
        ("run_0", #[], false, m_run_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABRunnable


