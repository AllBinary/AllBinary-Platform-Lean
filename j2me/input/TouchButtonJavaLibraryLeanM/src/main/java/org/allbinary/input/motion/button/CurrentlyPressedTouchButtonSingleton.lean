-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CurrentlyPressedTouchButtonSingleton

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CurrentlyPressedTouchButtonSingleton" "instance" (<- JR.new "CurrentlyPressedTouchButtonSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CurrentlyPressedTouchButtonSingleton" "instance")


def m_size_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))


def m_removeAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.call (<- JR.getField this "list") "removeAt_1" #[l_index])


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "list") "remove_1" #[l_touchButtonInput])


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)


def m_contains_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "list") "contains_1" #[l_touchButtonInput])


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_touchButtonInput])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CurrentlyPressedTouchButtonSingleton",
    javaName := "org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("size_0", #[], false, m_size_0), 
        ("removeAt_1", #["int"], false, m_removeAt_1), 
        ("remove_1", #["TouchButtonInput"], false, m_remove_1), 
        ("get_1", #["int"], false, m_get_1), 
        ("contains_1", #["TouchButtonInput"], false, m_contains_1), 
        ("add_1", #["TouchButtonInput"], false, m_add_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CurrentlyPressedTouchButtonSingleton


