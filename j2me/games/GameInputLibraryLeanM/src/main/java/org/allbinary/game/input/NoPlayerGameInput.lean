-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoPlayerGameInput

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoPlayerGameInput" "SINGLETON" (<- JR.new "NoPlayerGameInput" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoPlayerGameInput" "SINGLETON")


def m_onDownGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_onUpGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "PlayerGameInput" this #[(<- JR.new "BasicArrayListD" #[]), (<- JR.new "BasicArrayListD" #[]), (JV.int (-1))]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoPlayerGameInput",
    javaName := "org.allbinary.game.input.NoPlayerGameInput",
    super := "PlayerGameInput",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("onDownGameKeyEvent_1", #["GameKeyEvent"], false, m_onDownGameKeyEvent_1), 
        ("onUpGameKeyEvent_1", #["GameKeyEvent"], false, m_onUpGameKeyEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoPlayerGameInput


