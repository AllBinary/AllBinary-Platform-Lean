-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SmallLongFactory

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
    JR.setStatic "SmallLongFactory" "instance" (<- JR.new "SmallLongFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SmallLongFactory" "instance")


def m_initWithRange_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_negativeValue : JV := (JR.asI (JR.arg jargs 1))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_value (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastMin"))) then break
            JR.aset (<- JR.getField this "INTEGER_ARRAY") (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")) (<- JR.new "Long" #[l_index])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_negativeValue (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastNegativeMin"))) then break
            JR.aset (<- JR.getField this "INTEGER_ARRAY") l_index (<- JR.new "Long" #[(JR.neg l_index)])
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
    if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "INTEGER_ARRAY") (JV.int 0)) JV.null) then
        if JR.truth (<- JR.cor (<- JR.lt (<- JR.getField this "lastMin") (<- JR.getField this "POSITIVE_MAX")) (do pure (<- JR.lt (<- JR.getField this "lastNegativeMin") (<- JR.getField this "NEGATIVE_MAX")))) then
            if true then
                let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.getField this "POSITIVE_MAX") (JV.int 1)))
                repeat
                    if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastMin"))) then break
                    JR.aset (<- JR.getField this "INTEGER_ARRAY") (<- JR.add l_index (<- JR.getField this "NEGATIVE_MAX")) (<- JR.new "Long" #[l_index])
                    l_index := (JR.dec l_index)
                    pure ()
                pure ()
            if true then
                let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.getField this "NEGATIVE_MAX") (JV.int 1)))
                repeat
                    if !(JR.truth (<- JR.ge l_index (<- JR.getField this "lastNegativeMin"))) then break
                    JR.aset (<- JR.getField this "INTEGER_ARRAY") l_index (<- JR.new "Long" #[(JR.neg l_index)])
                    l_index := (JR.dec l_index)
                    pure ()
                pure ()
            JR.setField this "lastMin" (JR.asI (<- JR.getField this "POSITIVE_MAX"))
            JR.setField this "lastNegativeMin" (JR.asI (<- JR.getField this "NEGATIVE_MAX"))
            pure ()
        pure ()
    pure JV.null


def m_getInstanceNoThrow_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asJ (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.add l_index (JR.toJ (<- JR.getField this "NEGATIVE_MAX"))) (JR.toJ (<- JR.sub (<- JR.alen (<- JR.getField this "INTEGER_ARRAY")) (JV.int 1)))) then
        return (<- JR.aget (<- JR.getField this "INTEGER_ARRAY") (<- JR.add (JV.int (-1)) (<- JR.getField this "NEGATIVE_MAX")))
    return (<- JR.aget (<- JR.getField this "INTEGER_ARRAY") (<- JR.add ((JR.toI l_index)) (<- JR.getField this "NEGATIVE_MAX")))


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
    pure this

initialize JR.registerClass {
    name := "SmallLongFactory",
    javaName := "org.allbinary.logic.math.SmallLongFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NEGATIVE_MAX", (JV.int 0)), ("POSITIVE_MAX", (JV.int 0)), ("INTEGER_ARRAY", JV.null), ("STRING_ARRAY", JV.null), ("MIN", (JV.int 0)), ("lastMin", (JV.int 0)), ("lastNegativeMin", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("initWithRange_2", #["int", "int"], false, m_initWithRange_2), 
        ("init_0", #[], false, m_init_0), 
        ("getInstanceNoThrow_1", #["long"], false, m_getInstanceNoThrow_1), 
        ("getString_1", #["int"], false, m_getString_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SmallLongFactory


