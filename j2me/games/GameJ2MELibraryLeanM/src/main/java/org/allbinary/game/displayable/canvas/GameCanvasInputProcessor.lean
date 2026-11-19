-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameCanvasInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "downGameKeyEventHandler" (<- JR.callStatic "DownGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "upGameKeyEventHandler" (<- JR.callStatic "UpGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "downKeyEventHandler" (<- JR.callStatic "DownKeyEventHandler" "getInstance_0" #[])
    JR.setField this "smallIntegerSingletonFactory" (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    JR.setField this "inputToGameKeyMapping" (<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "getInputMapping_0" #[])
    JR.setField this "NONE" (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "NONE")
    JR.setField this "gameKeyEventFactory" (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_keyPressedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    try
        let mut l_gameKey : JV := (<- JR.call (<- JR.getField this "inputToGameKeyMapping") "getInstanceForCanvas_2" #[(<- JR.getField this "allBinaryGameCanvas"), l_keyCode])
        if JR.truth (<- JR.ne l_gameKey (<- JR.getField this "NONE")) then
            let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[(<- JR.getField this "allBinaryGameCanvas"), l_gameKey])
            let _ := (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
            let _ := (<- JR.call (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "GameCanvasInputProcessor" "gameInputStrings") "NO_KEY")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "GameCanvasInputProcessor" "gameInputStrings") "ADD_KEY_EVENT")])
            pure ()
        let mut l_keyCodeAsInteger : JV := (<- JR.call (<- JR.getField this "smallIntegerSingletonFactory") "getAtNoThrow_1" #[l_keyCode])
        let _ := (<- JR.call (<- JR.getField this "downKeyEventHandler") "fireEventI_1" #[l_keyCodeAsInteger])
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "downKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEventI_1" #[l_keyCodeAsInteger])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(JV.str "Key Event Error"), this, (<- JR.getField (<- JR.getInherited this "GameCanvasInputProcessor" "gameInputStrings") "ADD_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_keyReleasedByDevice_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call this "removeGameKeyEvent_4" #[l_canvas, l_keyCode, l_deviceId, (JV.bool false)])
    pure JV.null


def m_removeGameKeyEvent_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_repeated : JV := (JR.arg jargs 3)
    try
        let mut l_gameKey : JV := (<- JR.call (<- JR.getField this "inputToGameKeyMapping") "getInstanceForCanvas_2" #[l_canvas, l_keyCode])
        if JR.truth (<- JR.ne l_gameKey (<- JR.getField this "NONE")) then
            let mut l_gameKeyEventSourceInterface : JV := l_canvas
            let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[l_gameKeyEventSourceInterface, l_gameKey])
            let _ := (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
            let _ := (<- JR.call (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "GameCanvasInputProcessor" "gameInputStrings") "NO_KEY")]) "appendint_1" #[l_keyCode]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "GameCanvasInputProcessor" "gameInputStrings") "REMOVE_KEY_EVENT")])
            pure ()
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(JV.str "Key Event Error"), this, (<- JR.getField (<- JR.getInherited this "GameCanvasInputProcessor" "gameInputStrings") "REMOVE_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "InputProcessor" this #[]
    let _ <- jfields this
    JR.setField this "allBinaryGameCanvas" l_allBinaryGameCanvas
    let _ := (<- JR.call (<- JR.getField this "inputToGameKeyMapping") "init_1" #[(<- JR.getField this "allBinaryGameCanvas")])
    pure this

initialize JR.registerClass {
    name := "GameCanvasInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.GameCanvasInputProcessor",
    super := "InputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("allBinaryGameCanvas", JV.null), ("downGameKeyEventHandler", JV.null), ("upGameKeyEventHandler", JV.null), ("downKeyEventHandler", JV.null), ("smallIntegerSingletonFactory", JV.null), ("inputToGameKeyMapping", JV.null), ("NONE", JV.null), ("gameKeyEventFactory", JV.null)],
    statics := #[],
    methods := #[
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyReleasedByDevice_3", #["Canvas", "int", "int"], false, m_keyReleasedByDevice_3), 
        ("removeGameKeyEvent_4", #["Canvas", "int", "int", "boolean"], false, m_removeGameKeyEvent_4), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameCanvasInputProcessor


