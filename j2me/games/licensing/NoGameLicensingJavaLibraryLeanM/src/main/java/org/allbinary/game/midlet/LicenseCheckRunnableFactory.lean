-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseCheckRunnableFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_specialDemoGameMidlet : JV := (JR.arg jargs 0)
    return (<- JR.callStatic "NullABRunnable" "getInstance_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseCheckRunnableFactory",
    javaName := "org.allbinary.game.midlet.LicenseCheckRunnableFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["SpecialDemoGameMidlet"], false, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseCheckRunnableFactory


