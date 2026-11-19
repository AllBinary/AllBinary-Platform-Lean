-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DesktopDefaultGameInputMapping

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "PersistentInputMapping" this #[(<- JR.getField (<- JR.callStatic "GamePersistanceStrings" "getInstance_0" #[]) "DEFAULT_INPUT_MAPPING_RECORD_ID")]
    let _ <- jfields this
    let mut l_pcKeyFactory : JV := (<- JR.callStatic "PCKeyFactory" "getInstance_0" #[])
    let mut l_inputToGameKeyMapping : JV := (<- JR.callInherited this "DesktopDefaultGameInputMapping" "getInputMapping_0" #[])
    let mut l_gameKeyFactory : JV := (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    let mut l_touchMotionGestureFactory : JV := (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[])
    let mut l_basicTouchInputFactory : JV := (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "FIRE"), (<- JR.getField l_pcKeyFactory "ENTER")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_pcKeyFactory "FOUR")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_pcKeyFactory "_P")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_pcKeyFactory "p")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_pcKeyFactory "DPAD_UP")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_pcKeyFactory "DPAD_DOWN")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_pcKeyFactory "DPAD_LEFT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_pcKeyFactory "DPAD_RIGHT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7"), (<- JR.getField l_pcKeyFactory "_Y")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9"), (<- JR.getField l_pcKeyFactory "_I")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_pcKeyFactory "_U")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_pcKeyFactory "_H")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_pcKeyFactory "_J")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_pcKeyFactory "_N")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM5"), (<- JR.getField l_pcKeyFactory "_M")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7"), (<- JR.getField l_pcKeyFactory "y")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9"), (<- JR.getField l_pcKeyFactory "i")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_pcKeyFactory "u")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_pcKeyFactory "h")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_pcKeyFactory "j")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_pcKeyFactory "n")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM5"), (<- JR.getField l_pcKeyFactory "m")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7"), (<- JR.getField l_pcKeyFactory "_Q")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9"), (<- JR.getField l_pcKeyFactory "_E")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_pcKeyFactory "_W")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_pcKeyFactory "_A")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_pcKeyFactory "_D")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_pcKeyFactory "_S")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM5"), (<- JR.getField l_pcKeyFactory "_X")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7"), (<- JR.getField l_pcKeyFactory "q")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9"), (<- JR.getField l_pcKeyFactory "e")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_pcKeyFactory "w")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_pcKeyFactory "a")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_pcKeyFactory "d")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_pcKeyFactory "s")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM5"), (<- JR.getField l_pcKeyFactory "x")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_touchMotionGestureFactory "UP")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_touchMotionGestureFactory "DOWN")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_touchMotionGestureFactory "LEFT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_touchMotionGestureFactory "RIGHT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_basicTouchInputFactory "UP")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_basicTouchInputFactory "LEFT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_basicTouchInputFactory "RIGHT")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_basicTouchInputFactory "DOWN")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM0"), (<- JR.getField l_basicTouchInputFactory "SPECIAL_BUTTON_FIVE")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM7"), (<- JR.getField l_basicTouchInputFactory "SPECIAL_BUTTON_FOUR")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM9"), (<- JR.getField l_basicTouchInputFactory "SPECIAL_BUTTON_THREE")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_basicTouchInputFactory "SPECIAL_BUTTON_TWO")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM3"), (<- JR.getField l_basicTouchInputFactory "SPECIAL_BUTTON_ONE")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM2"), (<- JR.getField l_basicTouchInputFactory "SPECIAL_BUTTON_SIX")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM3"), (<- JR.getField l_pcKeyFactory "THREE")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM0"), (<- JR.getField l_pcKeyFactory "ZERO")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM0"), (<- JR.getField l_pcKeyFactory "ONE")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM0"), (<- JR.getField l_pcKeyFactory "SPACE")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_POUND"), (<- JR.getField l_pcKeyFactory "DEL")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_POUND"), (<- JR.getField l_pcKeyFactory "TWO")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_STAR"), (<- JR.getField l_pcKeyFactory "ESCAPE")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_STAR"), (<- JR.getField l_pcKeyFactory "STAR")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEVEL_DOWN"), (<- JR.getField l_pcKeyFactory "COMMA")])
    let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEVEL_UP"), (<- JR.getField l_pcKeyFactory "PERIOD")])
    pure this

initialize JR.registerClass {
    name := "DesktopDefaultGameInputMapping",
    javaName := "org.allbinary.game.input.DesktopDefaultGameInputMapping",
    super := "PersistentInputMapping",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DesktopDefaultGameInputMapping


