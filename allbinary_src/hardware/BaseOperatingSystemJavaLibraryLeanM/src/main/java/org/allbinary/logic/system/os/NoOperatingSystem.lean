-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoOperatingSystem

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoOperatingSystem" "NO_OPERATING_SYSTEM" (<- JR.new "GenericOperatingSystem" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GenericOperatingSystem" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoOperatingSystem",
    javaName := "org.allbinary.logic.system.os.NoOperatingSystem",
    super := "GenericOperatingSystem",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NO_OPERATING_SYSTEM", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoOperatingSystem


