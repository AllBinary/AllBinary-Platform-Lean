-- Generated Code Do Not Modify
-- package org.allbinary.logic.math.permutations
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IntPermutationVisitor

def jfields (this : JV) : JM JV := do
    JR.setField this "stringBuilder" (<- JR.new "StringMaker" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
    let _ := (<- JR.call this "print_2" #[(<- JR.getField this "data"), (<- JR.getField this "stringBuilder")])
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")


def m_print_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_data : JV := (JR.arg jargs 0)
    let mut l_stringBuilder : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call this "print_2" #[l_data, l_stringBuilder])
    pure JV.null


def m_print_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_data : JV := (JR.arg jargs 0)
    let mut l_stringBuilder : JV := (JR.arg jargs 1)
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_data))
    if true then
        let mut l_i : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_i l_size)) then break
            let _ := (<- JR.call l_stringBuilder "appendint_1" #[(<- JR.aget l_data l_i)])
            let _ := (<- JR.call l_stringBuilder "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
            l_i := (JR.inc l_i)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.call l_stringBuilder "toString_0" #[])])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_data : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Visitor" this #[]
    let _ <- jfields this
    JR.setField this "data" l_data
    pure this

initialize JR.registerClass {
    name := "IntPermutationVisitor",
    javaName := "org.allbinary.logic.math.permutations.IntPermutationVisitor",
    super := "Visitor",
    interfaces := #[],
    isInterface := false,
    fields := #[("data", JV.null), ("stringBuilder", JV.null)],
    statics := #[],
    methods := #[
        ("visit_1", #["Any"], false, m_visit_1), 
        ("print_1", #["intArr"], false, m_print_1), 
        ("print_2", #["intArr", "StringMaker"], false, m_print_2), 
        ("jinit_1", #["intArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IntPermutationVisitor


