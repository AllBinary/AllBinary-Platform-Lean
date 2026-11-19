-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FormInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "gameKeyEventFactory" (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[])
    JR.setField this "downKeyEventHandler" (<- JR.callStatic "DownKeyEventHandler" "getInstance_0" #[])
    JR.setField this "upGameKeyEventHandler" (<- JR.callStatic "UpGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "inputFactory" (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    JR.setField this "platformKeyFactory" (<- JR.callStatic "PlatformKeyFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_keyPressedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    try
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "inputFactory") "KEY_CODE_LABEL")]) "appendint_1" #[l_keyCode]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")]) "append_1" #[(<- JR.getField (<- JR.getField this "inputFactory") "DEVICE_ID_LABEL")]) "appendint_1" #[l_deviceId]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "FormInputProcessor" "gameInputStrings") "KEY_PRESSED")])
        let mut l_input : JV := (<- JR.call (<- JR.getField this "inputFactory") "getInstanceById_1" #[l_keyCode])
        let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[(<- JR.getField this "allBinaryGameCanvas"), l_input])
        let _ := (<- JR.call (<- JR.getField this "downKeyEventHandler") "fireEventForGameKeyEvent_1" #[l_gameKeyEvent])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "FormInputProcessor" "gameInputStrings") "ADD_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_keyReleasedByDevice_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    try
        let mut l_input : JV := (<- JR.call (<- JR.getField this "inputFactory") "getInstanceById_1" #[l_keyCode])
        if JR.truth (<- JR.call (<- JR.getField this "platformKeyFactory") "isEnter_1" #[l_input]) then
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "inputFactory") "KEY_CODE_LABEL")]) "appendint_1" #[l_keyCode]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")]) "append_1" #[(<- JR.getField (<- JR.getField this "inputFactory") "DEVICE_ID_LABEL")]) "appendint_1" #[l_deviceId]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "FormInputProcessor" "gameInputStrings") "KEY_RELEASED")])
            let mut l_gameKey : JV := (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "KEY_NUM0")
            let mut l_gameKeyEventSourceInterface : JV := l_canvas
            let mut l_gameKeyEvent : JV := (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[l_gameKeyEventSourceInterface, l_gameKey])
            let _ := (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
            let _ := (<- JR.call (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
            pure ()
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "FormInputProcessor" "gameInputStrings") "ADD_KEY_EVENT"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "InputProcessor" this #[]
    let _ <- jfields this
    JR.setField this "allBinaryGameCanvas" l_allBinaryGameCanvas
    pure this

initialize JR.registerClass {
    name := "FormInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.FormInputProcessor",
    super := "InputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("gameKeyEventFactory", JV.null), ("downKeyEventHandler", JV.null), ("upGameKeyEventHandler", JV.null), ("inputFactory", JV.null), ("platformKeyFactory", JV.null), ("allBinaryGameCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyReleasedByDevice_3", #["Canvas", "int", "int"], false, m_keyReleasedByDevice_3), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FormInputProcessor


