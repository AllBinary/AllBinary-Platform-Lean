-- Generated Code Do Not Modify
-- package org.eclipse.swt.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Resource

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_dispose_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isDisposed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Resource",
    javaName := "org.eclipse.swt.graphics.Resource",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("dispose_0", #[], false, m_dispose_0), 
        ("isDisposed_0", #[], false, m_isDisposed_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Resource


