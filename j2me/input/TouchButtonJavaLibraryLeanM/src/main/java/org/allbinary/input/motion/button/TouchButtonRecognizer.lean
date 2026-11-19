-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonRecognizer

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "rectangleCollisionUtil" (<- JR.callStatic "RectangleCollisionUtil" "getInstance_0" #[])
    JR.setField this "upGameKeyEventHandler" (<- JR.callStatic "UpGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "downGameKeyEventHandler" (<- JR.callStatic "DownGameKeyEventHandler" "getInstance_0" #[])
    JR.setField this "lastPressedTouchButtonInput" (<- JR.getField (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "NONE")
    JR.setField this "currentlyPressedTouchButtonSingleton" (<- JR.callStatic "CurrentlyPressedTouchButtonSingleton" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processRelease_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "releaseHelper") "release_2" #[l_touchButtonInput, l_deviceId])
    let mut l_gameKeyEvent : JV := (<- JR.call l_touchButtonInput "getGameKeyEvent_0" #[])
    let _ := (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "upGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
    let _ := (<- JR.call (<- JR.getField this "currentlyPressedTouchButtonSingleton") "remove_1" #[l_touchButtonInput])
    pure JV.null


def m_releaseTouchButtonInput_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_touchButtonInput : JV := (<- JR.getField this "lastPressedTouchButtonInput")
    if JR.truth (<- JR.call (<- JR.getField this "currentlyPressedTouchButtonSingleton") "contains_1" #[l_touchButtonInput]) then
        JR.setField this "lastPressedTouchButtonInput" (<- JR.getField (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "NONE")
        let _ := (<- JR.call this "processRelease_2" #[l_touchButtonInput, l_deviceId])
        return (JV.bool true)
    else
        let mut l_list : JV := (<- JR.call (<- JR.callStatic "TouchButtonFactory" "getInstance_0" #[]) "getList_0" #[])
        let mut l_rectangle : JV := JV.null
        let mut l_point : JV := JV.null
        let mut l_touchButton : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call l_list "size_0" #[]) (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
                l_touchButton := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                l_rectangle := (<- JR.call l_touchButton "getRectangle_0" #[])
                l_point := (<- JR.call l_rectangle "getPoint_0" #[])
                if JR.truth (<- JR.call (<- JR.getField this "rectangleCollisionUtil") "isInside_6" #[(<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[]), (<- JR.call l_rectangle "getMaxX_0" #[]), (<- JR.call l_rectangle "getMaxY_0" #[]), l_x, l_y]) then
                    l_touchButtonInput := (<- JR.call l_touchButton "getTouchButtonInput_0" #[])
                    let _ := (<- JR.call this "processRelease_2" #[l_touchButtonInput, l_deviceId])
                    return (JV.bool true)
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        pure ()
    return (JV.bool false)


def m_pressTouchButtonInput_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_list : JV := (<- JR.call (<- JR.callStatic "TouchButtonFactory" "getInstance_0" #[]) "getList_0" #[])
    let mut l_rectangle : JV := JV.null
    let mut l_point : JV := JV.null
    let mut l_touchButton : JV := JV.null
    let mut l_touchButtonInput : JV := JV.null
    let mut l_gameKeyEvent : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call l_list "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_touchButton := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            l_rectangle := (<- JR.call l_touchButton "getRectangle_0" #[])
            l_point := (<- JR.call l_rectangle "getPoint_0" #[])
            if JR.truth (<- JR.call (<- JR.getField this "rectangleCollisionUtil") "isInside_6" #[(<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[]), (<- JR.call l_rectangle "getMaxX_0" #[]), (<- JR.call l_rectangle "getMaxY_0" #[]), l_x, l_y]) then
                l_touchButtonInput := (<- JR.call l_touchButton "getTouchButtonInput_0" #[])
                if JR.truth (JR.not (<- JR.call (<- JR.getField this "currentlyPressedTouchButtonSingleton") "contains_1" #[l_touchButtonInput])) then
                    let _ := (<- JR.call (<- JR.getField this "releaseHelper") "release_2" #[l_touchButtonInput, l_deviceId])
                    JR.setField this "lastPressedTouchButtonInput" l_touchButtonInput
                    let _ := (<- JR.call (<- JR.getField this "currentlyPressedTouchButtonSingleton") "add_1" #[l_touchButtonInput])
                    l_gameKeyEvent := (<- JR.call l_touchButtonInput "getGameKeyEvent_0" #[])
                    let _ := (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
                    let _ := (<- JR.call (<- JR.call (<- JR.getField this "downGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
                    pure ()
                return (JV.bool true)
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    if JR.truth (<- JR.call (<- JR.callStatic "TouchScreenFactory" "getInstance_0" #[]) "isMultiTouch_0" #[]) then
        JR.setField this "releaseHelper" (<- JR.new "MultitouchReleaseHelper" #[this])
        pure ()
    else
        JR.setField this "releaseHelper" (<- JR.new "ReleaseHelper" #[this])
        pure ()
    pure this

initialize JR.registerClass {
    name := "TouchButtonRecognizer",
    javaName := "org.allbinary.input.motion.button.TouchButtonRecognizer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("rectangleCollisionUtil", JV.null), ("upGameKeyEventHandler", JV.null), ("downGameKeyEventHandler", JV.null), ("lastPressedTouchButtonInput", JV.null), ("currentlyPressedTouchButtonSingleton", JV.null), ("releaseHelper", JV.null)],
    statics := #[],
    methods := #[
        ("processRelease_2", #["TouchButtonInput", "int"], false, m_processRelease_2), 
        ("releaseTouchButtonInput_3", #["int", "int", "int"], false, m_releaseTouchButtonInput_3), 
        ("pressTouchButtonInput_3", #["int", "int", "int"], false, m_pressTouchButtonInput_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonRecognizer


