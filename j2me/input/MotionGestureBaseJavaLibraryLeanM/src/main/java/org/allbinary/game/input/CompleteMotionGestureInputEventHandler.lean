-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompleteMotionGestureInputEventHandler

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CompleteMotionGestureInputEventHandler" "SINGLETON" (<- JR.new "CompleteMotionGestureInputEventHandler" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CompleteMotionGestureInputEventHandler" "SINGLETON")


def m_addListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_completeMotionGestureInputEventListener : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "list") "contains_1" #[l_completeMotionGestureInputEventListener])) then
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_completeMotionGestureInputEventListener])
        pure ()
    pure JV.null


def m_removeAllListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    let _ := (<- JR.callSuper "BasicEventHandler" this "removeAllListeners_0" #[])
    pure JV.null


def m_removeListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "remove_1" #[l_eventListenerInterface])
    let _ := (<- JR.callSuper "BasicEventHandler" this "removeListener_1" #[l_eventListenerInterface])
    pure JV.null


def m_fireEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            try
                let mut l_completeMotionGestureInputEventListener : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
                let _ := (<- JR.call l_completeMotionGestureInputEventListener "onCompleteMotionGestureInputEvent_1" #[l_eventObject])
                pure ()
            catch jex0 =>
                if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
                    let mut l_e : JV := jex0
                    let _ := (<- JR.call (<- JR.getInherited this "CompleteMotionGestureInputEventHandler" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "CompleteMotionGestureInputEventHandler" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "FIRE_EVENT"), l_e])
                    pure ()
                else
                    throw jex0
            pure ()
        pure ()
    let _ := (<- JR.callSuper "BasicEventHandler" this "fireEvent_1" #[l_eventObject])
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := (JR.arg jargs 1)
    let mut l_completeMotionGestureInputEventListenerInterface : JV := l_eventListenerInterface
    let _ := (<- JR.call l_completeMotionGestureInputEventListenerInterface "onCompleteMotionGestureInputEvent_1" #[l_eventObject])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicEventHandler" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CompleteMotionGestureInputEventHandler",
    javaName := "org.allbinary.game.input.CompleteMotionGestureInputEventHandler",
    super := "BasicEventHandler",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("addListener_1", #["CompleteMotionGestureInputEventListener"], false, m_addListener_1), 
        ("removeAllListeners_0", #[], false, m_removeAllListeners_0), 
        ("removeListener_1", #["EventListenerInterface"], false, m_removeListener_1), 
        ("fireEvent_1", #["AllBinaryEventObject"], false, m_fireEvent_1), 
        ("process_2", #["AllBinaryEventObject", "EventListenerInterface"], false, m_process_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompleteMotionGestureInputEventHandler


