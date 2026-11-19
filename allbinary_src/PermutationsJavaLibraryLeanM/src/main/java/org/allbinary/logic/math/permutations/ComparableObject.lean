-- Generated Code Do Not Modify
-- package org.allbinary.logic.math.permutations
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ComparableObject

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_compareTo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.lt (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this]) (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[l_anyType])) then
        return (JR.asI (JV.int (-1)))
    else
        if JR.truth (<- JR.gt (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this]) (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[l_anyType])) then
            return (JR.asI (JV.int 1))
    return (JR.asI (JV.int 0))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ComparableObject",
    javaName := "org.allbinary.logic.math.permutations.ComparableObject",
    super := "Object",
    interfaces := #["Comparable"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("compareTo_1", #["Any"], false, m_compareTo_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ComparableObject


