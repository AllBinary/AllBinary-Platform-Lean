-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Input

def jfields (this : JV) : JM JV := do
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "id"))


def m_setId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "id" (JR.asI l_key)
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyName : JV := (JR.arg jargs 0)
    JR.setField this "name" l_keyName
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Name: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Id: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getId_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_name : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setId_1" #[l_id])
    let _ := (<- JR.call this "setName_1" #[l_name])
    pure this

initialize JR.registerClass {
    name := "Input",
    javaName := "org.allbinary.game.input.Input",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("id", (JV.int 0)), ("name", JV.null)],
    statics := #[],
    methods := #[
        ("getId_0", #[], false, m_getId_0), 
        ("setId_1", #["int"], false, m_setId_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("setName_1", #["String"], false, m_setName_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["int", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Input


