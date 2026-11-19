-- Generated Code Do Not Modify
-- package org.allbinary.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MidletStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "COMMAND_ACTION" (JV.str "commandAction")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MidletStrings" "instance" (<- JR.new "MidletStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MidletStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MidletStrings",
    javaName := "org.allbinary.midlet.MidletStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("COMMAND_ACTION", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MidletStrings


