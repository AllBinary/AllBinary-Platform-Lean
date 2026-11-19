-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameMode

def jfields (this : JV) : JM JV := do
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameMode" "NONE" (<- JR.new "GameMode" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")])
    JR.setStatic "GameMode" "SERVER" (<- JR.new "GameMode" #[(JV.str "Server")])
    JR.setStatic "GameMode" "CLIENT" (<- JR.new "GameMode" #[(JV.str "Client")])
    pure JV.null


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    JR.setField this "name" l_name
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "getName_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setName_1" #[l_name])
    pure this

initialize JR.registerClass {
    name := "GameMode",
    javaName := "org.allbinary.game.GameMode",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null)],
    statics := #[("NONE", JV.null), ("SERVER", JV.null), ("CLIENT", JV.null)],
    methods := #[
        ("setName_1", #["String"], false, m_setName_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameMode


