-- Generated Code Do Not Modify
-- package org.allbinary.game.input.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_UpKeyEventHandlerBase

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_addListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerGameInput : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "list") "contains_1" #[l_playerGameInput])) then
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_playerGameInput])
        pure ()
    pure JV.null


def m_removeAllListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    let _ := (<- JR.callSuper "BasicEventHandler" this "removeAllListeners_0" #[])
    pure JV.null


def m_removeListenerSingleThreaded_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "remove_1" #[l_eventListenerInterface])
    let _ := (<- JR.callSuper "BasicEventHandler" this "removeListenerSingleThreaded_1" #[l_eventListenerInterface])
    pure JV.null


def m_removeListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "remove_1" #[l_eventListenerInterface])
    let _ := (<- JR.callSuper "BasicEventHandler" this "removeListener_1" #[l_eventListenerInterface])
    pure JV.null


def m_fireEventForInteger_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            try
                let mut l_playerGameInput : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
                let _ := (<- JR.call l_playerGameInput "onUpKeyEvent_1" #[l_eventObject])
                pure ()
            catch jex0 =>
                if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
                    let mut l_e : JV := jex0
                    let _ := (<- JR.call (<- JR.getInherited this "UpKeyEventHandlerBase" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "UpKeyEventHandlerBase" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "FIRE_EVENT"), l_e])
                    pure ()
                else
                    throw jex0
            pure ()
        pure ()
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_eventListenerInterface : JV := JV.null
    repeat
        if !(JR.truth (<- JR.lt l_index (<- JR.call (<- JR.getInherited this "UpKeyEventHandlerBase" "eventListenerInterfaceList") "size_0" #[]))) then break
        try
            l_eventListenerInterface := (<- JR.call (<- JR.getInherited this "UpKeyEventHandlerBase" "eventListenerInterfaceList") "get_1" #[l_index])
            let _ := (<- JR.call this "processForInteger_2" #[l_eventObject, l_eventListenerInterface])
            pure ()
        catch jex1 =>
            if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
                let mut l_e : JV := jex1
                let _ := (<- JR.call (<- JR.getInherited this "UpKeyEventHandlerBase" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "UpKeyEventHandlerBase" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "FIRE_EVENT"), l_e])
                pure ()
            else
                throw jex1
        l_index := (JR.inc l_index)
        pure ()
    pure JV.null


def m_processForInteger_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let mut l_eventListenerInterface : JV := (JR.arg jargs 1)
    let mut l_upKeyEventListenerInterface : JV := l_eventListenerInterface
    let _ := (<- JR.call l_upKeyEventListenerInterface "onUpKeyEvent_1" #[l_eventObject])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callSuper "BasicEventHandler" this "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "UpKeyEventHandlerBase" "TOTAL_LISTENERS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.getField this "list") "size_0" #[])])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.call (<- JR.getField this "list") "size_0" #[]))) then break
            try
                let mut l_eventListenerInterface : JV := (<- JR.call (<- JR.getField this "list") "get_1" #[l_index])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "UpKeyEventHandlerBase" "LISTENER_LABEL")])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_eventListenerInterface "toString_0" #[])])
                pure ()
            catch jex2 =>
                if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
                    let mut l_e : JV := jex2
                    let _ := (<- JR.call (<- JR.getInherited this "UpKeyEventHandlerBase" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "UpKeyEventHandlerBase" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "UpKeyEventHandlerBase" "commonStrings") "TOSTRING"), l_e])
                    pure ()
                else
                    throw jex2
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicEventHandler" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "UpKeyEventHandlerBase",
    javaName := "org.allbinary.game.input.event.UpKeyEventHandlerBase",
    super := "BasicEventHandler",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("TOTAL_LISTENERS", (JV.str " Total PlayerGameInput Listeners: ")), ("LISTENER_LABEL", (JV.str " PlayerGameInput Listener: "))],
    methods := #[
        ("addListener_1", #["PlayerGameInput"], false, m_addListener_1), 
        ("removeAllListeners_0", #[], false, m_removeAllListeners_0), 
        ("removeListenerSingleThreaded_1", #["EventListenerInterface"], false, m_removeListenerSingleThreaded_1), 
        ("removeListener_1", #["EventListenerInterface"], false, m_removeListener_1), 
        ("fireEventForInteger_1", #["Integer"], false, m_fireEventForInteger_1), 
        ("processForInteger_2", #["Integer", "EventListenerInterface"], false, m_processForInteger_2), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_UpKeyEventHandlerBase


