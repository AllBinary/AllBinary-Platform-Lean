-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_J2MEUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isJ2ME_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_isJ2SE_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_isHTML_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "J2MEUtil",
    javaName := "org.allbinary.J2MEUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isJ2ME_0", #[], true, m_isJ2ME_0), 
        ("isJ2SE_0", #[], true, m_isJ2SE_0), 
        ("isHTML_0", #[], true, m_isHTML_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_J2MEUtil


