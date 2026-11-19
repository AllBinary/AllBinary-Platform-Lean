-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MathUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "ACCURACY" (JR.asI (JV.int 100))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MathUtil" "instance" (<- JR.new "MathUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MathUtil" "instance")


def m_getTotalDigits_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_digits : JV := (JR.asI (JR.arg jargs 0))
    let mut l_total : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.gt l_digits (JV.int 0))) then break
        l_digits := (JR.asI (<- JR.div l_digits (JV.int 10)))
        l_total := (JR.inc l_total)
        pure ()
    return (JR.asI l_total)


def m_sqrt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.le l_value (JV.int 1)) then
        return (JR.asI l_value)
    let mut l_accumulated : JV := (JR.asI (<- JR.shr l_value (JV.int 1)))
    let mut l_result : JV := (JR.asI (<- JR.shr ((<- JR.add l_accumulated ((<- JR.div l_value l_accumulated)))) (JV.int 1)))
    let mut jdo0 := true
    repeat
        if !jdo0 then
            if !(JR.truth (<- JR.gt l_accumulated l_result)) then break
        jdo0 := false
        l_accumulated := (JR.asI l_result)
        l_result := (JR.asI (<- JR.shr ((<- JR.add l_accumulated ((<- JR.div l_value l_accumulated)))) (JV.int 1)))
        pure ()
    return (JR.asI l_accumulated)


def m_sqrtd_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.eq l_x (JV.int 0)) then
        return (JR.asD (JR.toD (JV.float 0.0)))
    if JR.truth (<- JR.lt l_x (JV.int 0)) then
        return (JR.asD (JR.toD (JR.neg (JV.float 1.0))))
    let mut l_result : JV := (JR.asD (JR.toD l_x))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "ACCURACY"))) then break
            l_result := (JR.asD (<- JR.div ((<- JR.add l_result ((<- JR.div (JR.toD l_x) l_result)))) (JV.double 2.0)))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JR.asD l_result)


def m_abs_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.cond ((<- JR.lt l_value (JV.int 0))) (do pure (JR.neg l_value)) (do pure l_value)))


def m_abslong_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asJ (JR.arg jargs 0))
    return (JR.asJ (<- JR.cond ((<- JR.lt l_value (JV.long 0))) (do pure (JR.neg l_value)) (do pure l_value)))


def m_min_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_value2 : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI (<- JR.cond ((<- JR.le l_value l_value2)) (do pure l_value) (do pure l_value2)))


def m_max_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_value2 : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI (<- JR.cond ((<- JR.ge l_value l_value2)) (do pure l_value) (do pure l_value2)))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MathUtil",
    javaName := "org.allbinary.logic.math.MathUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ACCURACY", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getTotalDigits_1", #["int"], false, m_getTotalDigits_1), 
        ("sqrt_1", #["int"], false, m_sqrt_1), 
        ("sqrtd_1", #["int"], false, m_sqrtd_1), 
        ("abs_1", #["int"], false, m_abs_1), 
        ("abslong_1", #["long"], false, m_abslong_1), 
        ("min_2", #["int", "int"], false, m_min_2), 
        ("max_2", #["int", "int"], false, m_max_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MathUtil


