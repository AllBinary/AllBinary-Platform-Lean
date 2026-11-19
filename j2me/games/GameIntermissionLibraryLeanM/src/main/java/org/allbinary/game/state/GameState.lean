-- Generated Code Do Not Modify
-- package org.allbinary.game.state
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameState

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_state : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    pure this

initialize JR.registerClass {
    name := "GameState",
    javaName := "org.allbinary.game.state.GameState",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null)],
    statics := #[],
    methods := #[
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["String", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameState


