-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "gameInputStrings" (<- JR.callStatic "GameInputStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_keyPressedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_keyReleasedByDevice_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InputProcessor",
    javaName := "org.allbinary.game.input.InputProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameInputStrings", JV.null)],
    statics := #[],
    methods := #[
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyReleasedByDevice_3", #["Canvas", "int", "int"], false, m_keyReleasedByDevice_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputProcessor


