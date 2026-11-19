-- Generated Code Do Not Modify
-- package org.allbinary.time
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameTickTimeDelayHelper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setStartTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "startTime" (JR.asJ (<- JR.callStatic "System" "currentTimeMillis_0" #[]))
    return (JR.asJ (<- JR.getField this "startTime"))


def m_loop_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "lastStartTime") (<- JR.getStatic "Long" "MIN_VALUE")) then
        JR.setField this "timeDelta" (JR.asJ (JV.long 0))
        pure ()
    else
        JR.setField this "timeDelta" (JR.asJ (<- JR.sub (<- JR.callStatic "System" "currentTimeMillis_0" #[]) (<- JR.getField this "lastStartTime")))
        pure ()
    pure JV.null


def m_getTimeFromStart_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.sub (<- JR.getField this "startTime") (<- JR.getField this "lastStartTime")))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_startTime : JV := (JR.asJ (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "startTime" (JR.asJ l_startTime)
    JR.setField this "lastStartTime" (JR.asJ (JV.long 0))
    pure this

initialize JR.registerClass {
    name := "GameTickTimeDelayHelper",
    javaName := "org.allbinary.time.GameTickTimeDelayHelper",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("timeDelta", (JV.long 0)), ("startTime", (JV.long 0)), ("lastStartTime", (JV.long 0))],
    statics := #[],
    methods := #[
        ("setStartTime_0", #[], false, m_setStartTime_0), 
        ("loop_0", #[], false, m_loop_0), 
        ("getTimeFromStart_0", #[], false, m_getTimeFromStart_0), 
        ("jinit_1", #["long"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameTickTimeDelayHelper


