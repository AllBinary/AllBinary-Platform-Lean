-- Generated Code Do Not Modify
-- package org.allbinary.time
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TimeDelayHelper

def jfields (this : JV) : JM JV := do
    JR.setField this "startTime" (JR.asJ (JR.toJ (JV.int (-1))))
    JR.setField this "elapsedTimeAtPause" (JR.asJ (<- JR.getStatic "Long" "MIN_VALUE"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isTimeTNT_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (<- JR.callStatic "System" "currentTimeMillis_0" #[]))
    if JR.truth (<- JR.gt (<- JR.sub l_currentTime (<- JR.getField this "startTime")) (JR.toJ (<- JR.getField this "delay"))) then
        JR.setField this "startTime" (JR.asJ l_currentTime)
        return (JV.bool true)
    return (JV.bool false)


def m_isTimeSinceTNT_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_delay : JV := (JR.asI (JR.arg jargs 0))
    let mut l_currentTime : JV := (JR.asJ (<- JR.callStatic "System" "currentTimeMillis_0" #[]))
    if JR.truth (<- JR.gt (<- JR.sub l_currentTime (<- JR.getField this "startTime")) (JR.toJ l_delay)) then
        JR.setField this "startTime" (JR.asJ l_currentTime)
        return (JV.bool true)
    return (JV.bool false)


def m_isTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.sub l_currentTime (<- JR.getField this "startTime")) (JR.toJ (<- JR.getField this "delay"))) then
        JR.setField this "startTime" (JR.asJ l_currentTime)
        return (JV.bool true)
    return (JV.bool false)


def m_isTimeWithoutReset_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.sub l_currentTime (<- JR.getField this "startTime")) (JR.toJ (<- JR.getField this "delay"))) then
        return (JV.bool true)
    return (JV.bool false)


def m_isTimeSince_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_delay : JV := (JR.asI (JR.arg jargs 0))
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 1))
    if JR.truth (<- JR.gt (<- JR.sub l_currentTime (<- JR.getField this "startTime")) (JR.toJ (<- JR.getField this "delay"))) then
        JR.setField this "startTime" (JR.asJ l_currentTime)
        return (JV.bool true)
    return (JV.bool false)


def m_getElapsedTNT_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.sub (<- JR.callStatic "System" "currentTimeMillis_0" #[]) (<- JR.getField this "startTime")))


def m_getElapsed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 0))
    return (JR.asJ (<- JR.sub l_currentTime (<- JR.getField this "startTime")))


def m_isElapsed_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_time : JV := (JR.asJ (JR.arg jargs 1))
    if JR.truth (<- JR.gt (<- JR.call this "getElapsed_1" #[l_currentTime]) l_time) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_isElapsedTNT_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_time : JV := (JR.asJ (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.call this "getElapsedTNT_0" #[]) l_time) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_setStartTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_startTime : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "startTime" (JR.asJ l_startTime)
    pure JV.null


def m_getStartTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "startTime"))


def m_setStartTimeTNT_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "startTime" (JR.asJ (<- JR.callStatic "System" "currentTimeMillis_0" #[]))
    pure JV.null


def m_pause_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "elapsedTimeAtPause" (JR.asJ (<- JR.call this "getElapsedTNT_0" #[]))
    JR.setField this "startTime" (JR.asJ (<- JR.getStatic "Long" "MAX_VALUE"))
    pure JV.null


def m_resume_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.ne (<- JR.getField this "elapsedTimeAtPause") (<- JR.getStatic "Long" "MIN_VALUE")) then
        JR.setField this "startTime" (JR.asJ (<- JR.add (<- JR.callStatic "System" "currentTimeMillis_0" #[]) (<- JR.getField this "elapsedTimeAtPause")))
        JR.setField this "elapsedTimeAtPause" (JR.asJ (<- JR.getStatic "Long" "MIN_VALUE"))
        let _ := (<- JR.call this "setStartTimeTNT_0" #[])
        return (JV.bool true)
    return (JV.bool false)


def m_toStringAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_elapsed : JV := (JR.asJ (<- JR.call this "getElapsed_1" #[l_currentTime]))
    if JR.truth (<- JR.gt l_elapsed (JV.long 0)) then
        let mut l_commonLabels : JV := (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
        let mut l_elapsedAsString : JV := (<- JR.callStatic "Long" "toString_1" #[l_elapsed])
        return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField l_commonLabels "START")]) "appendlong_1" #[(<- JR.getField this "startTime")]) "append_1" #[(<- JR.getField l_commonLabels "CURRENT")]) "appendlong_1" #[l_currentTime]) "append_1" #[(<- JR.getField l_commonLabels "ELAPSED")]) "append_1" #[l_elapsedAsString]) "toString_0" #[])
    else
        return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (<- JR.callStatic "System" "currentTimeMillis_0" #[]))
    let mut l_elapsed : JV := (JR.asJ (<- JR.call this "getElapsed_1" #[l_currentTime]))
    if JR.truth (<- JR.gt l_elapsed (JV.long 0)) then
        let mut l_commonLabels : JV := (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
        let mut l_elapsedAsString : JV := (<- JR.callStatic "Long" "toString_1" #[l_elapsed])
        return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField l_commonLabels "START")]) "appendlong_1" #[(<- JR.getField this "startTime")]) "append_1" #[(<- JR.getField l_commonLabels "CURRENT")]) "appendlong_1" #[l_currentTime]) "append_1" #[(<- JR.getField l_commonLabels "ELAPSED")]) "append_1" #[l_elapsedAsString]) "toString_0" #[])
    else
        return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_delay : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "delay" (JR.asI l_delay)
    let _ := (<- JR.call this "setStartTimeTNT_0" #[])
    pure this

initialize JR.registerClass {
    name := "TimeDelayHelper",
    javaName := "org.allbinary.time.TimeDelayHelper",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("startTime", (JV.long 0)), ("elapsedTimeAtPause", (JV.long 0)), ("delay", (JV.int 0))],
    statics := #[],
    methods := #[
        ("isTimeTNT_0", #[], false, m_isTimeTNT_0), 
        ("isTimeSinceTNT_1", #["int"], false, m_isTimeSinceTNT_1), 
        ("isTime_1", #["long"], false, m_isTime_1), 
        ("isTimeWithoutReset_1", #["long"], false, m_isTimeWithoutReset_1), 
        ("isTimeSince_2", #["int", "long"], false, m_isTimeSince_2), 
        ("getElapsedTNT_0", #[], false, m_getElapsedTNT_0), 
        ("getElapsed_1", #["long"], false, m_getElapsed_1), 
        ("isElapsed_2", #["long", "long"], false, m_isElapsed_2), 
        ("isElapsedTNT_1", #["long"], false, m_isElapsedTNT_1), 
        ("setStartTime_1", #["long"], false, m_setStartTime_1), 
        ("getStartTime_0", #[], false, m_getStartTime_0), 
        ("setStartTimeTNT_0", #[], false, m_setStartTimeTNT_0), 
        ("pause_0", #[], false, m_pause_0), 
        ("resume_0", #[], false, m_resume_0), 
        ("toStringAt_1", #["long"], false, m_toStringAt_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TimeDelayHelper


