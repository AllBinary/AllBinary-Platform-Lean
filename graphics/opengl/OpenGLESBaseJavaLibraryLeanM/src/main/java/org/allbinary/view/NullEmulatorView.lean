-- Generated Code Do Not Modify
-- package org.allbinary.view
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullEmulatorView

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullEmulatorView" "NULL_EMULATOR_VIEW" (<- JR.new "NullEmulatorView" #[])
    pure JV.null


def m_setMidlet_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midlet : JV := (JR.arg jargs 0)
    pure JV.null


def m_onEmulatorInitComplete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midletActivity : JV := (JR.arg jargs 0)
    pure JV.null


def m_onSetDisplayable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayable : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullEmulatorView",
    javaName := "org.allbinary.view.NullEmulatorView",
    super := "Object",
    interfaces := #["EmulatorViewInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_EMULATOR_VIEW", JV.null)],
    methods := #[
        ("setMidlet_1", #["MIDlet"], false, m_setMidlet_1), 
        ("onEmulatorInitComplete_1", #["Any"], false, m_onEmulatorInitComplete_1), 
        ("onSetDisplayable_1", #["Displayable"], false, m_onSetDisplayable_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullEmulatorView


