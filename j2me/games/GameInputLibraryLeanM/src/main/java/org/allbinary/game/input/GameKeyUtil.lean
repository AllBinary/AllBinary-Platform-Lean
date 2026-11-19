-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKeyUtil" "instance" (<- JR.new "GameKeyUtil" #[])
    pure JV.null


def m_isDirectionKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.eq l_key (<- JR.getStatic "Canvas" "UP")) (do pure (<- JR.eq l_key (<- JR.getStatic "Canvas" "DOWN")))) (do pure (<- JR.eq l_key (<- JR.getStatic "Canvas" "LEFT")))) (do pure (<- JR.eq l_key (<- JR.getStatic "Canvas" "RIGHT")))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameKeyUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameKeyUtil",
    javaName := "org.allbinary.game.input.GameKeyUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("isDirectionKey_1", #["int"], false, m_isDirectionKey_1), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyUtil


