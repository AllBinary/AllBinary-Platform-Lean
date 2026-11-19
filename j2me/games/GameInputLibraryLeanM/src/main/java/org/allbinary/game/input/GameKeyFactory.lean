-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.new "GameKey" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 1)), (JV.str "None")])
    JR.setField this "UP" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "UP"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "UP")])
    JR.setField this "DOWN" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "DOWN"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "DOWN")])
    JR.setField this "LEFT" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "LEFT"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "LEFT")])
    JR.setField this "RIGHT" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "RIGHT"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "RIGHT")])
    JR.setField this "KEY_POUND" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_POUND"), (JV.str "POUND")])
    JR.setField this "KEY_STAR" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_STAR"), (JV.str "STAR")])
    JR.setField this "KEY_NUM0" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM0"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "ZERO")])
    JR.setField this "KEY_NUM1" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM1"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "ONE")])
    JR.setField this "KEY_NUM2" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM2"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "TWO")])
    JR.setField this "KEY_NUM3" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM3"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "THREE")])
    JR.setField this "KEY_NUM4" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM4"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "FOUR")])
    JR.setField this "KEY_NUM5" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM5"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "FIVE")])
    JR.setField this "KEY_NUM6" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM6"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "SIX")])
    JR.setField this "KEY_NUM7" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM7"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "SEVEN")])
    JR.setField this "KEY_NUM8" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM8"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "EIGHT")])
    JR.setField this "KEY_NUM9" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "KEY_NUM9"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "NINE")])
    JR.setField this "GAME_A" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "GAME_A"), (JV.str "Game A")])
    JR.setField this "GAME_B" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "GAME_B"), (JV.str "Game B")])
    JR.setField this "GAME_C" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "GAME_C"), (JV.str "Game C")])
    JR.setField this "GAME_D" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "GAME_D"), (JV.str "Game D")])
    JR.setField this "FIRE" (<- JR.new "GameKey" #[(<- JR.getStatic "Canvas" "FIRE"), (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "FIRE")])
    JR.setField this "LEVEL_DOWN" (<- JR.new "GameKey" #[(<- JR.add (<- JR.getStatic "Canvas" "KEY_NUM9") (JV.int 1)), (JV.str "Cheat Level Up")])
    JR.setField this "LEVEL_UP" (<- JR.new "GameKey" #[(<- JR.add (<- JR.getStatic "Canvas" "KEY_NUM9") (JV.int 2)), (JV.str "Cheat Level Down")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKeyFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GameKeyFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GameKeyFactory" "instance" (<- JR.new "GameKeyFactory" #[])
        pure ()
    return (<- JR.getStatic "GameKeyFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameKeyFactory",
    javaName := "org.allbinary.game.input.GameKeyFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NONE", JV.null), ("UP", JV.null), ("DOWN", JV.null), ("LEFT", JV.null), ("RIGHT", JV.null), ("KEY_POUND", JV.null), ("KEY_STAR", JV.null), ("KEY_NUM0", JV.null), ("KEY_NUM1", JV.null), ("KEY_NUM2", JV.null), ("KEY_NUM3", JV.null), ("KEY_NUM4", JV.null), ("KEY_NUM5", JV.null), ("KEY_NUM6", JV.null), ("KEY_NUM7", JV.null), ("KEY_NUM8", JV.null), ("KEY_NUM9", JV.null), ("GAME_A", JV.null), ("GAME_B", JV.null), ("GAME_C", JV.null), ("GAME_D", JV.null), ("FIRE", JV.null), ("LEVEL_DOWN", JV.null), ("LEVEL_UP", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyFactory


