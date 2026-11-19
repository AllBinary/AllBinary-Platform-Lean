-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AndroidUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isMemoryRestrictive_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_isAndroid_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AndroidUtil",
    javaName := "org.allbinary.AndroidUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isMemoryRestrictive_0", #[], true, m_isMemoryRestrictive_0), 
        ("isAndroid_0", #[], true, m_isAndroid_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AndroidUtil


