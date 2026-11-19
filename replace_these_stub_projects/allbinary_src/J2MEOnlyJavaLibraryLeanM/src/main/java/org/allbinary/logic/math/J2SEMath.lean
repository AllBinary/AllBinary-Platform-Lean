-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_J2SEMath

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "J2SEMath" "instance" (<- JR.new "J2SEMath" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "J2SEMath" "instance")


def m_round_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asF (JR.arg jargs 0))
    return (JR.asI (JR.toI l_value))


def m_abs_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asF (JR.arg jargs 0))
    return (JR.asF (<- JR.cond ((<- JR.lt l_value (JV.float 0.0))) (do pure (JR.neg l_value)) (do pure l_value)))


def m_absdouble_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asD (JR.arg jargs 0))
    return (JR.asD (<- JR.cond ((<- JR.lt l_value (JV.double 0.0))) (do pure (JR.neg l_value)) (do pure l_value)))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "J2SEMath",
    javaName := "org.allbinary.logic.math.J2SEMath",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("round_1", #["float"], false, m_round_1), 
        ("abs_1", #["float"], false, m_abs_1), 
        ("absdouble_1", #["double"], false, m_absdouble_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_J2SEMath


