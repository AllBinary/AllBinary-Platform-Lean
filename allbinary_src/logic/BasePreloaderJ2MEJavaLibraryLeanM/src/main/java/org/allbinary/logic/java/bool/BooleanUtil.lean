-- Generated Code Do Not Modify
-- package org.allbinary.logic.java.bool
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BooleanUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BooleanUtil" "instance" (<- JR.new "BooleanUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BooleanUtil" "instance")


def m_getFromString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_booleanString : JV := (JR.arg jargs 0)
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    let mut l_booleanFactory : JV := (<- JR.callStatic "BooleanFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_booleanString]) then
        return (JV.bool false)
    let mut l_booleanStringLowerCase : JV := (<- JR.call l_booleanString "toLowerCase_0" #[])
    if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[l_booleanStringLowerCase, (<- JR.getField l_booleanFactory "TRUE_STRING")]) (JV.int 0)) then
        return (JV.bool true)
    else
        if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[l_booleanStringLowerCase, (<- JR.getField l_booleanFactory "FALSE_STRING")]) (JV.int 0)) then
            return (JV.bool false)
        else
            throw (<- JR.new "Exception" #[(JV.str "Invalid booleanString - Must be true or false")])
    pure JV.null


def m_isStringBoolean_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_booleanString : JV := (JR.arg jargs 0)
    let mut l_booleanFactory : JV := (<- JR.callStatic "BooleanFactory" "getInstance_0" #[])
    let mut l_booleanStringLowerCase : JV := (<- JR.call l_booleanString "toLowerCase_0" #[])
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.call l_booleanStringLowerCase "compareTo_1" #[(<- JR.getField l_booleanFactory "TRUE_STRING")]) (JV.int 0)) (do pure (<- JR.eq (<- JR.call l_booleanStringLowerCase "compareTo_1" #[(<- JR.getField l_booleanFactory "FALSE_STRING")]) (JV.int 0)))) then
        return (JV.bool true)
    return (JV.bool false)


def m_toStringFromBooleanArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_booleanArray : JV := (JR.arg jargs 0)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_booleanArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_stringMaker "appendboolean_1" #[(<- JR.aget l_booleanArray l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringMaker "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BooleanUtil",
    javaName := "org.allbinary.logic.java.bool.BooleanUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("tsUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getFromString_1", #["String"], false, m_getFromString_1), 
        ("isStringBoolean_1", #["String"], false, m_isStringBoolean_1), 
        ("toStringFromBooleanArray_1", #["booleanArr"], false, m_toStringFromBooleanArray_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BooleanUtil


