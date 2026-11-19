-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Intermission

def jfields (this : JV) : JM JV := do
    JR.setField this "timeElapsedHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    JR.setField this "intermissionEnableListener" (<- JR.callStatic "NullIntermissionEnableListener" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_enableListener : JV := (JR.arg jargs 0)
    JR.setField this "intermissionEnableListener" l_enableListener
    pure JV.null


def m_getTimeDelayHelper_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "timeElapsedHelper")


def m_setEnabled_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_enabled : JV := (JR.arg jargs 0)
    JR.setField this "enabled" l_enabled
    if JR.truth (<- JR.call this "isEnabled_0" #[]) then
        let _ := (<- JR.call (<- JR.call this "getTimeDelayHelper_0" #[]) "setStartTimeTNT_0" #[])
        pure ()
    let _ := (<- JR.call (<- JR.getField this "intermissionEnableListener") "notifyIntermission_1" #[l_enabled])
    pure JV.null


def m_isEnabled_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "enabled")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Intermission",
    javaName := "org.allbinary.game.Intermission",
    super := "Object",
    interfaces := #["IntermissionInterface"],
    isInterface := false,
    fields := #[("enabled", (JV.bool false)), ("timeElapsedHelper", JV.null), ("intermissionEnableListener", JV.null)],
    statics := #[],
    methods := #[
        ("setListener_1", #["IntermissionEnableListenerInterface"], false, m_setListener_1), 
        ("getTimeDelayHelper_0", #[], false, m_getTimeDelayHelper_0), 
        ("setEnabled_1", #["boolean"], false, m_setEnabled_1), 
        ("isEnabled_0", #[], false, m_isEnabled_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Intermission


