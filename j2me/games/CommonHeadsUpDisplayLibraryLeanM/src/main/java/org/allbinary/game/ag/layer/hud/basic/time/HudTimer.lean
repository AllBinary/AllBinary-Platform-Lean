-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.time
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HudTimer

def jfields (this : JV) : JM JV := do
    JR.setField this "startTime" (JR.asJ (JR.toJ (JV.int (-1))))
    JR.setField this "hundrethsString" (<- JR.getField (<- JR.callStatic "PrimitiveLongSingleton" "getInstance_0" #[]) "ZERO")
    JR.setField this "totalDigits" (JR.asI (JV.int 1))
    JR.setField this "MAX" (<- JR.arrayOf "C" #[(JV.char 76), (JV.char 79), (JV.char 76)])
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_start_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "hundredthTime" (JR.asJ (JV.long 0))
    JR.setField this "startTime" (JR.asJ (<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime"))
    pure JV.null


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "hundredthTime"))


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lastLowerTime : JV := (JR.asJ (<- JR.getField this "hundredthTime"))
    let mut l_currentTime : JV := (JR.asJ ((<- JR.sub ((<- JR.add (<- JR.getField this "modifier") (<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime"))) (<- JR.getField this "startTime"))))
    if JR.truth (<- JR.lt l_currentTime (JV.long 0)) then
        l_currentTime := (JR.asJ (JV.long 0))
        pure ()
    JR.setField this "hundredthTime" (JR.asJ (<- JR.div l_currentTime (JV.long 100)))
    if JR.truth (<- JR.ge (<- JR.getField this "hundredthTime") (<- JR.getField this "maxTime")) then
        if JR.truth (<- JR.gt (<- JR.getField this "startTime") (JV.long 0)) then
            JR.setField this "hundrethsString" (<- JR.getField this "MAX")
            pure ()
        pure ()
    else
        if JR.truth (<- JR.ne l_lastLowerTime (<- JR.getField this "hundredthTime")) then
            JR.setField this "hundrethsString" (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCharArray_1" #[(JR.toI (<- JR.getField this "hundredthTime"))])
            JR.setField this "totalDigits" (JR.asI (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCurrentTotalDigits_0" #[]))
            pure ()
    pure JV.null


def m_reduce_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "modifier" (JR.castLike (<- JR.getField this "modifier") (<- JR.sub (<- JR.getField this "modifier") (JR.toJ l_value)))
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "modifier" (JR.castLike (<- JR.getField this "modifier") (<- JR.add (<- JR.getField this "modifier") (JR.toJ l_value)))
    pure JV.null


def m_getTimeChars_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hundrethsString")


def m_getCurrentTotalDigits_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "totalDigits"))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxTime : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "primitiveLongUtil" (<- JR.callStatic "PrimitiveLongUtil" "createPowerOfTen_1" #[l_maxTime])
    JR.setField this "maxTime" (JR.asJ (JR.toJ l_maxTime))
    pure this

initialize JR.registerClass {
    name := "HudTimer",
    javaName := "org.allbinary.game.ag.layer.hud.basic.time.HudTimer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("startTime", (JV.long 0)), ("hundredthTime", (JV.long 0)), ("maxTime", (JV.long 0)), ("modifier", (JV.long 0)), ("hundrethsString", JV.null), ("totalDigits", (JV.int 0)), ("primitiveLongUtil", JV.null), ("MAX", JV.null), ("gameTickTimeDelayHelper", JV.null)],
    statics := #[],
    methods := #[
        ("start_0", #[], false, m_start_0), 
        ("get_0", #[], false, m_get_0), 
        ("update_0", #[], false, m_update_0), 
        ("reduce_1", #["int"], false, m_reduce_1), 
        ("add_1", #["int"], false, m_add_1), 
        ("getTimeChars_0", #[], false, m_getTimeChars_0), 
        ("getCurrentTotalDigits_0", #[], false, m_getCurrentTotalDigits_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HudTimer


