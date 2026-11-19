-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_GAME_TYPE_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    JR.setField this "NONE" (<- JR.new "GameType" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")])
    JR.setField this "SINGLE_PLAYER" (<- JR.new "GameType" #[(JV.str "Single Player")])
    JR.setField this "MULTI_PLAYER" (<- JR.new "GameType" #[(JV.str "Multi Player")])
    JR.setField this "BOT" (<- JR.new "GameType" #[(JV.str "Artificial Player")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameTypeFactory" "instance" (<- JR.new "GameTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameTypeFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameTypeFactory",
    javaName := "org.allbinary.game.GameTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NULL_GAME_TYPE_ARRAY", JV.null), ("NONE", JV.null), ("SINGLE_PLAYER", JV.null), ("MULTI_PLAYER", JV.null), ("BOT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameTypeFactory


