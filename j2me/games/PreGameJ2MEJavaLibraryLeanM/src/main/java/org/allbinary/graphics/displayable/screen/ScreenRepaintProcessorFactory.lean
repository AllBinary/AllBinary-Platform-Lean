-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScreenRepaintProcessorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ScreenRepaintProcessorFactory" "instance" (<- JR.new "ScreenRepaintProcessorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ScreenRepaintProcessorFactory" "instance")


def m_create_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayable : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[])) then
        return (<- JR.new "ScreenRepaintProcessor" #[l_displayable])
    else
        return (<- JR.callStatic "Processor" "getInstance_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScreenRepaintProcessorFactory",
    javaName := "org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("create_1", #["Displayable"], false, m_create_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScreenRepaintProcessorFactory


