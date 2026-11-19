-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PrimitiveIntUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getArrayInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")


def m_getTwoDimensionalArrayInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PrimitiveIntUtil",
    javaName := "org.allbinary.logic.math.PrimitiveIntUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getArrayInstance_0", #[], true, m_getArrayInstance_0), 
        ("getTwoDimensionalArrayInstance_0", #[], true, m_getTwoDimensionalArrayInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PrimitiveIntUtil


