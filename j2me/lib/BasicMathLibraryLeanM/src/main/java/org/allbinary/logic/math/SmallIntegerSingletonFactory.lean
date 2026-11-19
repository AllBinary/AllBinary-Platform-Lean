-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SmallIntegerSingletonFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NEGATIVE_MAX" (JR.asI (JV.int 500))
    JR.setField this "POSITIVE_MAX" (JR.asI (JV.int (JR.wrapI 0x2D1)))
    JR.setField this "INTEGER_ARRAY" (<- JR.newArray "L" 1 #[(<- JR.add (<- JR.getField this "NEGATIVE_MAX") (<- JR.getField this "POSITIVE_MAX"))])
    JR.setField this "STRING_ARRAY" (<- JR.newArray "L" 1 #[(<- JR.add (<- JR.getField this "NEGATIVE_MAX") (<- JR.getField this "POSITIVE_MAX"))])
    JR.setField this "MIN" (JR.asI (JV.int 0))
    JR.setField this "lastMin" (JR.asI (JV.int 0))
    JR.setField this "lastNegativeMin" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SmallIntegerSingletonFactory" "instance" (<- JR.new "SmallIntegerSingletonFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SmallIntegerSingletonFactory" "instance")


def m_getMin_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_minAllowed : JV := (JR.asI (<- JR.call this "getMinAllowed_0" #[]))
    if JR.truth (<- JR.le (<- JR.getField this "MIN") l_minAllowed) then
        if JR.truth (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) then
            pure ()
        else
            if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
                let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
                let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Android InputFactory was initialized before GameMidlet: ")]) "appendint_1" #[(<- JR.getField this "MIN")]) "toString_0" #[]), this, (JV.str "getMin")])
                let _ := (<- JR.call this "initWithRange_2" #[(JV.int (JR.wrapI 0x291)), (JV.int 6)])
                pure ()
            else
                let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
                let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ")]) "appendint_1" #[(<- JR.getField this "MIN")]) "toString_0" #[]), this, (JV.str "getMin")])
                let _ := (<- JR.call this "initWithRange_2" #[(JV.int (JR.wrapI 0x2D0)), (JV.int 6)])
                pure ()
        pure ()
    if JR.truth (<- JR.le (<- JR.getField this "MIN") l_minAllowed) then
        let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
        let _ := (<- JR.call l_logUtil "put_4" #[(JV.str "This means you loaded the InputFactory before determining the platform input size requirements."), this, (JV.str "getMin"), (<- JR.new "Exception" #[])])
        pure ()
    return (JR.asI (<- JR.getField this "MIN"))


def m_getMinAllowed_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) then
        return (JR.asI (JV.int 0))
    else
        if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
            return (JR.asI (JV.int (JR.wrapI 0x101)))
        else
            return (JR.asI (JV.int 23))
        pure ()
    pure JV.null


def m_initWithRange_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_negativeValue : JV := (JR.asI (JR.arg jargs 1))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_value (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastMin"))) then break
            JR.aset (<- JR.getField this "INTEGER_ARRAY") (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")) (<- JR.new "Integer" #[l_index])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_negativeValue (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastNegativeMin"))) then break
            JR.aset (<- JR.getField this "INTEGER_ARRAY") l_index (<- JR.new "Integer" #[(JR.neg l_index)])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    if JR.truth (<- JR.lt (<- JR.getField this "lastMin") l_value) then
        JR.setField this "lastMin" (JR.asI l_value)
        JR.setField this "MIN" (JR.asI l_value)
        pure ()
    if JR.truth (<- JR.lt (<- JR.getField this "lastNegativeMin") l_negativeValue) then
        JR.setField this "lastNegativeMin" (JR.asI l_negativeValue)
        pure ()
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.cor (<- JR.lt (<- JR.getField this "lastMin") (<- JR.getField this "POSITIVE_MAX")) (do pure (<- JR.lt (<- JR.getField this "lastNegativeMin") (<- JR.getField this "NEGATIVE_MAX")))) then
        if true then
            let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.getField this "POSITIVE_MAX") (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastMin"))) then break
                JR.aset (<- JR.getField this "INTEGER_ARRAY") (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")) (<- JR.new "Integer" #[l_index])
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        if true then
            let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.getField this "NEGATIVE_MAX") (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastNegativeMin"))) then break
                JR.aset (<- JR.getField this "INTEGER_ARRAY") l_index (<- JR.new "Integer" #[(JR.neg l_index)])
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        JR.setField this "lastMin" (JR.asI (<- JR.getField this "POSITIVE_MAX"))
        JR.setField this "MIN" (JR.asI (<- JR.getField this "lastMin"))
        JR.setField this "lastNegativeMin" (JR.asI (<- JR.getField this "NEGATIVE_MAX"))
        pure ()
    pure JV.null


def m_getAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField this "INTEGER_ARRAY") (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")))


def m_getAtNoThrow_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")) (<- JR.sub (<- JR.alen (<- JR.getField this "INTEGER_ARRAY")) (JV.int 1))) then
        return (<- JR.aget (<- JR.getField this "INTEGER_ARRAY") (<- JR.add (JV.int (-1)) (<- JR.getField this "NEGATIVE_MAX")))
    return (<- JR.aget (<- JR.getField this "INTEGER_ARRAY") (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")))


def m_createInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_integer : JV := (<- JR.call this "getAt_1" #[l_index])
    if JR.truth (<- JR.eq l_integer JV.null) then
        l_integer := (<- JR.new "Integer" #[l_index])
        pure ()
    return l_integer


def m_getString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_i : JV := (JR.asI (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")))
    if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "STRING_ARRAY") l_i) JV.null) then
        JR.aset (<- JR.getField this "STRING_ARRAY") l_i (<- JR.call (<- JR.aget (<- JR.getField this "INTEGER_ARRAY") l_i) "toString_0" #[])
        pure ()
    return (<- JR.aget (<- JR.getField this "STRING_ARRAY") l_i)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "initWithRange_2" #[(JV.int 23), (JV.int 0)])
    pure this

initialize JR.registerClass {
    name := "SmallIntegerSingletonFactory",
    javaName := "org.allbinary.logic.math.SmallIntegerSingletonFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NEGATIVE_MAX", (JV.int 0)), ("POSITIVE_MAX", (JV.int 0)), ("INTEGER_ARRAY", JV.null), ("STRING_ARRAY", JV.null), ("MIN", (JV.int 0)), ("lastMin", (JV.int 0)), ("lastNegativeMin", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getMin_0", #[], false, m_getMin_0), 
        ("getMinAllowed_0", #[], false, m_getMinAllowed_0), 
        ("initWithRange_2", #["int", "int"], false, m_initWithRange_2), 
        ("init_0", #[], false, m_init_0), 
        ("getAt_1", #["int"], false, m_getAt_1), 
        ("getAtNoThrow_1", #["int"], false, m_getAtNoThrow_1), 
        ("createInstance_1", #["int"], false, m_createInstance_1), 
        ("getString_1", #["int"], false, m_getString_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SmallIntegerSingletonFactory


