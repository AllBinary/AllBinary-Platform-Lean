-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_J2MEGameKey

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "J2MEGameKey: ")]) "append_1" #[(<- JR.callSuper "Input" this "toString_0" #[])]) "toString_0" #[])


def m_getString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_input : JV := (<- JR.call (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "getInstanceById_1" #[l_keyCode])
    if JR.truth (<- JR.ne l_input JV.null) then
        return (<- JR.call l_input "getName_0" #[])
    else
        return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    let mut l_keyName : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Input" this #[l_key, l_keyName]
    let _ <- jfields this
    let mut l_id : JV := (JR.asI (<- JR.callInherited this "J2MEGameKey" "getId_0" #[]))
    if JR.truth (<- JR.ge l_id (JV.int 0)) then
        let mut l_inputFactory : JV := (<- JR.callStatic "InputFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_inputFactory "add_2" #[l_id, this])
        pure ()
    pure this

initialize JR.registerClass {
    name := "J2MEGameKey",
    javaName := "org.allbinary.game.input.J2MEGameKey",
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

end jclass_J2MEGameKey


