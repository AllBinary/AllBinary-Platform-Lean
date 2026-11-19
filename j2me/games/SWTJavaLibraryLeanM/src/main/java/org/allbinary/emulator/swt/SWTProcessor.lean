-- Generated Code Do Not Modify
-- package org.allbinary.emulator.swt
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SWTProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "runnable" (<- JR.callStatic "NullRunnable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SWTProcessor" "instance" (<- JR.new "SWTProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SWTProcessor" "instance")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_display : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_display "sleep_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SWTProcessor",
    javaName := "org.allbinary.emulator.swt.SWTProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("runnable", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_1", #["EclipseDisplay"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SWTProcessor


