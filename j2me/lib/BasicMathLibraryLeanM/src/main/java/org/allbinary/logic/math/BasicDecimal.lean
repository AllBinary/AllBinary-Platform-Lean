-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicDecimal

def jfields (this : JV) : JM JV := do
    JR.setField this "factor" (JR.asI (<- JR.getField (<- JR.callStatic "ScaleFactorFactory" "getInstance_0" #[]) "DEFAULT_SCALE_FACTOR"))
    JR.setField this "factorValue" (JR.asI (<- JR.getField (<- JR.callStatic "ScaleFactorFactory" "getInstance_0" #[]) "DEFAULT_SCALE_VALUE"))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicDecimal" "ZERO_BIGDECIMAL" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    pure JV.null


def m_createBigDecimal_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bigDecimal : JV := (JR.arg jargs 0)
    return (<- JR.new "BasicDecimal" #[(<- JR.call l_bigDecimal "getUnscaled_0" #[])])


def m_setint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (JR.toJ l_value))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_setlong_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ l_value)
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bigDecimal : JV := (JR.arg jargs 0)
    JR.setField this "units" (JR.asJ (<- JR.call l_bigDecimal "getUnscaled_0" #[]))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_addint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.add (<- JR.getField this "units") (JR.toJ l_value)))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_addlong_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.add (<- JR.getField this "units") l_value))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bigDecimal : JV := (JR.arg jargs 0)
    JR.setField this "units" (JR.asJ (<- JR.add (<- JR.getField this "units") (<- JR.call l_bigDecimal "getUnscaled_0" #[])))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_subtractint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.sub (<- JR.getField this "units") (JR.toJ l_value)))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_subtractlong_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.sub (<- JR.getField this "units") l_value))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_subtract_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bigDecimal : JV := (JR.arg jargs 0)
    JR.setField this "units" (JR.asJ (<- JR.sub (<- JR.getField this "units") (<- JR.call l_bigDecimal "getUnscaled_0" #[])))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_multiplyint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.mul (<- JR.getField this "units") (JR.toJ l_value)))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_multiplylong_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.mul (<- JR.getField this "units") l_value))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_multiply_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bigDecimal : JV := (JR.arg jargs 0)
    JR.setField this "units" (JR.asJ (<- JR.mul (<- JR.getField this "units") (<- JR.call l_bigDecimal "getUnscaled_0" #[])))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_divideint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.div (<- JR.getField this "units") (JR.toJ l_value)))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_dividelong_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "units" (JR.asJ (<- JR.div (<- JR.getField this "units") l_value))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_divide_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bigDecimal : JV := (JR.arg jargs 0)
    JR.setField this "units" (JR.asJ (<- JR.div (<- JR.getField this "units") (<- JR.call l_bigDecimal "getUnscaled_0" #[])))
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure JV.null


def m_getUnscaled_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "units"))


def m_updateScaled_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "scaled" (JR.asI (JR.toI ((<- JR.div (<- JR.getField this "units") (JR.toJ (<- JR.getField this "factorValue"))))))
    pure JV.null


def m_getScaled_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "scaled"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "Long" "toString_1" #[(<- JR.getField this "units")])


def m_getScaledFactor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "factor"))


def m_getScaledFactorValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "factorValue"))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_units : JV := (JR.asJ (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "units" (JR.asJ l_units)
    let _ := (<- JR.call this "updateScaled_0" #[])
    pure this

initialize JR.registerClass {
    name := "BasicDecimal",
    javaName := "org.allbinary.logic.math.BasicDecimal",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("units", (JV.long 0)), ("scaled", (JV.int 0)), ("factor", (JV.int 0)), ("factorValue", (JV.int 0))],
    statics := #[("ZERO_BIGDECIMAL", JV.null)],
    methods := #[
        ("createBigDecimal_1", #["BasicDecimal"], true, m_createBigDecimal_1), 
        ("setint_1", #["int"], false, m_setint_1), 
        ("setlong_1", #["long"], false, m_setlong_1), 
        ("set_1", #["BasicDecimal"], false, m_set_1), 
        ("addint_1", #["int"], false, m_addint_1), 
        ("addlong_1", #["long"], false, m_addlong_1), 
        ("add_1", #["BasicDecimal"], false, m_add_1), 
        ("subtractint_1", #["int"], false, m_subtractint_1), 
        ("subtractlong_1", #["long"], false, m_subtractlong_1), 
        ("subtract_1", #["BasicDecimal"], false, m_subtract_1), 
        ("multiplyint_1", #["int"], false, m_multiplyint_1), 
        ("multiplylong_1", #["long"], false, m_multiplylong_1), 
        ("multiply_1", #["BasicDecimal"], false, m_multiply_1), 
        ("divideint_1", #["int"], false, m_divideint_1), 
        ("dividelong_1", #["long"], false, m_dividelong_1), 
        ("divide_1", #["BasicDecimal"], false, m_divide_1), 
        ("getUnscaled_0", #[], false, m_getUnscaled_0), 
        ("updateScaled_0", #[], false, m_updateScaled_0), 
        ("getScaled_0", #[], false, m_getScaled_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("getScaledFactor_0", #[], false, m_getScaledFactor_0), 
        ("getScaledFactorValue_0", #[], false, m_getScaledFactorValue_0), 
        ("jinit_1", #["long"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicDecimal


