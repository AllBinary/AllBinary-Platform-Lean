-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThreadUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "JOIN" (JV.str "join")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ThreadUtil" "instance" (<- JR.new "ThreadUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ThreadUtil" "instance")


def m_isRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_thread : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.cand (<- JR.ne l_thread JV.null) (do pure (<- JR.call l_thread "isAlive_0" #[]))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_join_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_thread : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.callStatic "ThreadUtil" "getInstance_0" #[]) "isRunning_1" #[l_thread]) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Waiting for Thread To Join/End"), this, (<- JR.getField this "JOIN")])
        let _ := (<- JR.call l_thread "join_0" #[])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ThreadUtil",
    javaName := "org.allbinary.thread.ThreadUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("JOIN", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isRunning_1", #["Thread"], false, m_isRunning_1), 
        ("join_1", #["Thread"], false, m_join_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThreadUtil


