-- Generated Code Do Not Modify
-- package org.allbinary.graphics.canvas.transition.progress
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ProgressEndListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ProgressEndListener" "instance" (<- JR.new "ProgressEndListener" #[])
    pure JV.null


def m_onEndEvent_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ProgressEndListener",
    javaName := "org.allbinary.graphics.canvas.transition.progress.ProgressEndListener",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("onEndEvent_0", #[], false, m_onEndEvent_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ProgressEndListener


