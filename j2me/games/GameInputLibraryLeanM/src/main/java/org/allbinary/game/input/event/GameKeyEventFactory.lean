-- Generated Code Do Not Modify
-- package org.allbinary.game.input.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyEventFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "TOUCH_BUTTON_SOURCE_ID" (JR.asI (JV.int 2))
    JR.setField this "MOTION_GESTURE_SOURCE_ID" (JR.asI (JV.int 3))
    JR.setField this "MAX_SOURCES" (JR.asI (JV.int 4))
    JR.setField this "ARRAY" (<- JR.newArray "L" 2 #[(<- JR.getField this "MAX_SOURCES"), (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKeyEventFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GameKeyEventFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GameKeyEventFactory" "instance" (<- JR.new "GameKeyEventFactory" #[])
        pure ()
    return (<- JR.getStatic "GameKeyEventFactory" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_nullUtil : JV := (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX"))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.getField this "MAX_SOURCES"))
        repeat
            let jtemp6 : JV := (JR.dec l_index)
            l_index := jtemp6
            
            if !(JR.truth (<- JR.ge jtemp6 (JV.int 0))) then break
            if true then
                let mut l_index2 : JV := (JR.asI l_size)
                repeat
                    let jtemp5 : JV := (JR.dec l_index2)
                    l_index2 := jtemp5
                    
                    if !(JR.truth (<- JR.ge jtemp5 (JV.int 0))) then break
                    JR.aset (<- JR.aget (<- JR.getField this "ARRAY") l_index) l_index2 (<- JR.callStatic "GameKeyEvent" "createEvent_3" #[(<- JR.getField l_nullUtil "NULL_OBJECT"), l_index, l_index2])
                    pure ()
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_getInstanceForKey_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_key : JV := (JR.asI (JR.arg jargs 1))
    let mut l_gameKeyEvent : JV := (<- JR.aget (<- JR.aget (<- JR.getField this "ARRAY") (<- JR.call l_anyType "getSourceId_0" #[])) l_key)
    return l_gameKeyEvent


def m_getInstanceForInput_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_input : JV := (JR.arg jargs 1)
    let mut l_gameKeyEvent : JV := (<- JR.aget (<- JR.aget (<- JR.getField this "ARRAY") (<- JR.call l_anyType "getSourceId_0" #[])) (<- JR.call l_input "getId_0" #[]))
    return l_gameKeyEvent


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameKeyEventFactory",
    javaName := "org.allbinary.game.input.event.GameKeyEventFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("TOUCH_BUTTON_SOURCE_ID", (JV.int 0)), ("MOTION_GESTURE_SOURCE_ID", (JV.int 0)), ("MAX_SOURCES", (JV.int 0)), ("ARRAY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("getInstanceForKey_2", #["GameKeyEventSourceInterface", "int"], false, m_getInstanceForKey_2), 
        ("getInstanceForInput_2", #["GameKeyEventSourceInterface", "Input"], false, m_getInstanceForInput_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyEventFactory


