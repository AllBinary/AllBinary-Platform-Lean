-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DisplayPointScalar

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DisplayPointScalar" "instance" (<- JR.new "DisplayPointScalar" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DisplayPointScalar" "instance")


def m_processX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI l_value)


def m_processY_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI l_value)


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    return l_point


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DisplayPointScalar",
    javaName := "org.allbinary.graphics.displayable.screen.DisplayPointScalar",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("processX_1", #["int"], false, m_processX_1), 
        ("processY_1", #["int"], false, m_processY_1), 
        ("process_1", #["GPoint"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DisplayPointScalar


