-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicArrayListUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_ARRAY_OF_ARRAY" (<- JR.newArray "L" 2 #[(JV.int 0), (JV.int 0)])
    JR.setField this "myRandomFactory" (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[])
    JR.setField this "immutableInstance" (<- JR.new "ImmutableBasicArrayList" #[(JV.str "Immutable"), (JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicArrayListUtil" "instance" (<- JR.new "BasicArrayListUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicArrayListUtil" "instance")


def m_getRandom_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_i_random : JV := (JR.asI (<- JR.call this "getRandomIndex_1" #[l_list]))
    return (<- JR.aget (<- JR.getField l_list "objectArray") l_i_random)


def m_getRandomIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    return (JR.asI (<- JR.call (<- JR.getField this "myRandomFactory") "getAbsoluteNextInt_1" #[(<- JR.call l_list "size_0" #[])]))


def m_reverse_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_lastMinusOneIndex : JV := (JR.asI (<- JR.sub (<- JR.call l_list "size_0" #[]) (JV.int 2)))
    let mut l_temp : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.div l_lastMinusOneIndex (JV.int 2)))
    let mut l_secondSwapIndex : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.le l_index l_size)) then break
            l_secondSwapIndex := (JR.asI (<- JR.sub l_lastMinusOneIndex l_index))
            l_temp := (<- JR.call l_list "removeAt_1" #[l_index])
            let _ := (<- JR.call l_list "addAt_2" #[l_index, (<- JR.call l_list "removeAt_1" #[l_secondSwapIndex])])
            let _ := (<- JR.call l_list "addAt_2" #[(<- JR.add l_secondSwapIndex (JV.int 1)), l_temp])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_log_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_S_LABEL : JV := (JV.str " s: ")
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "TOTAL_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_size])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_usedList : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_S_LABEL])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call l_usedList "size_0" #[])])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getImmutableInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "immutableInstance")


def m_main_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_args : JV := (JR.arg jargs 0)
    let mut l_commonPhoneStrings : JV := (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[])
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "ONE")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "TWO")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "THREE")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "FOUR")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "FIVE")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "SIX")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "SEVEN")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "EIGHT")])
    let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_commonPhoneStrings "NINE")])
    let _ := (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "reverse_1" #[l_list])
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.call l_list "toString_0" #[])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicArrayListUtil",
    javaName := "org.allbinary.util.BasicArrayListUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NULL_ARRAY_OF_ARRAY", JV.null), ("myRandomFactory", JV.null), ("immutableInstance", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getRandom_1", #["BasicArrayList"], false, m_getRandom_1), 
        ("getRandomIndex_1", #["BasicArrayList"], false, m_getRandomIndex_1), 
        ("reverse_1", #["BasicArrayList"], false, m_reverse_1), 
        ("log_1", #["BasicArrayList"], false, m_log_1), 
        ("getImmutableInstance_0", #[], false, m_getImmutableInstance_0), 
        ("main_1", #["StringArr"], true, m_main_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicArrayListUtil


