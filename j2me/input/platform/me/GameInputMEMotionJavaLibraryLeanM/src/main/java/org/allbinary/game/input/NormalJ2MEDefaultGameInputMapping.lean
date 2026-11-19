-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NormalJ2MEDefaultGameInputMapping

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "PersistentInputMapping" this #[(<- JR.getField (<- JR.callStatic "GamePersistanceStrings" "getInstance_0" #[]) "DEFAULT_INPUT_MAPPING_RECORD_ID")]
    let _ <- jfields this
    let mut l_inputToGameKeyMapping : JV := (<- JR.callInherited this "NormalJ2MEDefaultGameInputMapping" "getInputMapping_0" #[])
    let mut l_gameKeyFactory : JV := (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_gameKeyFactory "KEY_NUM2")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_gameKeyFactory "KEY_NUM4")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_gameKeyFactory "KEY_NUM6")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_gameKeyFactory "KEY_NUM8")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_gameKeyFactory "GAME_A")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM3"), (<- JR.getField l_gameKeyFactory "GAME_B")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7"), (<- JR.getField l_gameKeyFactory "GAME_C")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9"), (<- JR.getField l_gameKeyFactory "GAME_D")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEVEL_DOWN"), (<- JR.getField l_gameKeyFactory "LEVEL_DOWN")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEVEL_UP"), (<- JR.getField l_gameKeyFactory "LEVEL_UP")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_gameKeyFactory "UP")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_gameKeyFactory "DOWN")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_gameKeyFactory "LEFT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_gameKeyFactory "RIGHT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_POUND"), (<- JR.getField l_gameKeyFactory "KEY_POUND")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_STAR"), (<- JR.getField l_gameKeyFactory "KEY_STAR")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_gameKeyFactory "KEY_NUM1")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM3"), (<- JR.getField l_gameKeyFactory "KEY_NUM3")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM5"), (<- JR.getField l_gameKeyFactory "KEY_NUM5")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7"), (<- JR.getField l_gameKeyFactory "KEY_NUM7")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9"), (<- JR.getField l_gameKeyFactory "KEY_NUM9")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM0"), (<- JR.getField l_gameKeyFactory "KEY_NUM0")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_gameKeyFactory "FIRE")])
    pure this

initialize JR.registerClass {
    name := "NormalJ2MEDefaultGameInputMapping",
    javaName := "org.allbinary.game.input.NormalJ2MEDefaultGameInputMapping",
    super := "PersistentInputMapping",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NormalJ2MEDefaultGameInputMapping


