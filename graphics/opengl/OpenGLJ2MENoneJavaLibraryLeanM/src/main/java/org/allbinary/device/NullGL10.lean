-- Generated Code Do Not Modify
-- package org.allbinary.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullGL10

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullGL10" "NULL_GL10" (<- JR.new "NullGL10" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullGL10",
    javaName := "org.allbinary.device.NullGL10",
    super := "Object",
    interfaces := #["GL10"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_GL10", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullGL10


