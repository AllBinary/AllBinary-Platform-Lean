-- Generated Code Do Not Modify
-- package org.allbinary.game.input.analog
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnalogLocationInput

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AnalogLocationInput" "NULL_ANALOG_LOCATION_INPUT" (<- JR.new "AnalogLocationInput" #[(JV.int (-1))])
    pure JV.null


def m_getPlayerId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "playerId"))


def m_getCustomGPoint_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "customGPoint")


def m_getRz_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "rz"))


def m_setRz_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rz : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "rz" (JR.asI l_rz)
    pure JV.null


def m_getRightTrigger_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "rightTrigger"))


def m_setRightTrigger_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rightTrigger : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "rightTrigger" (JR.asI l_rightTrigger)
    pure JV.null


def m_getLeftTrigger_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "leftTrigger"))


def m_setLeftTrigger_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_leftTrigger : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "leftTrigger" (JR.asI l_leftTrigger)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerId : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "playerId" (JR.asI l_playerId)
    JR.setField this "customGPoint" (<- JR.new "CustomGPoint" #[(JV.int 0), (JV.int 0), (JV.int 0)])
    pure this

initialize JR.registerClass {
    name := "AnalogLocationInput",
    javaName := "org.allbinary.game.input.analog.AnalogLocationInput",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("playerId", (JV.int 0)), ("customGPoint", JV.null), ("rz", (JV.int 0)), ("rightTrigger", (JV.int 0)), ("leftTrigger", (JV.int 0))],
    statics := #[("NULL_ANALOG_LOCATION_INPUT", JV.null)],
    methods := #[
        ("getPlayerId_0", #[], false, m_getPlayerId_0), 
        ("getCustomGPoint_0", #[], false, m_getCustomGPoint_0), 
        ("getRz_0", #[], false, m_getRz_0), 
        ("setRz_1", #["int"], false, m_setRz_1), 
        ("getRightTrigger_0", #[], false, m_getRightTrigger_0), 
        ("setRightTrigger_1", #["int"], false, m_setRightTrigger_1), 
        ("getLeftTrigger_0", #[], false, m_getLeftTrigger_0), 
        ("setLeftTrigger_1", #["int"], false, m_setLeftTrigger_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnalogLocationInput


