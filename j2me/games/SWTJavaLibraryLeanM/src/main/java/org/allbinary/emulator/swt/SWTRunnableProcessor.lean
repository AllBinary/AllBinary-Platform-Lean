-- Generated Code Do Not Modify
-- package org.allbinary.emulator.swt
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SWTRunnableProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SWTRunnableProcessor" "instanceR" (<- JR.new "SWTRunnableProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SWTRunnableProcessor" "instanceR")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_display : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "SWTRunnableProcessor" "runnable") "run_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "SWTProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SWTRunnableProcessor",
    javaName := "org.allbinary.emulator.swt.SWTRunnableProcessor",
    super := "SWTProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instanceR", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_1", #["EclipseDisplay"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SWTRunnableProcessor


