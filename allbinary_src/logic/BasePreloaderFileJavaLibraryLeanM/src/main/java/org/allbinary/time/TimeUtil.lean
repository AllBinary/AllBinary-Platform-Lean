-- Generated Code Do Not Modify
-- package org.allbinary.time
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TimeUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TimeUtil" "instance" (<- JR.new "TimeUtil" #[])
    JR.setStatic "TimeUtil" "calendar" (<- JR.callStatic "Calendar" "getInstance_0" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TimeUtil" "instance")


def m_setCalendar_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_calendar : JV := (JR.arg jargs 0)
    let mut l_yearString : JV := (JR.arg jargs 1)
    let mut l_monthString : JV := (JR.arg jargs 2)
    let mut l_dayString : JV := (JR.arg jargs 3)
    let mut l_hourString : JV := (JR.arg jargs 4)
    let mut l_year : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_yearString]) "intValue_0" #[]))
    let mut l_month : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_monthString]) "intValue_0" #[]))
    let mut l_day : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_dayString]) "intValue_0" #[]))
    let mut l_hour : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_hourString]) "intValue_0" #[]))
    let _ := (<- JR.call l_calendar "set_5" #[l_year, l_month, l_day, l_hour, (JV.int 0)])
    pure JV.null


def m_setCalendarWithTime_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_calendar : JV := (JR.arg jargs 0)
    let mut l_yearString : JV := (JR.arg jargs 1)
    let mut l_monthString : JV := (JR.arg jargs 2)
    let mut l_dayString : JV := (JR.arg jargs 3)
    let mut l_hourString : JV := (JR.arg jargs 4)
    let mut l_minuteString : JV := (JR.arg jargs 5)
    let mut l_secondString : JV := (JR.arg jargs 6)
    let mut l_year : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_yearString]) "intValue_0" #[]))
    let mut l_month : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_monthString]) "intValue_0" #[]))
    let mut l_day : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_dayString]) "intValue_0" #[]))
    let mut l_hour : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_hourString]) "intValue_0" #[]))
    let mut l_minute : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_minuteString]) "intValue_0" #[]))
    let mut l_second : JV := (JR.asI (<- JR.call (<- JR.new "Integer" #[l_secondString]) "intValue_0" #[]))
    let _ := (<- JR.call l_calendar "set_6" #[l_year, l_month, l_day, l_hour, l_minute, l_second])
    pure JV.null


def m_setExpirationCalendar_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_calendar : JV := (JR.arg jargs 0)
    let mut l_yearsString : JV := (JR.arg jargs 1)
    let mut l_monthsString : JV := (JR.arg jargs 2)
    let mut l_daysString : JV := (JR.arg jargs 3)
    let mut l_hoursString : JV := (JR.arg jargs 4)
    let mut l_minutesString : JV := (JR.arg jargs 5)
    let mut l_secondsString : JV := (JR.arg jargs 6)
    let mut l_year : JV := (JR.asI (<- JR.add (<- JR.call l_calendar "get_1" #[(<- JR.getStatic "Calendar" "YEAR")]) (<- JR.call (<- JR.new "Integer" #[l_yearsString]) "intValue_0" #[])))
    let mut l_month : JV := (JR.asI (<- JR.add (<- JR.call l_calendar "get_1" #[(<- JR.getStatic "Calendar" "MONTH")]) (<- JR.call (<- JR.new "Integer" #[l_monthsString]) "intValue_0" #[])))
    let mut l_day : JV := (JR.asI (<- JR.add (<- JR.call l_calendar "get_1" #[(<- JR.getStatic "Calendar" "DAY_OF_MONTH")]) (<- JR.call (<- JR.new "Integer" #[l_daysString]) "intValue_0" #[])))
    let mut l_hour : JV := (JR.asI (<- JR.add (<- JR.call l_calendar "get_1" #[(<- JR.getStatic "Calendar" "HOUR")]) (<- JR.call (<- JR.new "Integer" #[l_hoursString]) "intValue_0" #[])))
    let mut l_minute : JV := (JR.asI (<- JR.add (<- JR.call l_calendar "get_1" #[(<- JR.getStatic "Calendar" "MINUTE")]) (<- JR.call (<- JR.new "Integer" #[l_minutesString]) "intValue_0" #[])))
    let mut l_second : JV := (JR.asI (<- JR.add (<- JR.call l_calendar "get_1" #[(<- JR.getStatic "Calendar" "SECOND")]) (<- JR.call (<- JR.new "Integer" #[l_secondsString]) "intValue_0" #[])))
    let _ := (<- JR.call l_calendar "set_6" #[l_year, l_month, l_day, l_hour, l_minute, l_second])
    pure JV.null


def m_getTotalTime_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_yearString : JV := (JR.arg jargs 0)
    let mut l_monthString : JV := (JR.arg jargs 1)
    let mut l_dayString : JV := (JR.arg jargs 2)
    let mut l_hourString : JV := (JR.arg jargs 3)
    let mut l_minuteString : JV := (JR.arg jargs 4)
    let mut l_secondString : JV := (JR.arg jargs 5)
    let mut l_time : JV := (JR.asJ (<- JR.call (<- JR.getStatic "TimeUtil" "calendar") "getTimeInMillis_0" #[]))
    let _ := (<- JR.call this "setExpirationCalendar_7" #[(<- JR.getStatic "TimeUtil" "calendar"), l_yearString, l_monthString, l_dayString, l_hourString, l_minuteString, l_secondString])
    let mut l_timeDelta : JV := (JR.asJ (<- JR.call (<- JR.getStatic "TimeUtil" "calendar") "getTimeInMillis_0" #[]))
    return (JR.asJ (<- JR.sub l_timeDelta l_time))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TimeUtil",
    javaName := "org.allbinary.time.TimeUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null), ("calendar", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setCalendar_5", #["Calendar", "String", "String", "String", "String"], false, m_setCalendar_5), 
        ("setCalendarWithTime_7", #["Calendar", "String", "String", "String", "String", "String", "String"], false, m_setCalendarWithTime_7), 
        ("setExpirationCalendar_7", #["Calendar", "String", "String", "String", "String", "String", "String"], false, m_setExpirationCalendar_7), 
        ("getTotalTime_6", #["String", "String", "String", "String", "String", "String"], false, m_getTotalTime_6), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TimeUtil


