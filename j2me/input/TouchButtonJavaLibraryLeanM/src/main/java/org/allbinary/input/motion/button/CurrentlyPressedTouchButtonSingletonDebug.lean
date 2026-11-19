-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CurrentlyPressedTouchButtonSingletonDebug

def jfields (this : JV) : JM JV := do
    JR.setField this "string" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "listString" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "appendText" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "PRESSED_AND_FIRED" (JV.str "pressed & fired")
    JR.setField this "PRESSED_AND_NOT_FIRED" (JV.str "pressed in button but not fired")
    JR.setField this "ASSOCIATED_RELEASED_AND_FIRED" (JV.str "assoc. rel & fired")
    JR.setField this "RELEASED_AND_FIRED" (JV.str "rel & fired 1")
    JR.setField this "RELEASED_AND_FIRED_2" (JV.str "rel & fired 2")
    JR.setField this "RELEASED_AND_NOT_FIRED" (JV.str "rel & not fired")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CurrentlyPressedTouchButtonSingletonDebug" "instanceC" (<- JR.new "CurrentlyPressedTouchButtonSingletonDebug" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CurrentlyPressedTouchButtonSingletonDebug" "instanceC")


def m_appendTouchButtonInput_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_append : JV := (JR.arg jargs 0)
    let mut l_touchButtonInput : JV := (JR.arg jargs 1)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_touchButtonInput "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_append])
    JR.setField this "appendText" (<- JR.call l_stringBuffer "toString_0" #[])
    JR.setField this "string" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "listString")]) "append_1" #[(<- JR.getField this "appendText")]) "toString_0" #[])
    pure JV.null


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_append : JV := (JR.arg jargs 0)
    JR.setField this "appendText" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "appendText")]) "append_1" #[l_append]) "toString_0" #[])
    JR.setField this "string" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "listString")]) "append_1" #[(<- JR.getField this "appendText")]) "toString_0" #[])
    pure JV.null


def m_clearLog_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "appendText" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.callStatic "GPoint" "toStringStatic_3" #[l_x, l_y, (JV.int 0)])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")]) "toString_0" #[])
    JR.setField this "string" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "listString")]) "append_1" #[(<- JR.getField this "appendText")]) "toString_0" #[])
    pure JV.null


def m_releaseAndNotFired_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "append_1" #[(<- JR.getField this "RELEASED_AND_NOT_FIRED")])
    pure JV.null


def m_releaseAndFired_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "appendTouchButtonInput_2" #[(<- JR.getField this "RELEASED_AND_FIRED"), l_touchButtonInput])
    pure JV.null


def m_releaseAndFired2_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "appendTouchButtonInput_2" #[(<- JR.getField this "RELEASED_AND_FIRED_2"), l_touchButtonInput])
    pure JV.null


def m_releaseAndFiredAssociated_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "appendTouchButtonInput_2" #[(<- JR.getField this "ASSOCIATED_RELEASED_AND_FIRED"), l_touchButtonInput])
    pure JV.null


def m_pressedAndFired_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "appendTouchButtonInput_2" #[(<- JR.getField this "PRESSED_AND_FIRED"), l_touchButtonInput])
    pure JV.null


def m_pressedAndNotFired_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "appendTouchButtonInput_2" #[(<- JR.getField this "PRESSED_AND_NOT_FIRED"), l_touchButtonInput])
    pure JV.null


def m_removeAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_touchButtonInput : JV := (<- JR.callSuper "CurrentlyPressedTouchButtonSingleton" this "removeAt_1" #[l_index])
    JR.setField this "listString" (<- JR.call (<- JR.getInherited this "CurrentlyPressedTouchButtonSingletonDebug" "list") "toString_0" #[])
    JR.setField this "string" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "listString")]) "append_1" #[(<- JR.getField this "appendText")]) "toString_0" #[])
    return l_touchButtonInput


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_isRemoved : JV := (<- JR.callSuper "CurrentlyPressedTouchButtonSingleton" this "remove_1" #[l_touchButtonInput])
    JR.setField this "listString" (<- JR.call (<- JR.getInherited this "CurrentlyPressedTouchButtonSingletonDebug" "list") "toString_0" #[])
    JR.setField this "string" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "listString")]) "append_1" #[(<- JR.getField this "appendText")]) "toString_0" #[])
    return l_isRemoved


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "CurrentlyPressedTouchButtonSingleton" this "add_1" #[l_touchButtonInput])
    JR.setField this "listString" (<- JR.call (<- JR.getInherited this "CurrentlyPressedTouchButtonSingletonDebug" "list") "toString_0" #[])
    JR.setField this "string" (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "listString")]) "append_1" #[(<- JR.getField this "appendText")]) "toString_0" #[])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "string")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CurrentlyPressedTouchButtonSingleton" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CurrentlyPressedTouchButtonSingletonDebug",
    javaName := "org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug",
    super := "CurrentlyPressedTouchButtonSingleton",
    interfaces := #[],
    isInterface := false,
    fields := #[("string", JV.null), ("listString", JV.null), ("appendText", JV.null), ("PRESSED_AND_FIRED", JV.null), ("PRESSED_AND_NOT_FIRED", JV.null), ("ASSOCIATED_RELEASED_AND_FIRED", JV.null), ("RELEASED_AND_FIRED", JV.null), ("RELEASED_AND_FIRED_2", JV.null), ("RELEASED_AND_NOT_FIRED", JV.null)],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("appendTouchButtonInput_2", #["String", "TouchButtonInput"], false, m_appendTouchButtonInput_2), 
        ("append_1", #["String"], false, m_append_1), 
        ("clearLog_2", #["int", "int"], false, m_clearLog_2), 
        ("releaseAndNotFired_0", #[], false, m_releaseAndNotFired_0), 
        ("releaseAndFired_1", #["TouchButtonInput"], false, m_releaseAndFired_1), 
        ("releaseAndFired2_1", #["TouchButtonInput"], false, m_releaseAndFired2_1), 
        ("releaseAndFiredAssociated_1", #["TouchButtonInput"], false, m_releaseAndFiredAssociated_1), 
        ("pressedAndFired_1", #["TouchButtonInput"], false, m_pressedAndFired_1), 
        ("pressedAndNotFired_1", #["TouchButtonInput"], false, m_pressedAndNotFired_1), 
        ("removeAt_1", #["int"], false, m_removeAt_1), 
        ("remove_1", #["TouchButtonInput"], false, m_remove_1), 
        ("add_1", #["TouchButtonInput"], false, m_add_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CurrentlyPressedTouchButtonSingletonDebug


