-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TestInputExample

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_up_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_down_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_left_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "testValue" (JR.inc (<- JR.getField this "testValue"))
    pure JV.null


def m_right_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "testValue" (JR.dec (<- JR.getField this "testValue"))
    pure JV.null


def m_strafeLeft_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_strafeRight_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TestInputExample",
    javaName := "org.allbinary.game.input.TestInputExample",
    super := "Object",
    interfaces := #["TestInputInterface"],
    isInterface := false,
    fields := #[("testValue", (JV.int 0))],
    statics := #[],
    methods := #[
        ("up_0", #[], false, m_up_0), 
        ("down_0", #[], false, m_down_0), 
        ("left_0", #[], false, m_left_0), 
        ("right_0", #[], false, m_right_0), 
        ("strafeLeft_0", #[], false, m_strafeLeft_0), 
        ("strafeRight_0", #[], false, m_strafeRight_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestInputExample


