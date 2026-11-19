-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullPriorityRunnable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getPriority_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_isDone_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_reset_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullPriorityRunnable",
    javaName := "org.allbinary.thread.NullPriorityRunnable",
    super := "Object",
    interfaces := #["PriorityRunnable"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getPriority_0", #[], false, m_getPriority_0), 
        ("isDone_0", #[], false, m_isDone_0), 
        ("reset_0", #[], false, m_reset_0), 
        ("run_0", #[], false, m_run_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullPriorityRunnable


