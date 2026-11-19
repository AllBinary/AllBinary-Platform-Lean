-- Generated Code Do Not Modify
-- package org.allbinary.game.rand
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MyRandomFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "mathUtil" (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MyRandomFactory" "instance" (<- JR.new "MyRandomFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MyRandomFactory" "instance")


def m_setSeed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_seed : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "rand" (<- JR.new "Random" #[l_seed])
    pure JV.null


def m_getNextInt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_range : JV := (JR.asI (JR.arg jargs 0))
    let mut l_div : JV := (JR.asI (<- JR.add ((<- JR.div (<- JR.getStatic "Integer" "MAX_VALUE") l_range)) (JV.int 1)))
    return (JR.asI ((<- JR.div (<- JR.call (<- JR.getField this "rand") "nextInt_0" #[]) l_div)))


def m_getAbsoluteNextInt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_range : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.call (<- JR.getField this "mathUtil") "abs_1" #[(<- JR.call this "getNextInt_1" #[l_range])]))


def m_getAbsoluteNextIntAllowZero_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_range : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.eq l_range (JV.int 0)) then
        return (JR.asI (JV.int 0))
    else
        return (JR.asI (<- JR.call (<- JR.getField this "mathUtil") "abs_1" #[(<- JR.call this "getNextInt_1" #[l_range])]))
    pure JV.null


def m_shuffle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_intArray : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "shuffleTotal_2" #[l_intArray, (<- JR.mul (<- JR.alen l_intArray) (JV.int 7))])
    pure JV.null


def m_shuffleTotal_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_intArray : JV := (JR.arg jargs 0)
    let mut l_shuffleTotal : JV := (JR.asI (JR.arg jargs 1))
    let mut l_size : JV := (JR.asI (<- JR.alen l_intArray))
    let mut l_randomIndex : JV := (JR.asI (JV.int 0))
    let mut l_randomIndex2 : JV := (JR.asI (JV.int 0))
    let mut l_value : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_shuffleTotal)) then break
            l_randomIndex := (JR.asI (<- JR.call this "getAbsoluteNextIntAllowZero_1" #[l_size]))
            l_randomIndex2 := (JR.asI (<- JR.call this "getAbsoluteNextIntAllowZero_1" #[l_size]))
            l_value := (JR.asI (<- JR.aget l_intArray l_randomIndex))
            JR.aset l_intArray l_randomIndex (JR.asI (<- JR.aget l_intArray l_randomIndex2))
            JR.aset l_intArray l_randomIndex2 (JR.asI l_value)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_shuffle2_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_intArray : JV := (JR.arg jargs 0)
    let mut l_intArray2 : JV := (JR.arg jargs 1)
    let _ := (<- JR.call this "shuffle2Total_3" #[l_intArray, l_intArray2, (<- JR.mul (<- JR.alen l_intArray) (JV.int 7))])
    pure JV.null


def m_shuffle2Total_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_intArray : JV := (JR.arg jargs 0)
    let mut l_intArray2 : JV := (JR.arg jargs 1)
    let mut l_shuffleTotal : JV := (JR.asI (JR.arg jargs 2))
    let mut l_size : JV := (JR.asI (<- JR.alen l_intArray))
    let mut l_randomIndex : JV := (JR.asI (JV.int 0))
    let mut l_randomIndex2 : JV := (JR.asI (JV.int 0))
    let mut l_value : JV := (JR.asI (JV.int 0))
    let mut l_value2 : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_shuffleTotal)) then break
            l_randomIndex := (JR.asI (<- JR.call this "getAbsoluteNextIntAllowZero_1" #[l_size]))
            l_randomIndex2 := (JR.asI (<- JR.call this "getAbsoluteNextIntAllowZero_1" #[l_size]))
            l_value := (JR.asI (<- JR.aget l_intArray l_randomIndex))
            l_value2 := (JR.asI (<- JR.aget l_intArray2 l_randomIndex))
            JR.aset l_intArray l_randomIndex (JR.asI (<- JR.aget l_intArray l_randomIndex2))
            JR.aset l_intArray l_randomIndex2 (JR.asI l_value)
            JR.aset l_intArray2 l_randomIndex (JR.asI (<- JR.aget l_intArray2 l_randomIndex2))
            JR.aset l_intArray2 l_randomIndex2 (JR.asI l_value2)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_main_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_args : JV := (JR.arg jargs 0)
    let mut l_randomFactory : JV := (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[])
    let mut l_stringBuilder : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_size2 : JV := (JR.asI (JV.int 100))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size2)) then break
            let _ := (<- JR.call (<- JR.call l_stringBuilder "appendint_1" #[(<- JR.call l_randomFactory "getAbsoluteNextInt_1" #[(JV.int 3)])]) "append_1" #[(<- JR.getField l_commonSeps "COMMA")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.call l_stringBuilder "toString_0" #[])])
    let _ := (<- JR.call l_stringBuilder "delete_2" #[(JV.int 0), (<- JR.call l_stringBuilder "length_0" #[])])
    let mut l_intArray : JV := (<- JR.newArray "I" 1 #[(JV.int 52)])
    let mut l_intArray2 : JV := (<- JR.newArray "I" 1 #[(JV.int 52)])
    let mut l_size : JV := (JR.asI (<- JR.alen l_intArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset l_intArray l_index (JR.asI l_index)
            JR.aset l_intArray2 l_index (JR.asI l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_randomFactory "shuffle2_2" #[l_intArray, l_intArray2])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call (<- JR.call l_stringBuilder "appendint_1" #[(<- JR.aget l_intArray l_index)]) "append_1" #[(<- JR.getField l_commonSeps "COMMA")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.call l_stringBuilder "toString_0" #[])])
    let _ := (<- JR.call l_stringBuilder "delete_2" #[(JV.int 0), (<- JR.call l_stringBuilder "length_0" #[])])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call (<- JR.call l_stringBuilder "appendint_1" #[(<- JR.aget l_intArray2 l_index)]) "append_1" #[(<- JR.getField l_commonSeps "COMMA")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getStatic "System" "out") "println_1" #[(<- JR.call l_stringBuilder "toString_0" #[])])
    let mut l_found : JV := (JV.bool false)
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_found := (JV.bool false)
            if true then
                let mut l_index2 : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index2 l_size)) then break
                    if JR.truth (<- JR.eq (<- JR.aget l_intArray l_index2) l_index) then
                        l_found := (JV.bool true)
                        pure ()
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            if JR.truth (JR.not l_found) then
                throw (<- JR.new "RuntimeException" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "rand" (<- JR.new "Random" #[(<- JR.callStatic "System" "currentTimeMillis_0" #[])])
    pure this

initialize JR.registerClass {
    name := "MyRandomFactory",
    javaName := "org.allbinary.game.rand.MyRandomFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("mathUtil", JV.null), ("rand", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setSeed_1", #["long"], false, m_setSeed_1), 
        ("getNextInt_1", #["int"], false, m_getNextInt_1), 
        ("getAbsoluteNextInt_1", #["int"], false, m_getAbsoluteNextInt_1), 
        ("getAbsoluteNextIntAllowZero_1", #["int"], false, m_getAbsoluteNextIntAllowZero_1), 
        ("shuffle_1", #["intArr"], false, m_shuffle_1), 
        ("shuffleTotal_2", #["intArr", "int"], false, m_shuffleTotal_2), 
        ("shuffle2_2", #["intArr", "intArr"], false, m_shuffle2_2), 
        ("shuffle2Total_3", #["intArr", "intArr", "int"], false, m_shuffle2Total_3), 
        ("main_1", #["StringArr"], true, m_main_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MyRandomFactory


