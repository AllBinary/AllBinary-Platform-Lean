-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Processor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Processor" "SINGLETON" (<- JR.new "Processor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "Processor" "SINGLETON")


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_processt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_timeDelta : JV := (JR.asJ (JR.arg jargs 0))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Processor",
    javaName := "org.allbinary.canvas.Processor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_0", #[], false, m_process_0), 
        ("processt_1", #["long"], false, m_processt_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Processor


