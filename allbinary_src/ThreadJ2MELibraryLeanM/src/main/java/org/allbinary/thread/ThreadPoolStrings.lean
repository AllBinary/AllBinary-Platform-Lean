-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThreadPoolStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "ADD_TASK" (JV.str "addTask")
    JR.setField this "START_TASK" (JV.str "Started Task: ")
    JR.setField this "COMPLETE_TASK" (JV.str "Completed Task: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ThreadPoolStrings" "instance" (<- JR.new "ThreadPoolStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ThreadPoolStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ThreadPoolStrings",
    javaName := "org.allbinary.thread.ThreadPoolStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ADD_TASK", JV.null), ("START_TASK", JV.null), ("COMPLETE_TASK", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThreadPoolStrings


