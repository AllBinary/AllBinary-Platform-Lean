-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Angle

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "value"))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asS (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "value" (JR.asS l_angle)
    pure this

initialize JR.registerClass {
    name := "Angle",
    javaName := "org.allbinary.math.Angle",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("value", (JV.short 0))],
    statics := #[],
    methods := #[
        ("getValue_0", #[], false, m_getValue_0), 
        ("jinit_1", #["short"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Angle


