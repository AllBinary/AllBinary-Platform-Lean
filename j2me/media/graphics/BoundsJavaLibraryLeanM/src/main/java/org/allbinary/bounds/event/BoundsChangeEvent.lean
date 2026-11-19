-- Generated Code Do Not Modify
-- package org.allbinary.bounds.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BoundsChangeEvent

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getRectangle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callInherited this "BoundsChangeEvent" "getSource_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_rectangle]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BoundsChangeEvent",
    javaName := "org.allbinary.bounds.event.BoundsChangeEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getRectangle_0", #[], false, m_getRectangle_0), 
        ("jinit_1", #["Rectangle"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BoundsChangeEvent


