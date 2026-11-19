-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScreenRepaintProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "ScreenRepaintUtil" "repaint_1" #[(<- JR.getField this "displayable")])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayable : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    JR.setField this "displayable" l_displayable
    pure this

initialize JR.registerClass {
    name := "ScreenRepaintProcessor",
    javaName := "org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("displayable", JV.null)],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["Displayable"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScreenRepaintProcessor


