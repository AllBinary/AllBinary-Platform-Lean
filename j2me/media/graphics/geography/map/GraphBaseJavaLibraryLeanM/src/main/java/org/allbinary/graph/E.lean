-- Generated Code Do Not Modify
-- package org.allbinary.graph
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_E

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "E" "e" (<- JR.new "E" #[])
    pure JV.null


def m_newInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "E" "e")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "E",
    javaName := "org.allbinary.graph.E",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("e", JV.null)],
    methods := #[
        ("newInstance_0", #[], false, m_newInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_E


