-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PrimitiveLongSingleton

def jfields (this : JV) : JM JV := do
    JR.setField this "UNK" (<- JR.arrayOf "C" #[(JV.char 85), (JV.char 110), (JV.char 107)])
    JR.setField this "NUMBER_ARRAY" (<- JR.arrayOf "B" #[(JV.int 0), (JV.int 1), (JV.int 2), (JV.int 3), (JV.int 4), (JV.int 5), (JV.int 6), (JV.int 7), (JV.int 8), (JV.int 9)])
    JR.setField this "NUMBER_CHAR_ARRAY" (<- JR.arrayOf "C" #[(JV.char 48), (JV.char 49), (JV.char 50), (JV.char 51), (JV.char 52), (JV.char 53), (JV.char 54), (JV.char 55), (JV.char 56), (JV.char 57)])
    JR.setField this "NUMBER_CHAR_ARRAYS" (<- JR.arrayOf "L" #[(<- JR.arrayOf "C" #[(JV.char 48)]), (<- JR.arrayOf "C" #[(JV.char 49)]), (<- JR.arrayOf "C" #[(JV.char 50)]), (<- JR.arrayOf "C" #[(JV.char 51)]), (<- JR.arrayOf "C" #[(JV.char 52)]), (<- JR.arrayOf "C" #[(JV.char 53)]), (<- JR.arrayOf "C" #[(JV.char 54)]), (<- JR.arrayOf "C" #[(JV.char 55)]), (<- JR.arrayOf "C" #[(JV.char 56)]), (<- JR.arrayOf "C" #[(JV.char 57)])])
    JR.setField this "ZERO" (<- JR.arrayOf "C" #[(<- JR.aget (<- JR.getField this "NUMBER_CHAR_ARRAY") (JV.int 0))])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PrimitiveLongSingleton" "instance" (<- JR.new "PrimitiveLongSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PrimitiveLongSingleton" "instance")


def m_getNumberFromChar_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_numberAsChar : JV := (JR.asC (JR.arg jargs 0))
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "NUMBER_CHAR_ARRAY")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "NUMBER_CHAR_ARRAY") l_index) l_numberAsChar) then
                return (JR.asB (<- JR.aget (<- JR.getField this "NUMBER_ARRAY") l_index))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "numberAsChar was not in array: ")]) "appendchar_1" #[l_numberAsChar]) "toString_0" #[])])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PrimitiveLongSingleton",
    javaName := "org.allbinary.logic.math.PrimitiveLongSingleton",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("UNK", JV.null), ("NUMBER_ARRAY", JV.null), ("NUMBER_CHAR_ARRAY", JV.null), ("NUMBER_CHAR_ARRAYS", JV.null), ("ZERO", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getNumberFromChar_1", #["char"], false, m_getNumberFromChar_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PrimitiveLongSingleton


