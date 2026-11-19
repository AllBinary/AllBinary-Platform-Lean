-- Generated Code Do Not Modify
-- package org.allbinary.emulator
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InitEmulatorFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "initEmulator" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InitEmulatorFactory" "instance" (<- JR.new "InitEmulatorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "InitEmulatorFactory" "instance")


def m_setInitEmulator_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initEmulator : JV := (JR.arg jargs 0)
    JR.setField this "initEmulator" l_initEmulator
    pure JV.null


def m_isInitEmulator_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initEmulator")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InitEmulatorFactory",
    javaName := "org.allbinary.emulator.InitEmulatorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("initEmulator", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setInitEmulator_1", #["boolean"], false, m_setInitEmulator_1), 
        ("isInitEmulator_0", #[], false, m_isInitEmulator_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InitEmulatorFactory


