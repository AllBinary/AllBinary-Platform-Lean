-- Generated Code Do Not Modify
-- package org.allbinary.game.multiplayer.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MultiplayerBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MultiplayerBehavior" "NULL_MULTIPLAYER_BEHAVIOR" (<- JR.new "MultiplayerBehavior" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    pure JV.null


def m_startTick_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_endTick_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getApproximateElapsed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JV.long 0))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_username : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MultiplayerBehavior",
    javaName := "org.allbinary.game.multiplayer.layer.MultiplayerBehavior",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_MULTIPLAYER_BEHAVIOR", JV.null)],
    methods := #[
        ("startTick_0", #[], false, m_startTick_0), 
        ("endTick_0", #[], false, m_endTick_0), 
        ("getApproximateElapsed_0", #[], false, m_getApproximateElapsed_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MultiplayerBehavior


