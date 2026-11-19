-- Generated Code Do Not Modify
-- package org.allbinary.android.view
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryRenderer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryRenderer" "instance" (<- JR.new "AllBinaryRenderer" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AllBinaryRenderer" "instance")


def m_setRunnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_runnable : JV := (JR.arg jargs 0)
    pure JV.null


def m_clearRunnable_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryRenderer",
    javaName := "org.allbinary.android.view.AllBinaryRenderer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setRunnable_1", #["Runnable"], false, m_setRunnable_1), 
        ("clearRunnable_0", #[], false, m_clearRunnable_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryRenderer


