-- Generated Code Do Not Modify
-- package org.allbinary.time
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoTimeDelayHelper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoTimeDelayHelper" "SINGLETON" (<- JR.new "NoTimeDelayHelper" #[])
    pure JV.null


def m_isTimeTNT_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_isTimeSinceTNT_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_delay : JV := (JR.asI (JR.arg jargs 0))
    return (JV.bool true)


def m_isTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 0))
    return (JV.bool true)


def m_isTimeSince_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_delay : JV := (JR.asI (JR.arg jargs 0))
    let mut l_currentTime : JV := (JR.asJ (JR.arg jargs 1))
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "TimeDelayHelper" this #[(JV.int 0)]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoTimeDelayHelper",
    javaName := "org.allbinary.time.NoTimeDelayHelper",
    super := "TimeDelayHelper",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("isTimeTNT_0", #[], false, m_isTimeTNT_0), 
        ("isTimeSinceTNT_1", #["int"], false, m_isTimeSinceTNT_1), 
        ("isTime_1", #["long"], false, m_isTime_1), 
        ("isTimeSince_2", #["int", "long"], false, m_isTimeSince_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoTimeDelayHelper


