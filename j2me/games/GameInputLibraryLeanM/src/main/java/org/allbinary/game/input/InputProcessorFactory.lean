-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputProcessorFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "inputProcessor" (<- JR.new "InputProcessor" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InputProcessorFactory" "instance" (<- JR.new "InputProcessorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "InputProcessorFactory" "instance")


def m_getInputProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "inputProcessor")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InputProcessorFactory",
    javaName := "org.allbinary.game.input.InputProcessorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("inputProcessor", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInputProcessor_0", #[], false, m_getInputProcessor_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputProcessorFactory


