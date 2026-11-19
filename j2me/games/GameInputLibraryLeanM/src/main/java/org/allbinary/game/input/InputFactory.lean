-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "KEY_CODE_LABEL" (JV.str "KeyCode: ")
    JR.setField this "DEVICE_ID_LABEL" (JV.str "DeviceId: ")
    JR.setField this "MAX" (JR.asI (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getMin_0" #[]))
    JR.setField this "inputIntegerArray" (<- JR.newArray "L" 1 #[(<- JR.getField this "MAX")])
    JR.setField this "NO_INPUT" (<- JR.new "Input" #[(JV.int 0), (<- JR.getField (<- JR.getField this "commonStrings") "UNKNOWN")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InputFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "InputFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "InputFactory" "instance" (<- JR.new "InputFactory" #[])
        pure ()
    return (<- JR.getStatic "InputFactory" "instance")


def m_add_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_input : JV := (JR.arg jargs 1)
    JR.aset (<- JR.getField this "inputIntegerArray") l_id l_input
    pure JV.null


def m_getInstanceById_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.lt l_id (JV.int 0)) then
        l_id := (JR.asI (JR.neg l_id))
        pure ()
    if JR.truth (<- JR.gt l_id (<- JR.alen (<- JR.getField this "inputIntegerArray"))) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Warning id: ")]) "appendint_1" #[l_id]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET_INSTANCE")])
        return (<- JR.getField this "NO_INPUT")
    return (<- JR.aget (<- JR.getField this "inputIntegerArray") l_id)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "inputIntegerArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.getField this "inputIntegerArray") l_index (<- JR.getField this "NO_INPUT")
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "InputFactory",
    javaName := "org.allbinary.game.input.InputFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("KEY_CODE_LABEL", JV.null), ("DEVICE_ID_LABEL", JV.null), ("MAX", (JV.int 0)), ("inputIntegerArray", JV.null), ("NO_INPUT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("add_2", #["int", "Input"], false, m_add_2), 
        ("getInstanceById_1", #["int"], false, m_getInstanceById_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputFactory


