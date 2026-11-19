-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PCGameKey

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.concat (JV.str "PCGameKey: ") (<- JR.callSuper "Input" this "toString_0" #[]))


def m_getString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_input : JV := (<- JR.call (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "getInstanceById_1" #[l_keyCode])
    if JR.truth (<- JR.ne l_input JV.null) then
        return (<- JR.call l_input "getName_0" #[])
    else
        return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_name : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Input" this #[l_keyCode, l_name]
    let _ <- jfields this
    let mut l_id : JV := (JR.asI (<- JR.callInherited this "PCGameKey" "getId_0" #[]))
    if JR.truth (<- JR.ge l_id (JV.int 0)) then
        let _ := (<- JR.call (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "add_2" #[l_id, this])
        pure ()
    pure this

initialize JR.registerClass {
    name := "PCGameKey",
    javaName := "org.allbinary.game.input.PCGameKey",
    super := "Input",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("toString_0", #[], false, m_toString_0), 
        ("getString_1", #["int"], true, m_getString_1), 
        ("jinit_2", #["int", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PCGameKey


