-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKey

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKey" "NULL_GAME_KEY" (<- JR.new "GameKey" #[(JV.int (-1)), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "GameKey ")]) "append_1" #[(<- JR.callSuper "Input" this "toString_0" #[])]) "toString_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    let mut l_name : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Input" this #[l_key, l_name]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameKey",
    javaName := "org.allbinary.game.input.GameKey",
    super := "Input",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_GAME_KEY", JV.null)],
    methods := #[
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["int", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKey


