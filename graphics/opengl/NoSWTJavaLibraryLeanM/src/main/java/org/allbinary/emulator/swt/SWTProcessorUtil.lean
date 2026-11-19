-- Generated Code Do Not Modify
-- package org.allbinary.emulator.swt
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SWTProcessorUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "swtProcessor" (<- JR.callStatic "SWTProcessor" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SWTProcessorUtil" "instance" (<- JR.new "SWTProcessorUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SWTProcessorUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SWTProcessorUtil",
    javaName := "org.allbinary.emulator.swt.SWTProcessorUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("swtProcessor", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SWTProcessorUtil


