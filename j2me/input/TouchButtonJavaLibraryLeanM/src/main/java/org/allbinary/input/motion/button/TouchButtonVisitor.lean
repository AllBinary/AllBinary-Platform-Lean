-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonVisitor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonVisitor",
    javaName := "org.allbinary.input.motion.button.TouchButtonVisitor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process_2", #["TouchButtonInput", "String"], false, m_process_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonVisitor


