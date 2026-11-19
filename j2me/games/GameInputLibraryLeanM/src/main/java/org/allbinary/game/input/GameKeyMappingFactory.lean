-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyMappingFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "intKeyToGameKey" (<- JR.newArray "L" 1 #[(<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKeyMappingFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GameKeyMappingFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GameKeyMappingFactory" "instance" (<- JR.new "GameKeyMappingFactory" #[])
        pure ()
    return (<- JR.getStatic "GameKeyMappingFactory" "instance")


def m_getGameKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField this "intKeyToGameKey") l_key)


def m_setGameKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKey : JV := (JR.arg jargs 0)
    JR.aset (<- JR.getField this "intKeyToGameKey") (<- JR.call l_gameKey "getId_0" #[]) l_gameKey
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_gameKeyFactory : JV := (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "NONE")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "UP")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "DOWN")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "LEFT")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "RIGHT")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_POUND")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_STAR")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM0")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM2")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM3")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM4")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM5")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM6")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM8")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "GAME_A")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "GAME_B")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "GAME_C")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "GAME_D")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "FIRE")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "LEVEL_DOWN")])
    let _ := (<- JR.call this "setGameKey_1" #[(<- JR.getField l_gameKeyFactory "LEVEL_UP")])
    pure this

initialize JR.registerClass {
    name := "GameKeyMappingFactory",
    javaName := "org.allbinary.game.input.GameKeyMappingFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("intKeyToGameKey", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getGameKey_1", #["int"], false, m_getGameKey_1), 
        ("setGameKey_1", #["GameKey"], false, m_setGameKey_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyMappingFactory


