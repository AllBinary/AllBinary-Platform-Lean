-- Generated Code Do Not Modify
-- package org.allbinary.debug
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoDebug

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoDebug" "SINGLETON" (<- JR.new "NoDebug" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoDebug" "SINGLETON")


def m_start_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_stop_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getMaxTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JV.long 10000))


def m_getStartTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JV.long 0))


def m_isRunning_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoDebug",
    javaName := "org.allbinary.debug.NoDebug",
    super := "Object",
    interfaces := #["DebugInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("start_0", #[], false, m_start_0), 
        ("stop_0", #[], false, m_stop_0), 
        ("getMaxTime_0", #[], false, m_getMaxTime_0), 
        ("getStartTime_0", #[], false, m_getStartTime_0), 
        ("isRunning_0", #[], false, m_isRunning_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoDebug


