-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PrimitiveFloatUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getArrayInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.newArray "F" 1 #[(JV.int 0)])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PrimitiveFloatUtil",
    javaName := "org.allbinary.logic.math.PrimitiveFloatUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getArrayInstance_0", #[], true, m_getArrayInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PrimitiveFloatUtil


