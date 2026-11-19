-- Generated Code Do Not Modify
-- package org.allbinary.game.input.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_UpGameKeyEventHandler

def jfields (this : JV) : JM JV := do
    JR.setField this "playerInputIdFactory" (<- JR.callStatic "LocalPlayerInputIdFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "UpGameKeyEventHandler" "instance" (<- JR.new "UpGameKeyEventHandler" #[])
    JR.setStatic "UpGameKeyEventHandler" "instanceArray" (<- JR.arrayOf "L" #[(<- JR.new "UpGameKeyEventHandlerBase" #[]), (<- JR.new "UpGameKeyEventHandlerBase" #[]), (<- JR.new "UpGameKeyEventHandlerBase" #[]), (<- JR.new "UpGameKeyEventHandlerBase" #[]), (<- JR.new "UpGameKeyEventHandlerBase" #[]), (<- JR.new "UpGameKeyEventHandlerBase" #[])])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "UpGameKeyEventHandler" "instance")


def m_getInstanceForDevice_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_playerInputId : JV := (JR.asI (<- JR.call (<- JR.getField this "playerInputIdFactory") "getPlayerForDevice_1" #[l_deviceId]))
    return (<- JR.aget (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray") l_playerInputId)


def m_getInstanceForPlayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray") l_playerInputId)


def m_removeAllListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "UpGameKeyEventHandlerBase" this "removeAllListeners_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray") l_index) "removeAllListeners_0" #[])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_removeListenerSingleThreaded_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "UpGameKeyEventHandlerBase" this "removeListenerSingleThreaded_1" #[l_eventListenerInterface])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray") l_index) "removeListenerSingleThreaded_1" #[l_eventListenerInterface])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_removeListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventListenerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "UpGameKeyEventHandlerBase" this "removeListener_1" #[l_eventListenerInterface])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getStatic "UpGameKeyEventHandler" "instanceArray") l_index) "removeListener_1" #[l_eventListenerInterface])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "UpGameKeyEventHandlerBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "UpGameKeyEventHandler",
    javaName := "org.allbinary.game.input.event.UpGameKeyEventHandler",
    super := "UpGameKeyEventHandlerBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("playerInputIdFactory", JV.null)],
    statics := #[("instance", JV.null), ("instanceArray", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceForDevice_1", #["int"], false, m_getInstanceForDevice_1), 
        ("getInstanceForPlayer_1", #["int"], false, m_getInstanceForPlayer_1), 
        ("removeAllListeners_0", #[], false, m_removeAllListeners_0), 
        ("removeListenerSingleThreaded_1", #["EventListenerInterface"], false, m_removeListenerSingleThreaded_1), 
        ("removeListener_1", #["EventListenerInterface"], false, m_removeListener_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_UpGameKeyEventHandler


