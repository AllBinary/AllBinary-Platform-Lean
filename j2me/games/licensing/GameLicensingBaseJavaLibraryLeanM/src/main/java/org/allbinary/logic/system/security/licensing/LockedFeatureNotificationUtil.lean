-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LockedFeatureNotificationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "gameNotificationEvent" (<- JR.new "GameNotificationEvent" #[this, (<- JR.getField (<- JR.callStatic "LicenseStrings" "getInstance_0" #[]) "LOCKED"), (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 3)]), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED"), (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LockedFeatureNotificationUtil" "instance" (<- JR.new "LockedFeatureNotificationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LockedFeatureNotificationUtil" "instance")


def m_fire_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "ErrorSound" "getInstance_0" #[])])
    let _ := (<- JR.call (<- JR.callStatic "GameNotificationEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "gameNotificationEvent")])
    pure JV.null


def m_fireWithColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "ErrorSound" "getInstance_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "gameNotificationEvent") "setBasicColorP_1" #[l_basicColor])
    let _ := (<- JR.call (<- JR.callStatic "GameNotificationEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "gameNotificationEvent")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LockedFeatureNotificationUtil",
    javaName := "org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameNotificationEvent", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("fire_0", #[], false, m_fire_0), 
        ("fireWithColor_1", #["BasicColor"], false, m_fireWithColor_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LockedFeatureNotificationUtil


