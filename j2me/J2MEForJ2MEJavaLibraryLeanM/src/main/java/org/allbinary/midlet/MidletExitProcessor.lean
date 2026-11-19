-- Generated Code Do Not Modify
-- package org.allbinary.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MidletExitProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midlet : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    JR.setField this "midlet" l_midlet
    pure this

initialize JR.registerClass {
    name := "MidletExitProcessor",
    javaName := "org.allbinary.midlet.MidletExitProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("midlet", JV.null)],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["MIDlet"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MidletExitProcessor


