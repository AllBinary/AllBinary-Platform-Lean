-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicTouchInputFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "SPECIAL_BUTTON_SIX" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 30)), (JV.str "Button 6")])
    JR.setField this "SPECIAL_BUTTON_FIVE" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 31)), (JV.str "Button 5")])
    JR.setField this "SPECIAL_BUTTON_FOUR" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 32)), (JV.str "Button 4")])
    JR.setField this "SPECIAL_BUTTON_THREE" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 33)), (JV.str "Button 3")])
    JR.setField this "SPECIAL_BUTTON_TWO" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 34)), (JV.str "Button 2")])
    JR.setField this "SPECIAL_BUTTON_ONE" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 35)), (JV.str "Button 1")])
    JR.setField this "UP" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 36)), (JV.str "Up Button")])
    JR.setField this "LEFT" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 37)), (JV.str "Left Button")])
    JR.setField this "RIGHT" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 38)), (JV.str "Right Button")])
    JR.setField this "DOWN" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 39)), (JV.str "Down Button")])
    JR.setField this "NONE" (<- JR.new "TouchButtonInput" #[(<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 40)), (JV.str "No Button")])
    JR.setField this "initialized" (JV.bool false)
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicTouchInputFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "BasicTouchInputFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "BasicTouchInputFactory" "instance" (<- JR.new "BasicTouchInputFactory" #[])
        pure ()
    return (<- JR.getStatic "BasicTouchInputFactory" "instance")


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.getField this "initialized")) then
        JR.setField this "initialized" (JV.bool true)
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "UP")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "LEFT")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "RIGHT")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "DOWN")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "SPECIAL_BUTTON_TWO")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "SPECIAL_BUTTON_FOUR")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "SPECIAL_BUTTON_THREE")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "SPECIAL_BUTTON_ONE")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "SPECIAL_BUTTON_FIVE")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "SPECIAL_BUTTON_SIX")])
        let _ := (<- JR.call this "updateAllList_2" #[(<- JR.getField this "list"), l_inputToGameKeyMapping])
        pure ()
    pure JV.null


def m_updateAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "updateAllList_2" #[(<- JR.call this "getList_0" #[]), l_inputToGameKeyMapping])
    pure JV.null


def m_updateAllList_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START")]) "appendint_1" #[(<- JR.call l_list "size_0" #[])]) "toString_0" #[]), this, (JV.str "updateAll")])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call l_list "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_touchButtonInput : JV := (<- JR.call l_list "get_1" #[l_index])
            let _ := (<- JR.call l_touchButtonInput "update_1" #[l_inputToGameKeyMapping])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicTouchInputFactory",
    javaName := "org.allbinary.input.motion.button.BasicTouchInputFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("SPECIAL_BUTTON_SIX", JV.null), ("SPECIAL_BUTTON_FIVE", JV.null), ("SPECIAL_BUTTON_FOUR", JV.null), ("SPECIAL_BUTTON_THREE", JV.null), ("SPECIAL_BUTTON_TWO", JV.null), ("SPECIAL_BUTTON_ONE", JV.null), ("UP", JV.null), ("LEFT", JV.null), ("RIGHT", JV.null), ("DOWN", JV.null), ("NONE", JV.null), ("initialized", (JV.bool false)), ("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_1", #["InputToGameKeyMapping"], false, m_init_1), 
        ("updateAll_1", #["InputToGameKeyMapping"], false, m_updateAll_1), 
        ("updateAllList_2", #["BasicArrayList", "InputToGameKeyMapping"], false, m_updateAllList_2), 
        ("getList_0", #[], false, m_getList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicTouchInputFactory


