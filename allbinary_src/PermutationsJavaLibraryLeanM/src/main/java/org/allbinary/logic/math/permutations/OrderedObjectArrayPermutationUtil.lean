-- Generated Code Do Not Modify
-- package org.allbinary.logic.math.permutations
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OrderedObjectArrayPermutationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "TOTAL_ITERATIONS_TABLE" (JV.str "Total Iterations: ")
    JR.setField this "FINISHED" (JV.str "\nFINISHED")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OrderedObjectArrayPermutationUtil" "instance" (<- JR.new "OrderedObjectArrayPermutationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OrderedObjectArrayPermutationUtil" "instance")


def m_getNext_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_data : JV := (JR.arg jargs 0)
    let mut l_length : JV := (JR.asI (<- JR.alen l_data))
    let mut l_i : JV := (JR.asI (<- JR.sub l_length (JV.int 1)))
    let mut l_tsUtil : JV := (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    repeat
        if !(JR.truth (<- JR.ge (<- JR.call l_tsUtil "hashCode_1" #[(<- JR.aget l_data (<- JR.sub l_i (JV.int 1)))]) (<- JR.call l_tsUtil "hashCode_1" #[(<- JR.aget l_data l_i)]))) then break
        l_i := (JR.asI (<- JR.sub l_i (JV.int 1)))
        pure ()
    let mut l_j : JV := (JR.asI l_length)
    repeat
        if !(JR.truth (<- JR.le (<- JR.call l_tsUtil "hashCode_1" #[(<- JR.aget l_data (<- JR.sub l_j (JV.int 1)))]) (<- JR.call l_tsUtil "hashCode_1" #[(<- JR.aget l_data (<- JR.sub l_i (JV.int 1)))]))) then break
        l_j := (JR.asI (<- JR.sub l_j (JV.int 1)))
        pure ()
    let _ := (<- JR.call this "swap_3" #[l_data, (<- JR.sub l_i (JV.int 1)), (<- JR.sub l_j (JV.int 1))])
    l_i := (JR.inc l_i)
    l_j := (JR.asI l_length)
    repeat
        if !(JR.truth (<- JR.lt l_i l_j)) then break
        let _ := (<- JR.call this "swap_3" #[l_data, (<- JR.sub l_i (JV.int 1)), (<- JR.sub l_j (JV.int 1))])
        l_i := (JR.inc l_i)
        l_j := (JR.dec l_j)
        pure ()
    pure JV.null


def m_swap_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_data : JV := (JR.arg jargs 0)
    let mut l_a : JV := (JR.asI (JR.arg jargs 1))
    let mut l_b : JV := (JR.asI (JR.arg jargs 2))
    let mut l_temp : JV := (<- JR.aget l_data l_a)
    JR.aset l_data l_a (<- JR.aget l_data l_b)
    JR.aset l_data l_b l_temp
    pure JV.null


def m_factorial_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dataLength : JV := (JR.asI (JR.arg jargs 0))
    let mut l_temp : JV := (JR.asJ (JV.long 1))
    if JR.truth (<- JR.gt l_dataLength (JV.int 1)) then
        if true then
            let mut l_i : JV := (JR.asI (JV.int 1))
            repeat
                if !(JR.truth (<- JR.le l_i l_dataLength)) then break
                l_temp := (JR.castLike l_temp (<- JR.mul l_temp (JR.toJ l_i)))
                l_i := (JR.inc l_i)
                pure ()
            pure ()
        pure ()
    return (JR.asJ l_temp)


def m_generate_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_data : JV := (JR.arg jargs 0)
    let mut l_visitor : JV := (JR.arg jargs 1)
    let mut l_iterations : JV := (JR.asJ (<- JR.call this "factorial_1" #[(<- JR.alen l_data)]))
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "print_1" #[(<- JR.getField this "TOTAL_ITERATIONS_TABLE")])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[l_iterations])
    if true then
        let mut l_count : JV := (JR.asJ (JV.long 0))
        repeat
            if !(JR.truth (<- JR.lt l_count (<- JR.sub l_iterations (JV.long 1)))) then break
            let _ := (<- JR.call this "getNext_1" #[l_data])
            let _ := (<- JR.call l_visitor "visit_1" #[this])
            l_count := (JR.inc l_count)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.getField this "FINISHED")])
    pure JV.null


def m_main_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_args : JV := (JR.arg jargs 0)
    let mut l_TOTAL : JV := (JR.asI (JV.int 7))
    let mut l_data : JV := (<- JR.newArray "L" 1 #[l_TOTAL])
    if true then
        let mut l_i : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_i l_TOTAL)) then break
            JR.aset l_data l_i (<- JR.new "ComparableObject" #[])
            l_i := (JR.inc l_i)
            pure ()
        pure ()
    let _ := (<- JR.callStatic "Arrays" "sort_1" #[l_data])
    let mut l_permutationVisitor : JV := (<- JR.new "ObjectPermutationVisitor" #[l_data])
    let mut l_ORIGINAL_DATA_LABEL : JV := (JV.str "Original Data: ")
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "print_1" #[l_ORIGINAL_DATA_LABEL])
    let _ := (<- JR.call l_permutationVisitor "visit_1" #[l_data])
    let _ := (<- JR.call (<- JR.callStatic "OrderedObjectArrayPermutationUtil" "getInstance_0" #[]) "generate_2" #[l_data, l_permutationVisitor])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OrderedObjectArrayPermutationUtil",
    javaName := "org.allbinary.logic.math.permutations.OrderedObjectArrayPermutationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("TOTAL_ITERATIONS_TABLE", JV.null), ("FINISHED", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getNext_1", #["AnyArr"], false, m_getNext_1), 
        ("swap_3", #["AnyArr", "int", "int"], false, m_swap_3), 
        ("factorial_1", #["int"], false, m_factorial_1), 
        ("generate_2", #["AnyArr", "Visitor"], false, m_generate_2), 
        ("main_1", #["StringArr"], true, m_main_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OrderedObjectArrayPermutationUtil


