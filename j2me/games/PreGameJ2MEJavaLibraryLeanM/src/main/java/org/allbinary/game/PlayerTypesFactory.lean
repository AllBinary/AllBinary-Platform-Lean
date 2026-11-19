-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlayerTypesFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "PLAYER_TYPE_ONE" (<- JR.new "PlayerType" #[(JV.str "Player Type One"), (JV.int 0)])
    JR.setField this "PLAYER_TYPE_TWO" (<- JR.new "PlayerType" #[(JV.str "Player Type Two"), (JV.int 1)])
    JR.setField this "PLAYER_TYPE_THREE" (<- JR.new "PlayerType" #[(JV.str "Player Type Three"), (JV.int 2)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlayerTypesFactory" "SINGLETON" (<- JR.new "PlayerTypesFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PlayerTypesFactory" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlayerTypesFactory",
    javaName := "org.allbinary.game.PlayerTypesFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("PLAYER_TYPE_ONE", JV.null), ("PLAYER_TYPE_TWO", JV.null), ("PLAYER_TYPE_THREE", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlayerTypesFactory


