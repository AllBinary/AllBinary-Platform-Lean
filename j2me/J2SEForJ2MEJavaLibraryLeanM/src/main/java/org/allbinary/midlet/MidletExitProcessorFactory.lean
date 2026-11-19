-- Generated Code Do Not Modify
-- package org.allbinary.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MidletExitProcessorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MidletExitProcessorFactory" "instance" (<- JR.new "MidletExitProcessorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MidletExitProcessorFactory" "instance")


def m_getExitInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midlet : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.cor (<- JR.callStatic "AppletUtil" "isAppletLoader_1" #[l_midlet]) (do pure (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]))) then
        return (<- JR.callStatic "Processor" "getInstance_0" #[])
    else
        return (<- JR.new "MidletExitProcessor" #[l_midlet])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MidletExitProcessorFactory",
    javaName := "org.allbinary.midlet.MidletExitProcessorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getExitInstance_1", #["MIDlet"], false, m_getExitInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MidletExitProcessorFactory


