-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "LOCKED" (JV.str "Demo Locked Feature")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LicenseStrings" "instance" (<- JR.new "LicenseStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LicenseStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseStrings",
    javaName := "org.allbinary.logic.system.security.licensing.LicenseStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LOCKED", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseStrings


