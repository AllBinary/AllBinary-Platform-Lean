-- Generated Code Do Not Modify
-- package org.allbinary.input.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VirtualKeyboardEventHandler

def jfields (this : JV) : JM JV := do
    JR.setField this "SHOW_EVENT" (<- JR.new "VirtualKeyboardEvent" #[(<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")])
    JR.setField this "HIDE_EVENT" (<- JR.new "VirtualKeyboardEvent" #[(<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "VirtualKeyboardEventHandler" "gameKeyEventHandler" (<- JR.new "VirtualKeyboardEventHandler" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "VirtualKeyboardEventHandler" "gameKeyEventHandler")


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := (JR.arg jargs 1)
    let mut l_virtualKeyboardEventListenerInterface : JV := l_eventListenerInterface
    let _ := (<- JR.call l_virtualKeyboardEventListenerInterface "onVirtualKeyboardEvent_1" #[l_eventObject])
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.callStatic "Thread" "sleep_1" #[(JV.int 120)])
        let _ := (<- JR.callInherited this "VirtualKeyboardEventHandler" "fireEvent_1" #[(<- JR.getField this "SHOW_EVENT")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "VirtualKeyboardEventHandler" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "VirtualKeyboardEventHandler" "commonStrings") "EXCEPTION"), this, (JV.str "open"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.callStatic "Thread" "sleep_1" #[(JV.int 120)])
        let _ := (<- JR.callInherited this "VirtualKeyboardEventHandler" "fireEvent_1" #[(<- JR.getField this "HIDE_EVENT")])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getInherited this "VirtualKeyboardEventHandler" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "VirtualKeyboardEventHandler" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "VirtualKeyboardEventHandler" "commonStrings") "CLOSE"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicEventHandler" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "VirtualKeyboardEventHandler",
    javaName := "org.allbinary.input.event.VirtualKeyboardEventHandler",
    super := "BasicEventHandler",
    interfaces := #[],
    isInterface := false,
    fields := #[("SHOW_EVENT", JV.null), ("HIDE_EVENT", JV.null)],
    statics := #[("gameKeyEventHandler", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_2", #["AllBinaryEventObject", "EventListenerInterface"], false, m_process_2), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VirtualKeyboardEventHandler


