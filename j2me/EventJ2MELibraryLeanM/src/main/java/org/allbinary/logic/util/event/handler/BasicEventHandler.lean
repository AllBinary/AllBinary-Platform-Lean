-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.event.handler
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicEventHandler

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "eventStrings" (<- JR.callStatic "EventStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_removeAllListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "eventListenerInterfaceList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null


def m_addListeners_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vector : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call l_vector "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_eventListenerInterface := (<- JR.call l_vector "get_1" #[l_index])
            let _ := (<- JR.call this "addListenerInterface_1" #[l_eventListenerInterface])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_removeListeners_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vector : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call l_vector "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_eventListenerInterface := (<- JR.call l_vector "get_1" #[l_index])
            let _ := (<- JR.call this "removeListener_1" #[l_eventListenerInterface])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_addListenerSingleThreaded_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "contains_1" #[l_eventListenerInterface])) then
        let _ := (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "add_1" #[l_eventListenerInterface])
        pure ()
    pure JV.null


def m_addListenerInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "contains_1" #[l_eventListenerInterface])) then
        let _ := (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "add_1" #[l_eventListenerInterface])
        pure ()
    pure JV.null


def m_removeListenerSingleThreaded_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "remove_1" #[l_eventListenerInterface])
    pure JV.null


def m_removeListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "remove_1" #[l_eventListenerInterface])
    pure JV.null


def m_fireEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := JV.null
    let mut l_index : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.lt l_index (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "size_0" #[]))) then break
        try
            l_eventListenerInterface := (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "get_1" #[l_index])
            let _ := (<- JR.call this "process_2" #[l_eventObject, l_eventListenerInterface])
            pure ()
        catch jex0 =>
            if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
                let mut l_e : JV := jex0
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "eventStrings") "FIRE_EVENT"), l_e])
                pure ()
            else
                throw jex0
        l_index := (JR.inc l_index)
        pure ()
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := (JR.arg jargs 1)
    let _ := (<- JR.call l_eventListenerInterface "onEvent_1" #[l_eventObject])
    pure JV.null


def m_getEventListenerInterfaceListP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "eventListenerInterfaceList")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "eventStrings") "TOTAL_LISTENERS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.getField this "eventListenerInterfaceList") "size_0" #[])])
    let mut l_eventListenerInterface : JV := JV.null
    let mut l_index : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.lt l_index (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "size_0" #[]))) then break
        try
            l_eventListenerInterface := (<- JR.call (<- JR.getField this "eventListenerInterfaceList") "get_1" #[l_index])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "eventStrings") "LISTENER_LABEL")])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_eventListenerInterface "toString_0" #[])])
            pure ()
        catch jex1 =>
            if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
                let mut l_e : JV := jex1
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "TOSTRING"), l_e])
                pure ()
            else
                throw jex1
        l_index := (JR.inc l_index)
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "eventListenerInterfaceList" (<- JR.new "BasicArrayListD" #[])
    pure this

initialize JR.registerClass {
    name := "BasicEventHandler",
    javaName := "org.allbinary.logic.util.event.handler.BasicEventHandler",
    super := "Object",
    interfaces := #["BasicEventHandlerInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("eventStrings", JV.null), ("eventListenerInterfaceList", JV.null)],
    statics := #[],
    methods := #[
        ("removeAllListeners_0", #[], false, m_removeAllListeners_0), 
        ("addListeners_1", #["BasicArrayList"], false, m_addListeners_1), 
        ("removeListeners_1", #["BasicArrayList"], false, m_removeListeners_1), 
        ("addListenerSingleThreaded_1", #["EventListenerInterface"], false, m_addListenerSingleThreaded_1), 
        ("addListenerInterface_1", #["EventListenerInterface"], false, m_addListenerInterface_1), 
        ("removeListenerSingleThreaded_1", #["EventListenerInterface"], false, m_removeListenerSingleThreaded_1), 
        ("removeListener_1", #["EventListenerInterface"], false, m_removeListener_1), 
        ("fireEvent_1", #["AllBinaryEventObject"], false, m_fireEvent_1), 
        ("process_2", #["AllBinaryEventObject", "EventListenerInterface"], false, m_process_2), 
        ("getEventListenerInterfaceListP_0", #[], false, m_getEventListenerInterfaceListP_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicEventHandler


